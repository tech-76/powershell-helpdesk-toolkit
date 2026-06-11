# PowerShell Basics

## What Is PowerShell?

PowerShell is a command-line shell and scripting language used to automate tasks and manage Windows systems. It is commonly used by Help Desk, Desktop Support, System Administrators, and IT Support teams.

## Why PowerShell Matters for IT Support

PowerShell can help with:

- Collecting system information
- Checking disk space
- Testing network connectivity
- Managing Windows services
- Viewing running processes
- Checking user and computer details
- Creating basic troubleshooting reports
- Automating repeated support tasks

## Basic PowerShell Terms

| Term | Meaning |
|---|---|
| Cmdlet | A PowerShell command, usually written as Verb-Noun |
| Parameter | Extra option added to a command |
| Pipeline | Sends output from one command into another command |
| Object | Structured data returned by PowerShell |
| Script | A saved `.ps1` file containing PowerShell commands |

## Common Cmdlets

| Command | Purpose |
|---|---|
| `Get-ComputerInfo` | Shows computer information |
| `Get-CimInstance` | Gets system information from Windows Management Instrumentation |
| `Get-Service` | Lists Windows services |
| `Get-Process` | Lists running processes |
| `Test-Connection` | Tests network connectivity |
| `Get-NetIPConfiguration` | Shows network configuration |
| `Resolve-DnsName` | Tests DNS resolution |
| `Get-HotFix` | Shows installed updates |
| `Restart-Service` | Restarts a Windows service |

## Example Commands

```powershell
Get-Service
Get-Process
Test-Connection google.com
Get-NetIPConfiguration
Get-HotFix
```

## Best Practice

Before running a command, understand what it does. Start with read-only commands before using commands that change system settings.
