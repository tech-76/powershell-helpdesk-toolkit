<#
.SYNOPSIS
Runs basic network connectivity checks.

.DESCRIPTION
This script checks local IP configuration, default gateway connectivity,
public IP connectivity, and DNS resolution.
#>

Write-Host "=== Network Connectivity Check ===" -ForegroundColor Cyan

try {
    Write-Host ""
    Write-Host "IP Configuration:" -ForegroundColor Yellow
    Get-NetIPConfiguration | Select-Object InterfaceAlias, IPv4Address, IPv4DefaultGateway, DNSServer | Format-List

    Write-Host ""
    Write-Host "Testing localhost..."
    Test-Connection -ComputerName 127.0.0.1 -Count 2

    Write-Host ""
    Write-Host "Testing default gateway..."
    $gateway = (Get-NetIPConfiguration | Where-Object { $_.IPv4DefaultGateway -ne $null } | Select-Object -First 1).IPv4DefaultGateway.NextHop

    if ($gateway) {
        Test-Connection -ComputerName $gateway -Count 2
    }
    else {
        Write-Host "No default gateway found." -ForegroundColor Yellow
    }

    Write-Host ""
    Write-Host "Testing public IP connectivity..."
    Test-Connection -ComputerName 8.8.8.8 -Count 2

    Write-Host ""
    Write-Host "Testing DNS resolution..."
    Resolve-DnsName microsoft.com -ErrorAction Stop
    Write-Host "DNS resolution successful." -ForegroundColor Green
}
catch {
    Write-Host "Network connectivity check found an issue." -ForegroundColor Red
    Write-Host $_.Exception.Message
}
