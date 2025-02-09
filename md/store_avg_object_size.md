---
title: "Squid 3.1.0 configuration directive: store_avg_object_size"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure store_avg_object_size
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_store_avg_object_size) | [Alphabetical Index](index_all#toc_store_avg_object_size)

## Option Name:
[store_avg_object_size](#store_avg_object_size)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** store_avg_object_size 13 KB


## Suggested Config:
```plaintext

```

## Details:

	Average object size, used to estimate number of objects your
	cache can hold.  The default is 13 KB.

	This is used to pre-seed the cache index memory allocation to
	reduce expensive reallocate operations while handling clients
	traffic. Too-large values may result in memory allocation during
	peak traffic, too-small values will result in wasted memory.

	Check the cache manager 'info' report metrics for the real
	object sizes seen by your Squid before tuning this.



[Index](index#toc_store_avg_object_size) | [Alphabetical Index](index_all#toc_store_avg_object_size)

