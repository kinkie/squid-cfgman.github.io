---
title: "Squid 3.1.0 configuration directive: memory_pools"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure memory_pools
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_memory_pools) | [Alphabetical Index](index_all#toc_memory_pools)

## Option Name:
[memory_pools](#memory_pools)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** memory_pools on


## Suggested Config:
```plaintext

```

## Details:

	If set, Squid will keep pools of allocated (but unused) memory
	available for future use.  If memory is a premium on your
	system and you believe your malloc library outperforms Squid
	routines, disable this.



[Index](index#toc_memory_pools) | [Alphabetical Index](index_all#toc_memory_pools)

