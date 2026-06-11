# Common Help Desk PowerShell Commands

## System Information

```powershell
Get-ComputerInfo
Get-CimInstance Win32_ComputerSystem
Get-CimInstance Win32_OperatingSystem
```

Use these commands to collect information about the computer, operating system, manufacturer, model, and uptime.

## Disk Space

```powershell
Get-PSDrive
Get-CimInstance Win32_LogicalDisk
```

Use these commands when troubleshooting low storage, slow performance, or failed updates.

## Network Troubleshooting

```powershell
Test-Connection google.com
Get-NetIPConfiguration
Resolve-DnsName microsoft.com
```

Use these commands to test connectivity, IP configuration, and DNS resolution.

## Services

```powershell
Get-Service
Get-Service Spooler
Restart-Service Spooler
```

Use these commands to check or restart services such as the Print Spooler.

## Processes

```powershell
Get-Process
Get-Process | Sort-Object CPU -Descending
```

Use these commands to review running applications and processes.

## Updates

```powershell
Get-HotFix
Get-Service wuauserv
```

Use these commands to check installed updates and Windows Update service status.

## Output to a File

```powershell
Get-ComputerInfo | Out-File system-info.txt
```

This is useful when collecting troubleshooting notes for a ticket.

## Filtering Results

```powershell
Get-Service | Where-Object { $_.Status -eq "Running" }
```

Filtering helps find only the information needed.

## Sorting Results

```powershell
Get-Process | Sort-Object CPU -Descending
```

Sorting helps identify high-usage processes.
