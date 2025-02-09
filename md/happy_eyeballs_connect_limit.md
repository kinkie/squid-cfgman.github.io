---
title: "Squid 3.1.0 configuration directive: happy_eyeballs_connect_limit"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure happy_eyeballs_connect_limit
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_happy_eyeballs_connect_limit) | [Alphabetical Index](index_all#toc_happy_eyeballs_connect_limit)

## Option Name:
[happy_eyeballs_connect_limit](#happy_eyeballs_connect_limit)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** no artificial limit on the number of concurrent spare attempts


## Suggested Config:
```plaintext

```

## Details:

	This Happy Eyeballs (RFC 8305) tuning directive specifies the
	maximum number of spare to-server connections (to any server; i.e.
	across all concurrent master transactions in a Squid instance).
	Each SMP worker gets an equal share of the total limit. However,
	the workers do not share the actual connection counts yet, so one
	(busier) worker cannot "borrow" spare connection slots from another
	(less loaded) worker.

	Setting this limit to zero disables concurrent use of primary and
	spare TCP connections: Spare connection attempts are made only after
	all primary attempts fail. However, Squid would still use the
	DNS-related optimizations of the Happy Eyeballs approach.

	This directive has similar trade-offs as happy_eyeballs_connect_gap,
	but its focus is on limiting Squid overheads, while
	happy_eyeballs_connect_gap focuses on the origin server and peer
	overheads.

	The following Happy Eyeballs directives place additional connection
	opening restrictions: happy_eyeballs_connect_timeout and
	happy_eyeballs_connect_gap. See the former for related terminology.



[Index](index#toc_happy_eyeballs_connect_limit) | [Alphabetical Index](index_all#toc_happy_eyeballs_connect_limit)

