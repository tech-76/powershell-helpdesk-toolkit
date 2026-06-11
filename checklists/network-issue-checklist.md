# Network Issue Checklist

## Initial Questions

- [ ] Is the user on Wi-Fi, Ethernet, or VPN?
- [ ] Is the issue affecting one device or many devices?
- [ ] Can the user access any websites?
- [ ] Can the user access internal resources?
- [ ] Did the issue start after moving locations?
- [ ] Is there an error message?

## Basic Checks

- [ ] Confirm cables or Wi-Fi connection
- [ ] Restart browser or application
- [ ] Restart computer
- [ ] Check IP address
- [ ] Check default gateway
- [ ] Test ping to gateway
- [ ] Test ping to public IP
- [ ] Test DNS resolution
- [ ] Test another website
- [ ] Check VPN connection if required

## PowerShell Commands

```powershell
Get-NetIPConfiguration
Test-Connection 127.0.0.1
Test-Connection 8.8.8.8
Resolve-DnsName microsoft.com
```

## Possible Causes

- Wi-Fi disconnected
- Bad Ethernet cable
- DHCP issue
- DNS issue
- VPN issue
- Router or switch issue
- ISP outage
- Firewall or security policy

## Escalation Triggers

- [ ] Multiple users affected
- [ ] No DHCP address
- [ ] Gateway unreachable
- [ ] DNS failure across multiple devices
- [ ] VPN authentication failure
- [ ] Business outage
