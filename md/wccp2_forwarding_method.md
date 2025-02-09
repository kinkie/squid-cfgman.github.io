---
title: "Squid 3.1.0 configuration directive: wccp2_forwarding_method"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure wccp2_forwarding_method
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_wccp2_forwarding_method) | [Alphabetical Index](index_all#toc_wccp2_forwarding_method)

## Option Name:
[wccp2_forwarding_method](#wccp2_forwarding_method)
 * **Replaces:** 
 * **Requires:** --enable-wccpv2
 * **Default Value:** wccp2_forwarding_method gre


## Suggested Config:
```plaintext

```

## Details:

	WCCP2 allows the setting of forwarding methods between the
	router/switch and the cache.  Valid values are as follows:

	gre - GRE encapsulation (forward the packet in a GRE/WCCP tunnel)
	l2  - L2 redirect (forward the packet using Layer 2/MAC rewriting)

	Currently (as of IOS 12.4) cisco routers only support GRE.
	Cisco switches only support the L2 redirect assignment method.



[Index](index#toc_wccp2_forwarding_method) | [Alphabetical Index](index_all#toc_wccp2_forwarding_method)

