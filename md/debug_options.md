---
title: "Squid 3.1.0 configuration directive: debug_options"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure debug_options
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_debug_options) | [Alphabetical Index](index_all#toc_debug_options)

## Option Name:
[debug_options](#debug_options)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Log all critical and important messages.


## Suggested Config:
```plaintext

```

## Details:

	Logging options are set as section,level where each source file
	is assigned a unique section.  Lower levels result in less
	output,  Full debugging (level 9) can result in a very large
	log file, so be careful.

	The magic word "ALL" sets debugging levels for all sections.
	The default is to run with "ALL,1" to record important warnings.

	The rotate=N option can be used to keep more or less of these logs
	than would otherwise be kept by logfile_rotate.
	For most uses a single log should be enough to monitor current
	events affecting Squid.



[Index](index#toc_debug_options) | [Alphabetical Index](index_all#toc_debug_options)

