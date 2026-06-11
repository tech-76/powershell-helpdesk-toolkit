<#
.SYNOPSIS
Checks disk space on local drives.

.DESCRIPTION
This script lists local fixed drives, total size, free space, and percentage free.
Useful for troubleshooting slow computers, update failures, and storage warnings.
#>

Write-Host "=== Disk Space Check ===" -ForegroundColor Cyan

try {
    $drives = Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3"

    foreach ($drive in $drives) {
        $sizeGB = [math]::Round($drive.Size / 1GB, 2)
        $freeGB = [math]::Round($drive.FreeSpace / 1GB, 2)
        $percentFree = [math]::Round(($drive.FreeSpace / $drive.Size) * 100, 2)

        Write-Host ""
        Write-Host "Drive: $($drive.DeviceID)"
        Write-Host "Total Size: $sizeGB GB"
        Write-Host "Free Space: $freeGB GB"
        Write-Host "Free Percentage: $percentFree%"

        if ($percentFree -lt 10) {
            Write-Host "Status: Critical - Low disk space" -ForegroundColor Red
        }
        elseif ($percentFree -lt 20) {
            Write-Host "Status: Warning - Disk space should be reviewed" -ForegroundColor Yellow
        }
        else {
            Write-Host "Status: OK" -ForegroundColor Green
        }
    }
}
catch {
    Write-Host "Failed to check disk space." -ForegroundColor Red
    Write-Host $_.Exception.Message
}
