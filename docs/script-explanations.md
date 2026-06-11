# Script Explanations

## get-system-info.ps1

Collects basic system information including:

- Computer name
- Current user
- Manufacturer and model
- Operating system version
- BIOS version
- Processor
- Installed memory
- Last boot time and uptime

Use this when documenting device information in a support ticket.

## check-disk-space.ps1

Checks all local fixed drives and displays:

- Drive letter
- Total size
- Free space
- Free percentage
- Basic warning status

Use this when troubleshooting slow computers, update failures, or storage alerts.

## check-network-connectivity.ps1

Runs basic network checks:

- Displays IP configuration
- Tests localhost
- Tests default gateway
- Tests public IP connectivity
- Tests DNS resolution

Use this when a user reports no internet, network drops, or website access problems.

## restart-print-spooler.ps1

Restarts the Windows Print Spooler service.

Use this when:

- Print jobs are stuck
- Printer shows offline
- User cannot print
- Print queue will not clear

This script requires administrator permissions.

## list-running-services.ps1

Lists services currently running on the computer.

Use this to confirm whether important services are active.

## check-windows-updates.ps1

Checks:

- Windows Update service status
- Recently installed hotfixes

This script does not install updates.

## collect-basic-troubleshooting-info.ps1

Creates a troubleshooting report with:

- System information
- Disk space
- Network configuration
- Running services sample
- Recent hotfixes

Use this before escalation to provide useful technical details.
