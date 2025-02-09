---
title: "Squid 3.1.0 configuration directive: netdb_high"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure netdb_high
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_netdb_high) | [Alphabetical Index](index_all#toc_netdb_high)

## Option Name:
[netdb_high](#netdb_high)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** netdb_high 1000


## Suggested Config:
```plaintext

```

## Details:

	The high water mark for the ICMP measurement database.

	Note: low watermark controlled by netdb_low directive.

	These watermarks are counts, not percents.  The defaults are
	(low) 900 and (high) 1000.  When the high water mark is
	reached, database entries will be deleted until the low
	mark is reached.



[Index](index#toc_netdb_high) | [Alphabetical Index](index_all#toc_netdb_high)

