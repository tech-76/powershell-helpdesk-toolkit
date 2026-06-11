<#
.SYNOPSIS
Lists running Windows services.

.DESCRIPTION
This script displays running services sorted by display name.
Useful for basic troubleshooting and system review.
#>

Write-Host "=== Running Windows Services ===" -ForegroundColor Cyan

try {
    Get-Service |
        Where-Object { $_.Status -eq "Running" } |
        Sort-Object DisplayName |
        Select-Object Status, Name, DisplayName |
        Format-Table -AutoSize
}
catch {
    Write-Host "Failed to list running services." -ForegroundColor Red
    Write-Host $_.Exception.Message
}
