---
title: "Squid 3.1.0 configuration directive: vary_ignore_expire"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure vary_ignore_expire
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_vary_ignore_expire) | [Alphabetical Index](index_all#toc_vary_ignore_expire)

## Option Name:
[vary_ignore_expire](#vary_ignore_expire)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** vary_ignore_expire off


## Suggested Config:
```plaintext

```

## Details:

	Many HTTP servers supporting Vary gives such objects
	immediate expiry time with no cache-control header
	when requested by a HTTP/1.0 client. This option
	enables Squid to ignore such expiry times until
	HTTP/1.1 is fully implemented.

	WARNING: If turned on this may eventually cause some
	varying objects not intended for caching to get cached.



[Index](index#toc_vary_ignore_expire) | [Alphabetical Index](index_all#toc_vary_ignore_expire)

