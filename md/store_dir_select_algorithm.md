---
title: "Squid 3.1.0 configuration directive: store_dir_select_algorithm"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure store_dir_select_algorithm
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_store_dir_select_algorithm) | [Alphabetical Index](index_all#toc_store_dir_select_algorithm)

## Option Name:
[store_dir_select_algorithm](#store_dir_select_algorithm)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** store_dir_select_algorithm least-load


## Suggested Config:
```plaintext

```

## Details:

	How Squid selects which cache_dir to use when the response
	object will fit into more than one.

	Regardless of which algorithm is used the cache_dir min-size
	and max-size parameters are obeyed. As such they can affect
	the selection algorithm by limiting the set of considered
	cache_dir.

	Algorithms:

		least-load

	This algorithm is suited to caches with similar cache_dir
	sizes and disk speeds.

	The disk with the least I/O pending is selected.
	When there are multiple disks with the same I/O load ranking
	the cache_dir with most available capacity is selected.

	When a mix of cache_dir sizes are configured the faster disks
	have a naturally lower I/O loading and larger disks have more
	capacity. So space used to store objects and data throughput
	may be very unbalanced towards larger disks.


		round-robin

	This algorithm is suited to caches with unequal cache_dir
	disk sizes.

	Each cache_dir is selected in a rotation. The next suitable
	cache_dir is used.

	Available cache_dir capacity is only considered in relation
	to whether the object will fit and meets the min-size and
	max-size parameters.

	Disk I/O loading is only considered to prevent overload on slow
	disks. This algorithm does not spread objects by size, so any
	I/O loading per-disk may appear very unbalanced and volatile.

	If several cache_dirs use similar min-size, max-size, or other
	limits to to reject certain responses, then do not group such
	cache_dir lines together, to avoid round-robin selection bias
	towards the first cache_dir after the group. Instead, interleave
	cache_dir lines from different groups. For example:

		store_dir_select_algorithm round-robin
		cache_dir rock /hdd1 ... min-size=100000
		cache_dir rock /ssd1 ... max-size=99999
		cache_dir rock /hdd2 ... min-size=100000
		cache_dir rock /ssd2 ... max-size=99999
		cache_dir rock /hdd3 ... min-size=100000
		cache_dir rock /ssd3 ... max-size=99999



[Index](index#toc_store_dir_select_algorithm) | [Alphabetical Index](index_all#toc_store_dir_select_algorithm)

