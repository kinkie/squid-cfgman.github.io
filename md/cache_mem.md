---
title: "Squid 3.1.0 configuration directive: cache_mem"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure cache_mem
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_cache_mem) | [Alphabetical Index](index_all#toc_cache_mem)

## Option Name:
[cache_mem](#cache_mem)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** cache_mem 256 MB


## Suggested Config:
```plaintext

```

## Details:

	NOTE: THIS PARAMETER DOES NOT SPECIFY THE MAXIMUM PROCESS SIZE.
	IT ONLY PLACES A LIMIT ON HOW MUCH ADDITIONAL MEMORY SQUID WILL
	USE AS A MEMORY CACHE OF OBJECTS. SQUID USES MEMORY FOR OTHER
	THINGS AS WELL. SEE THE SQUID FAQ SECTION 8 FOR DETAILS.

	'cache_mem' specifies the ideal amount of memory to be used
	for:
		* In-Transit objects
		* Hot Objects
		* Negative-Cached objects

	Data for these objects are stored in 4 KB blocks.  This
	parameter specifies the ideal upper limit on the total size of
	4 KB blocks allocated.  In-Transit objects take the highest
	priority.

	In-transit objects have priority over the others.  When
	additional space is needed for incoming data, negative-cached
	and hot objects will be released.  In other words, the
	negative-cached and hot objects will fill up any unused space
	not needed for in-transit objects.

	If circumstances require, this limit will be exceeded.
	Specifically, if your incoming request rate requires more than
	'cache_mem' of memory to hold in-transit objects, Squid will
	exceed this limit to satisfy the new requests.  When the load
	decreases, blocks will be freed until the high-water mark is
	reached.  Thereafter, blocks will be used to store hot
	objects.

	If shared memory caching is enabled, Squid does not use the shared
	cache space for in-transit objects, but they still consume as much
	local memory as they need. For more details about the shared memory
	cache, see memory_cache_shared.



[Index](index#toc_cache_mem) | [Alphabetical Index](index_all#toc_cache_mem)

