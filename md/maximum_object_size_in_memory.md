---
title: "Squid 3.1.0 configuration directive: maximum_object_size_in_memory"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure maximum_object_size_in_memory
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_maximum_object_size_in_memory) | [Alphabetical Index](index_all#toc_maximum_object_size_in_memory)

## Option Name:
[maximum_object_size_in_memory](#maximum_object_size_in_memory)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** maximum_object_size_in_memory 512 KB


## Suggested Config:
```plaintext

```

## Details:

	Objects greater than this size will not be attempted to kept in
	the memory cache. This should be set high enough to keep objects
	accessed frequently in memory to improve performance whilst low
	enough to keep larger objects from hoarding cache_mem.



[Index](index#toc_maximum_object_size_in_memory) | [Alphabetical Index](index_all#toc_maximum_object_size_in_memory)

