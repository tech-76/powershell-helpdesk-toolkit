# Ticket: Printer Spooler Issue

## Ticket Summary

User reported that documents were stuck in the print queue and would not print.

## User Impact

User was unable to print required documents.

## Reported Issue

User attempted to print multiple documents, but all jobs remained stuck in the queue. Printer showed as online, but no pages printed.

## Troubleshooting Steps

1. Confirmed the printer was powered on.
2. Confirmed the printer had paper and toner.
3. Confirmed the issue affected one workstation.
4. Checked print queue.
5. Confirmed Print Spooler service status.
6. Restarted the Print Spooler service.
7. Asked user to submit a test print job.
8. Confirmed test page printed successfully.

## PowerShell Commands Used

```powershell
Get-Service Spooler
Restart-Service Spooler
```

## Findings

Print Spooler service was running, but print jobs were stuck in the queue.

## Resolution

Restarted the Print Spooler service and confirmed printing was restored.

## Final Ticket Note

Verified printer status, checked print queue, restarted Print Spooler, and confirmed successful test print with user.
