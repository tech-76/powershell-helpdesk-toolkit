# Slow Computer Checklist

## Initial Questions

- [ ] When did the issue start?
- [ ] Is the computer always slow or only with certain apps?
- [ ] Did the user recently install software?
- [ ] Did the issue start after an update?
- [ ] Is the issue affecting other users or devices?
- [ ] Is there an error message?

## Basic Checks

- [ ] Restart the computer
- [ ] Check disk space
- [ ] Check running processes
- [ ] Check startup apps
- [ ] Check Windows updates
- [ ] Check network connection if cloud apps are slow
- [ ] Check for pending restart
- [ ] Confirm antivirus/security scan status if applicable

## PowerShell Commands

```powershell
Get-Process | Sort-Object CPU -Descending
Get-CimInstance Win32_LogicalDisk
Get-Service
Get-HotFix
```

## Escalation Triggers

- [ ] Device overheating
- [ ] Possible malware
- [ ] Hard drive failure signs
- [ ] Repeated crashes
- [ ] Blue screen errors
- [ ] Business-critical user impacted

## Closure Notes

- [ ] Document cause or likely cause
- [ ] Document actions taken
- [ ] Confirm user experience improved
