---
title: "Squid 3.1.0 configuration directive: memory_pools_limit"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure memory_pools_limit
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_memory_pools_limit) | [Alphabetical Index](index_all#toc_memory_pools_limit)

## Option Name:
[memory_pools_limit](#memory_pools_limit)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** memory_pools_limit 5 MB


## Suggested Config:
```plaintext

```

## Details:

	Used only with memory_pools on:
	memory_pools_limit 50 MB

	If set to a non-zero value, Squid will keep at most the specified
	limit of allocated (but unused) memory in memory pools. All free()
	requests that exceed this limit will be handled by your malloc
	library. Squid does not pre-allocate any memory, just safe-keeps
	objects that otherwise would be free()d. Thus, it is safe to set
	memory_pools_limit to a reasonably high value even if your
	configuration will use less memory.

	If set to none, Squid will keep all memory it can. That is, there
	will be no limit on the total amount of memory used for safe-keeping.

	To disable memory allocation optimization, do not set
	memory_pools_limit to 0 or none. Set memory_pools to "off" instead.

	An overhead for maintaining memory pools is not taken into account
	when the limit is checked. This overhead is close to four bytes per
	object kept. However, pools may actually _save_ memory because of
	reduced memory thrashing in your malloc library.



[Index](index#toc_memory_pools_limit) | [Alphabetical Index](index_all#toc_memory_pools_limit)

