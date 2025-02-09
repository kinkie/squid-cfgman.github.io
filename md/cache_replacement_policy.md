---
title: "Squid 3.1.0 configuration directive: cache_replacement_policy"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure cache_replacement_policy
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_cache_replacement_policy) | [Alphabetical Index](index_all#toc_cache_replacement_policy)

## Option Name:
[cache_replacement_policy](#cache_replacement_policy)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** cache_replacement_policy lru


## Suggested Config:
```plaintext

```

## Details:

	The cache replacement policy parameter determines which
	objects are evicted (replaced) when disk space is needed.

	    lru       : Squid's original list based LRU policy
	    heap GDSF : Greedy-Dual Size Frequency
	    heap LFUDA: Least Frequently Used with Dynamic Aging
	    heap LRU  : LRU policy implemented using a heap

	Applies to any cache_dir lines listed below this directive.

	The LRU policies keeps recently referenced objects.

	The heap GDSF policy optimizes object hit rate by keeping smaller
	popular objects in cache so it has a better chance of getting a
	hit.  It achieves a lower byte hit rate than LFUDA though since
	it evicts larger (possibly popular) objects.

	The heap LFUDA policy keeps popular objects in cache regardless of
	their size and thus optimizes byte hit rate at the expense of
	hit rate since one large, popular object will prevent many
	smaller, slightly less popular objects from being cached.

	Both policies utilize a dynamic aging mechanism that prevents
	cache pollution that can otherwise occur with frequency-based
	replacement policies.

	NOTE: if using the LFUDA replacement policy you should increase
	the value of maximum_object_size above its default of 4 MB to
	to maximize the potential byte hit rate improvement of LFUDA.

	For more information about the GDSF and LFUDA cache replacement
	policies see http://www.hpl.hp.com/techreports/1999/HPL-1999-69.html
	and http://fog.hpl.external.hp.com/techreports/98/HPL-98-173.html.



[Index](index#toc_cache_replacement_policy) | [Alphabetical Index](index_all#toc_cache_replacement_policy)

