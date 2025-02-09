---
title: "Squid 3.1.0 configuration directive: wccp2_return_method"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure wccp2_return_method
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_wccp2_return_method) | [Alphabetical Index](index_all#toc_wccp2_return_method)

## Option Name:
[wccp2_return_method](#wccp2_return_method)
 * **Replaces:** 
 * **Requires:** --enable-wccpv2
 * **Default Value:** wccp2_return_method gre


## Suggested Config:
```plaintext

```

## Details:

	WCCP2 allows the setting of return methods between the
	router/switch and the cache for packets that the cache
	decides not to handle.  Valid values are as follows:

	gre - GRE encapsulation (forward the packet in a GRE/WCCP tunnel)
	l2  - L2 redirect (forward the packet using Layer 2/MAC rewriting)

	Currently (as of IOS 12.4) cisco routers only support GRE.
	Cisco switches only support the L2 redirect assignment.

	If the "ip wccp redirect exclude in" command has been
	enabled on the cache interface, then it is still safe for
	the proxy server to use a l2 redirect method even if this
	option is set to GRE.



[Index](index#toc_wccp2_return_method) | [Alphabetical Index](index_all#toc_wccp2_return_method)

