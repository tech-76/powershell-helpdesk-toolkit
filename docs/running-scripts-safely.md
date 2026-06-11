# Running Scripts Safely

## Purpose

PowerShell scripts can be useful, but they should be reviewed before running. This document explains safe practices for running scripts in a help desk or lab environment.

## Safety Checklist

Before running any script:

- Read the script first.
- Confirm what the script changes.
- Avoid running unknown scripts from the internet.
- Test scripts in a lab environment first.
- Do not run scripts with administrator rights unless required.
- Never store passwords inside scripts.
- Do not run scripts on business systems without approval.
- Keep notes on what the script was used for.

## Read-Only vs Change Commands

Read-only commands display information and usually do not change the system.

Examples:

```powershell
Get-Service
Get-Process
Get-ComputerInfo
Test-Connection
Get-HotFix
```

Change commands modify something on the system.

Examples:

```powershell
Restart-Service
Stop-Service
Set-ExecutionPolicy
Remove-Item
New-LocalUser
```

## Execution Policy Note

PowerShell execution policy controls script-running behavior. In many environments, scripts may be blocked by default. Follow company policy before changing execution settings.

## Running a Script

From the folder where the script is located:

```powershell
.\get-system-info.ps1
```

If the script is blocked, do not bypass security controls on a work computer unless approved.

## Administrator Permissions

Some scripts require administrator permissions, especially scripts that restart services or modify system settings.

## Documentation Tip

When using a script for troubleshooting, document:

- Script name
- Date and time used
- Device name
- Issue being investigated
- Output summary
- Resolution or next step
