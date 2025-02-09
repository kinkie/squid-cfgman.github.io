---
title: "Squid 3.1.0 configuration directive: dns_multicast_local"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure dns_multicast_local
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_dns_multicast_local) | [Alphabetical Index](index_all#toc_dns_multicast_local)

## Option Name:
[dns_multicast_local](#dns_multicast_local)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Search for .local and .arpa names is disabled.


## Suggested Config:
```plaintext

```

## Details:

	When set to on, Squid sends multicast DNS lookups on the local
	network for domains ending in .local and .arpa.
	This enables local servers and devices to be contacted in an
	ad-hoc or zero-configuration network environment.



[Index](index#toc_dns_multicast_local) | [Alphabetical Index](index_all#toc_dns_multicast_local)

