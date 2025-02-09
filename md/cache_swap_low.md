---
title: "Squid 3.1.0 configuration directive: cache_swap_low"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure cache_swap_low
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_cache_swap_low) | [Alphabetical Index](index_all#toc_cache_swap_low)

## Option Name:
[cache_swap_low](#cache_swap_low)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** cache_swap_low 90


## Suggested Config:
```plaintext

```

## Details:

	The low-water mark for AUFS/UFS/diskd cache object eviction by
	the cache_replacement_policy algorithm.

	Removal begins when the swap (disk) usage of a cache_dir is
	above this low-water mark and attempts to maintain utilization
	near the low-water mark.

	As swap utilization increases towards the high-water mark set
	by cache_swap_high object eviction becomes more aggressive.

	The value difference in percentages between low- and high-water
	marks represent an eviction rate of 300 objects per second and
	the rate continues to scale in aggressiveness by multiples of
	this above the high-water mark.

	Defaults are 90% and 95%. If you have a large cache, 5% could be
	hundreds of MB. If this is the case you may wish to set these
	numbers closer together.

	See also cache_swap_high and cache_replacement_policy



[Index](index#toc_cache_swap_low) | [Alphabetical Index](index_all#toc_cache_swap_low)

