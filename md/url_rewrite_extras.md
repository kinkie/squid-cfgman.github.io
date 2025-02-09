---
title: "Squid 3.1.0 configuration directive: url_rewrite_extras"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure url_rewrite_extras
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_url_rewrite_extras) | [Alphabetical Index](index_all#toc_url_rewrite_extras)

## Option Name:
[url_rewrite_extras](#url_rewrite_extras)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** url_rewrite_extras "%&gt;a/%&gt;A %un %&gt;rm myip=%la myport=%lp"


## Suggested Config:
```plaintext

```

## Details:

	Specifies a string to be append to request line format for the
	rewriter helper. "Quoted" format values may contain spaces and
	logformat %macros. In theory, any logformat %macro can be used.
	In practice, a %macro expands as a dash (-) if the helper request is
	sent before the required macro information is available to Squid.



[Index](index#toc_url_rewrite_extras) | [Alphabetical Index](index_all#toc_url_rewrite_extras)

