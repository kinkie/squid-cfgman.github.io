---
title: "Squid 3.1.0 configuration directive: high_memory_warning"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure high_memory_warning
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_high_memory_warning) | [Alphabetical Index](index_all#toc_high_memory_warning)

## Option Name:
[high_memory_warning](#high_memory_warning)
 * **Replaces:** 
 * **Requires:** GNU Malloc with mstats()
 * **Default Value:** disabled.


## Suggested Config:
```plaintext

```

## Details:

	If the memory usage (as determined by gnumalloc, if available and used)
	exceeds	this amount, Squid prints a WARNING with debug level 0 to get
	the administrators attention.



[Index](index#toc_high_memory_warning) | [Alphabetical Index](index_all#toc_high_memory_warning)

