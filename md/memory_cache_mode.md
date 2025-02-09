---
title: "Squid 3.1.0 configuration directive: memory_cache_mode"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure memory_cache_mode
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_memory_cache_mode) | [Alphabetical Index](index_all#toc_memory_cache_mode)

## Option Name:
[memory_cache_mode](#memory_cache_mode)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Keep the most recently fetched objects in memory


## Suggested Config:
```plaintext

```

## Details:

	Controls which objects to keep in the memory cache (cache_mem)

	always	Keep most recently fetched objects in memory (default)

	disk	Only disk cache hits are kept in memory, which means
		an object must first be cached on disk and then hit
		a second time before cached in memory.

	network	Only objects fetched from network is kept in memory



[Index](index#toc_memory_cache_mode) | [Alphabetical Index](index_all#toc_memory_cache_mode)

