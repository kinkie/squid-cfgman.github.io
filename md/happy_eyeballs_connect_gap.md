---
title: "Squid 3.1.0 configuration directive: happy_eyeballs_connect_gap"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure happy_eyeballs_connect_gap
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_happy_eyeballs_connect_gap) | [Alphabetical Index](index_all#toc_happy_eyeballs_connect_gap)

## Option Name:
[happy_eyeballs_connect_gap](#happy_eyeballs_connect_gap)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** no artificial delays between spare attempts


## Suggested Config:
```plaintext

```

## Details:

	This Happy Eyeballs (RFC 8305) tuning directive specifies the
	minimum delay between opening spare to-server connections (to any
	server; i.e. across all concurrent master transactions in a Squid
	instance). Each SMP worker currently multiplies the configured gap
	by the total number of workers so that the combined spare connection
	opening rate of a Squid instance obeys the configured limit. The
	workers do not coordinate connection openings yet; a micro burst
	of spare connection openings may violate the configured gap.

	This directive has similar trade-offs as
	happy_eyeballs_connect_timeout, but its focus is on limiting traffic
	amplification effects for Squid as a whole, while
	happy_eyeballs_connect_timeout works on an individual master
	transaction level.

	The following Happy Eyeballs directives place additional connection
	opening restrictions: happy_eyeballs_connect_timeout and
	happy_eyeballs_connect_limit. See the former for related terminology.



[Index](index#toc_happy_eyeballs_connect_gap) | [Alphabetical Index](index_all#toc_happy_eyeballs_connect_gap)

