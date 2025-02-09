---
title: "Squid 3.1.0 configuration directive: windows_ipaddrchangemonitor"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure windows_ipaddrchangemonitor
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_windows_ipaddrchangemonitor) | [Alphabetical Index](index_all#toc_windows_ipaddrchangemonitor)

## Option Name:
[windows_ipaddrchangemonitor](#windows_ipaddrchangemonitor)
 * **Replaces:** 
 * **Requires:** MS Windows
 * **Default Value:** windows_ipaddrchangemonitor on


## Suggested Config:
```plaintext

```

## Details:

	On Windows Squid by default will monitor IP address changes and will
	reconfigure itself after any detected event. This is very useful for
	proxies connected to internet with dial-up interfaces.
	In some cases (a Proxy server acting as VPN gateway is one) it could be
	desiderable to disable this behaviour setting this to 'off'.
	Note: after changing this, Squid service must be restarted.



[Index](index#toc_windows_ipaddrchangemonitor) | [Alphabetical Index](index_all#toc_windows_ipaddrchangemonitor)

