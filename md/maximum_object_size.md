---
title: "Squid 3.1.0 configuration directive: maximum_object_size"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure maximum_object_size
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_maximum_object_size) | [Alphabetical Index](index_all#toc_maximum_object_size)

## Option Name:
[maximum_object_size](#maximum_object_size)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** maximum_object_size 4 MB


## Suggested Config:
```plaintext

```

## Details:

	Set the default value for max-size parameter on any cache_dir.
	The value is specified in bytes, and the default is 4 MB.

	If you wish to get a high BYTES hit ratio, you should probably
	increase this (one 32 MB object hit counts for 3200 10KB
	hits).

	If you wish to increase hit ratio more than you want to
	save bandwidth you should leave this low.

	NOTE: if using the LFUDA replacement policy you should increase
	this value to maximize the byte hit rate improvement of LFUDA!
	See cache_replacement_policy for a discussion of this policy.



[Index](index#toc_maximum_object_size) | [Alphabetical Index](index_all#toc_maximum_object_size)

