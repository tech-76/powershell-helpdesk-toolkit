# Disk Space Checklist

## Initial Questions

- [ ] What warning or error does the user see?
- [ ] Which drive is low on space?
- [ ] Is the issue affecting performance?
- [ ] Did the issue start after downloads or updates?
- [ ] Is the user saving large files locally?
- [ ] Is OneDrive or cloud sync involved?

## Basic Checks

- [ ] Check free disk space
- [ ] Empty Recycle Bin if approved
- [ ] Review Downloads folder
- [ ] Review temporary files
- [ ] Check large user files
- [ ] Check if Windows updates are pending
- [ ] Check if cloud sync is duplicating files
- [ ] Confirm business data is not deleted without approval

## PowerShell Commands

```powershell
Get-CimInstance Win32_LogicalDisk
Get-PSDrive
```

## Safe Cleanup Areas

- Recycle Bin
- Temporary files
- Downloads folder after user confirmation
- Old installer files after review
- Browser cache if appropriate

## Do Not Delete Without Approval

- Business files
- User documents
- Email archives
- Financial records
- Project folders
- Unknown application folders

## Escalation Triggers

- [ ] Drive repeatedly fills up
- [ ] Less than 10% free space remains
- [ ] Possible malware or log growth
- [ ] System drive errors
- [ ] User needs storage upgrade
