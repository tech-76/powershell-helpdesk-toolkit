# Ticket: Low Disk Space Warning

## Ticket Summary

User received a low disk space warning on the system drive.

## User Impact

User experienced slow performance and could not complete a software update.

## Reported Issue

User reported a Windows warning that the C drive was almost full. The device was also running slowly.

## Troubleshooting Steps

1. Confirmed warning message.
2. Checked available disk space.
3. Reviewed drive usage.
4. Checked Downloads and temporary files.
5. Confirmed with user before removing unnecessary files.
6. Emptied approved temporary storage areas.
7. Restarted the computer.
8. Confirmed free space improved.
9. Confirmed software update could continue.

## PowerShell Commands Used

```powershell
Get-CimInstance Win32_LogicalDisk
Get-PSDrive
```

## Findings

The system drive had less than 10% free space available.

## Resolution

Removed approved temporary files and unnecessary downloads after user confirmation. Free space improved and system performance became better after restart.

## Final Ticket Note

Confirmed low disk space on C drive, completed approved cleanup, restarted computer, and confirmed improved available storage.
