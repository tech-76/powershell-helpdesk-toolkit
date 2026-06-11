<#
.SYNOPSIS
Collects basic system information for help desk troubleshooting.

.DESCRIPTION
This script displays computer name, username, operating system, BIOS, processor,
memory, and uptime information.

.NOTES
Use for learning, lab practice, and basic support documentation.
#>

Write-Host "=== Basic System Information ===" -ForegroundColor Cyan

try {
    $computerSystem = Get-CimInstance -ClassName Win32_ComputerSystem
    $operatingSystem = Get-CimInstance -ClassName Win32_OperatingSystem
    $bios = Get-CimInstance -ClassName Win32_BIOS
    $processor = Get-CimInstance -ClassName Win32_Processor

    $uptime = (Get-Date) - $operatingSystem.LastBootUpTime
    $totalMemoryGB = [math]::Round($computerSystem.TotalPhysicalMemory / 1GB, 2)

    Write-Host "Computer Name: $env:COMPUTERNAME"
    Write-Host "Current User: $env:USERNAME"
    Write-Host "Domain/Workgroup: $($computerSystem.Domain)"
    Write-Host "Manufacturer: $($computerSystem.Manufacturer)"
    Write-Host "Model: $($computerSystem.Model)"
    Write-Host "Operating System: $($operatingSystem.Caption)"
    Write-Host "OS Version: $($operatingSystem.Version)"
    Write-Host "BIOS Version: $($bios.SMBIOSBIOSVersion)"
    Write-Host "Processor: $($processor.Name)"
    Write-Host "Installed Memory: $totalMemoryGB GB"
    Write-Host "Last Boot Time: $($operatingSystem.LastBootUpTime)"
    Write-Host "Uptime: $($uptime.Days) days, $($uptime.Hours) hours, $($uptime.Minutes) minutes"
}
catch {
    Write-Host "Failed to collect system information." -ForegroundColor Red
    Write-Host $_.Exception.Message
}
