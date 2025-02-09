---
title: "Squid 3.1.0 configuration directive: memory_cache_shared"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure memory_cache_shared
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_memory_cache_shared) | [Alphabetical Index](index_all#toc_memory_cache_shared)

## Option Name:
[memory_cache_shared](#memory_cache_shared)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** "on" where supported if doing memory caching with multiple SMP workers.


## Suggested Config:
```plaintext

```

## Details:

	Controls whether the memory cache is shared among SMP workers.

	The shared memory cache is meant to occupy cache_mem bytes and replace
	the non-shared memory cache, although some entities may still be
	cached locally by workers for now (e.g., internal and in-transit
	objects may be served from a local memory cache even if shared memory
	caching is enabled).

	By default, the memory cache is shared if and only if all of the
	following conditions are satisfied: Squid runs in SMP mode with
	multiple workers, cache_mem is positive, and Squid environment
	supports required IPC primitives (e.g., POSIX shared memory segments
	and GCC-style atomic operations).

	To avoid blocking locks, shared memory uses opportunistic algorithms
	that do not guarantee that every cachable entity that could have been
	shared among SMP workers will actually be shared.



[Index](index#toc_memory_cache_shared) | [Alphabetical Index](index_all#toc_memory_cache_shared)

