<#
.SYNOPSIS
Collects basic troubleshooting information into a text report.

.DESCRIPTION
This script collects system, disk, network, service, and update information.
Useful for documenting a help desk ticket before escalation.
#>

Write-Host "=== Collecting Basic Troubleshooting Information ===" -ForegroundColor Cyan

try {
    $timestamp = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
    $reportFolder = ".\troubleshooting-reports"
    $reportPath = "$reportFolder\basic-troubleshooting-report-$timestamp.txt"

    if (-not (Test-Path $reportFolder)) {
        New-Item -ItemType Directory -Path $reportFolder | Out-Null
    }

    "=== Basic Troubleshooting Report ===" | Out-File $reportPath
    "Generated: $(Get-Date)" | Out-File $reportPath -Append
    "Computer: $env:COMPUTERNAME" | Out-File $reportPath -Append
    "User: $env:USERNAME" | Out-File $reportPath -Append

    "`n=== System Information ===" | Out-File $reportPath -Append
    Get-CimInstance Win32_ComputerSystem |
        Select-Object Manufacturer, Model, TotalPhysicalMemory, Domain |
        Format-List |
        Out-File $reportPath -Append

    Get-CimInstance Win32_OperatingSystem |
        Select-Object Caption, Version, LastBootUpTime |
        Format-List |
        Out-File $reportPath -Append

    "`n=== Disk Space ===" | Out-File $reportPath -Append
    Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3" |
        Select-Object DeviceID,
            @{Name="SizeGB";Expression={[math]::Round($_.Size / 1GB, 2)}},
            @{Name="FreeGB";Expression={[math]::Round($_.FreeSpace / 1GB, 2)}} |
        Format-Table -AutoSize |
        Out-File $reportPath -Append

    "`n=== Network Configuration ===" | Out-File $reportPath -Append
    Get-NetIPConfiguration | Format-List | Out-File $reportPath -Append

    "`n=== Running Services Sample ===" | Out-File $reportPath -Append
    Get-Service |
        Where-Object { $_.Status -eq "Running" } |
        Select-Object -First 25 Status, Name, DisplayName |
        Format-Table -AutoSize |
        Out-File $reportPath -Append

    "`n=== Recent Hotfixes ===" | Out-File $reportPath -Append
    Get-HotFix |
        Sort-Object InstalledOn -Descending |
        Select-Object -First 10 HotFixID, Description, InstalledOn |
        Format-Table -AutoSize |
        Out-File $reportPath -Append

    Write-Host "Troubleshooting report created:" -ForegroundColor Green
    Write-Host $reportPath
}
catch {
    Write-Host "Failed to create troubleshooting report." -ForegroundColor Red
    Write-Host $_.Exception.Message
}
