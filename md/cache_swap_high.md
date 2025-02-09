---
title: "Squid 3.1.0 configuration directive: cache_swap_high"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure cache_swap_high
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_cache_swap_high) | [Alphabetical Index](index_all#toc_cache_swap_high)

## Option Name:
[cache_swap_high](#cache_swap_high)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** cache_swap_high 95


## Suggested Config:
```plaintext

```

## Details:

	The high-water mark for AUFS/UFS/diskd cache object eviction by
	the cache_replacement_policy algorithm.

	Removal begins when the swap (disk) usage of a cache_dir is
	above the low-water mark set by cache_swap_low and attempts to
	maintain utilization near the low-water mark.

	As swap utilization increases towards this high-water mark object
	eviction becomes more aggressive.

	The value difference in percentages between low- and high-water
	marks represent an eviction rate of 300 objects per second and
	the rate continues to scale in aggressiveness by multiples of
	this above the high-water mark.

	Defaults are 90% and 95%. If you have a large cache, 5% could be
	hundreds of MB. If this is the case you may wish to set these
	numbers closer together.

	See also cache_swap_low and cache_replacement_policy



[Index](index#toc_cache_swap_high) | [Alphabetical Index](index_all#toc_cache_swap_high)

