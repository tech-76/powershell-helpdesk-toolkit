# Ticket: Slow Computer Performance

## Ticket Summary

User reported that their Windows computer was running slowly and applications were taking longer than usual to open.

## User Impact

User was able to work but experienced delays when opening applications and switching between tasks.

## Reported Issue

User stated that the device became slow after startup and Outlook, browser, and Teams were taking longer to respond.

## Troubleshooting Steps

1. Confirmed when the issue started.
2. Asked whether other users were affected.
3. Restarted the computer.
4. Checked disk space.
5. Reviewed running processes.
6. Checked Windows Update history.
7. Confirmed network connectivity.
8. Collected basic system information.
9. Documented findings in the ticket.

## PowerShell Commands Used

```powershell
Get-Process | Sort-Object CPU -Descending
Get-CimInstance Win32_LogicalDisk
Get-HotFix
```

## Findings

The computer had low available disk space on the system drive. Several applications were also running at startup.

## Resolution

Freed approved temporary files, advised user to move large non-business files to approved storage, and restarted the computer. Performance improved after cleanup and restart.

## Final Ticket Note

Checked system performance, disk space, startup behavior, and updates. Low disk space was identified as the likely cause. Completed approved cleanup and confirmed improved performance with user.
