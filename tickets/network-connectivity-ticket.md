# Ticket: Network Connectivity Issue

## Ticket Summary

User reported that they could not access websites or cloud applications.

## User Impact

User could not access Microsoft 365 services, browser-based tools, or shared online resources.

## Reported Issue

User stated that the internet was not working on their laptop. Other users in the same area were not affected.

## Troubleshooting Steps

1. Confirmed the issue affected one device.
2. Confirmed Wi-Fi was connected.
3. Restarted the browser.
4. Checked IP configuration.
5. Tested localhost connectivity.
6. Tested default gateway connectivity.
7. Tested public IP connectivity.
8. Tested DNS resolution.
9. Restarted Wi-Fi adapter.
10. Confirmed access to websites was restored.

## PowerShell Commands Used

```powershell
Get-NetIPConfiguration
Test-Connection 127.0.0.1
Test-Connection 8.8.8.8
Resolve-DnsName microsoft.com
```

## Findings

The device was connected to Wi-Fi but DNS resolution initially failed.

## Resolution

Refreshed the network connection and confirmed DNS resolution worked again. User was able to access Microsoft 365 and websites.

## Final Ticket Note

Issue isolated to one device. Checked IP configuration, connectivity, and DNS resolution. Refreshed network connection and confirmed internet access restored.
