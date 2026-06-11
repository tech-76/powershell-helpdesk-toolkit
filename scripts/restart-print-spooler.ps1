<#
.SYNOPSIS
Restarts the Windows Print Spooler service.

.DESCRIPTION
This script is used for basic printer troubleshooting when print jobs are stuck
or printers appear offline because of a spooler issue.

.NOTES
Requires administrator permissions.
#>

Write-Host "=== Print Spooler Restart ===" -ForegroundColor Cyan

$currentUser = [Security.Principal.WindowsIdentity]::GetCurrent()
$principal = New-Object Security.Principal.WindowsPrincipal($currentUser)
$isAdmin = $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if (-not $isAdmin) {
    Write-Host "This script should be run as Administrator." -ForegroundColor Red
    exit
}

try {
    Write-Host "Checking Print Spooler service..."
    Get-Service -Name Spooler

    Write-Host "Restarting Print Spooler..."
    Restart-Service -Name Spooler -Force -ErrorAction Stop

    Write-Host "Print Spooler restarted successfully." -ForegroundColor Green
    Get-Service -Name Spooler
}
catch {
    Write-Host "Failed to restart Print Spooler." -ForegroundColor Red
    Write-Host $_.Exception.Message
}
