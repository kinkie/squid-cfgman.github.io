---
title: "Squid 3.1.0 configuration directive: strip_query_terms"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure strip_query_terms
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_strip_query_terms) | [Alphabetical Index](index_all#toc_strip_query_terms)

## Option Name:
[strip_query_terms](#strip_query_terms)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** strip_query_terms on


## Suggested Config:
```plaintext

```

## Details:

	By default, Squid strips query terms from requested URLs before
	logging.  This protects your user's privacy and reduces log size.

	When investigating HIT/MISS or other caching behaviour you
	will need to disable this to see the full URL used by Squid.



[Index](index#toc_strip_query_terms) | [Alphabetical Index](index_all#toc_strip_query_terms)

