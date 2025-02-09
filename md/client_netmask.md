---
title: "Squid 3.1.0 configuration directive: client_netmask"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure client_netmask
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_client_netmask) | [Alphabetical Index](index_all#toc_client_netmask)

## Option Name:
[client_netmask](#client_netmask)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Log full client IP address


## Suggested Config:
```plaintext

```

## Details:

	A netmask for client addresses in logfiles and cachemgr output.
	Change this to protect the privacy of your cache clients.
	A netmask of 255.255.255.0 will log all IP's in that range with
	the last digit set to '0'.



[Index](index#toc_client_netmask) | [Alphabetical Index](index_all#toc_client_netmask)

