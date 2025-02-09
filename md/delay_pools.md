---
title: "Squid 3.1.0 configuration directive: delay_pools"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure delay_pools
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_delay_pools) | [Alphabetical Index](index_all#toc_delay_pools)

## Option Name:
[delay_pools](#delay_pools)
 * **Replaces:** 
 * **Requires:** --enable-delay-pools
 * **Default Value:** delay_pools 0


## Suggested Config:
```plaintext

```

## Details:

	This represents the number of delay pools to be used.  For example,
	if you have one class 2 delay pool and one class 3 delays pool, you
	have a total of 2 delay pools.

	See also delay_parameters, delay_class, delay_access for pool
	configuration details.



[Index](index#toc_delay_pools) | [Alphabetical Index](index_all#toc_delay_pools)

