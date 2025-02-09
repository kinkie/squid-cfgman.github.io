---
title: "Squid 3.1.0 configuration directive: max_filedescriptors"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure max_filedescriptors
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_max_filedescriptors) | [Alphabetical Index](index_all#toc_max_filedescriptors)

## Option Name:
[max_filedescriptors](#max_filedescriptors)
 * **Replaces:** max_filedesc
 * **Requires:** 
 * **Default Value:** Use operating system soft limit set by ulimit.


## Suggested Config:
```plaintext

```

## Details:

	Set the maximum number of filedescriptors, either below the
	operating system default or up to the hard limit.

	Remove from squid.conf to inherit the current ulimit soft
	limit setting.

	Note: Changing this requires a restart of Squid. Also
	not all I/O types supports large values (eg on Windows).



[Index](index#toc_max_filedescriptors) | [Alphabetical Index](index_all#toc_max_filedescriptors)

