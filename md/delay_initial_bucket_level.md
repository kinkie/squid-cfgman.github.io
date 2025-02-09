---
title: "Squid 3.1.0 configuration directive: delay_initial_bucket_level"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure delay_initial_bucket_level
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_delay_initial_bucket_level) | [Alphabetical Index](index_all#toc_delay_initial_bucket_level)

## Option Name:
[delay_initial_bucket_level](#delay_initial_bucket_level)
 * **Replaces:** 
 * **Requires:** --enable-delay-pools
 * **Default Value:** delay_initial_bucket_level 50


## Suggested Config:
```plaintext

```

## Details:

	The initial bucket percentage is used to determine how much is put
	in each bucket when squid starts, is reconfigured, or first notices
	a host accessing it (in class 2 and class 3, individual hosts and
	networks only have buckets associated with them once they have been
	"seen" by squid).



[Index](index#toc_delay_initial_bucket_level) | [Alphabetical Index](index_all#toc_delay_initial_bucket_level)

