<#
.SYNOPSIS
Checks Windows Update service status and recent installed updates.

.DESCRIPTION
This script checks the Windows Update service and lists recent hotfixes.
It does not install updates.
#>

Write-Host "=== Windows Update Basic Check ===" -ForegroundColor Cyan

try {
    Write-Host ""
    Write-Host "Windows Update Service Status:" -ForegroundColor Yellow
    Get-Service -Name wuauserv | Format-Table Status, Name, DisplayName -AutoSize

    Write-Host ""
    Write-Host "Recent Installed Hotfixes:" -ForegroundColor Yellow
    Get-HotFix |
        Sort-Object InstalledOn -Descending |
        Select-Object -First 10 HotFixID, Description, InstalledOn |
        Format-Table -AutoSize

    Write-Host ""
    Write-Host "Note: This script checks update-related information only. It does not install updates."
}
catch {
    Write-Host "Failed to check Windows Update information." -ForegroundColor Red
    Write-Host $_.Exception.Message
}
