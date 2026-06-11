# Printer Issue Checklist

## Initial Questions

- [ ] What printer is affected?
- [ ] Is the issue affecting one user or multiple users?
- [ ] Is the printer powered on?
- [ ] Is the printer connected to the network or USB?
- [ ] Are there any error lights or messages?
- [ ] Are print jobs stuck in the queue?
- [ ] Can the user print to another printer?

## Basic Checks

- [ ] Confirm printer power
- [ ] Confirm paper and toner
- [ ] Confirm network or USB connection
- [ ] Check print queue
- [ ] Restart printer
- [ ] Restart computer
- [ ] Confirm default printer
- [ ] Restart Print Spooler if appropriate
- [ ] Reinstall or update driver if required
- [ ] Print test page

## PowerShell Commands

```powershell
Get-Service Spooler
Restart-Service Spooler
```

## Possible Causes

- Printer offline
- Paper jam
- Empty toner
- Stuck print queue
- Print Spooler issue
- Driver issue
- Network connectivity issue
- Wrong default printer

## Escalation Triggers

- [ ] Printer hardware error
- [ ] Multiple users affected
- [ ] Network printer unreachable
- [ ] Driver deployment issue
- [ ] Print server issue
