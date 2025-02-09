---
title: "Squid 3.1.0 configuration directive: wccp2_router"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure wccp2_router
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_wccp2_router) | [Alphabetical Index](index_all#toc_wccp2_router)

## Option Name:
[wccp2_router](#wccp2_router)
 * **Replaces:** 
 * **Requires:** --enable-wccpv2
 * **Default Value:** WCCPv2 disabled.


## Suggested Config:
```plaintext

```

## Details:

	Use this option to define your WCCP ``home'' router for
	Squid.

	wccp_router supports a single WCCP(v1) router

	wccp2_router supports multiple WCCPv2 routers

	only one of the two may be used at the same time and defines
	which version of WCCP to use.



[Index](index#toc_wccp2_router) | [Alphabetical Index](index_all#toc_wccp2_router)

