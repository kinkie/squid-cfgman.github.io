---
title: "Squid 3.1.0 configuration directive: wccp2_assignment_method"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure wccp2_assignment_method
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_wccp2_assignment_method) | [Alphabetical Index](index_all#toc_wccp2_assignment_method)

## Option Name:
[wccp2_assignment_method](#wccp2_assignment_method)
 * **Replaces:** 
 * **Requires:** --enable-wccpv2
 * **Default Value:** wccp2_assignment_method hash


## Suggested Config:
```plaintext

```

## Details:

	WCCP2 allows the setting of methods to assign the WCCP hash
	Valid values are as follows:

	hash - Hash assignment
	mask - Mask assignment

	As a general rule, cisco routers support the hash assignment method
	and cisco switches support the mask assignment method.



[Index](index#toc_wccp2_assignment_method) | [Alphabetical Index](index_all#toc_wccp2_assignment_method)

