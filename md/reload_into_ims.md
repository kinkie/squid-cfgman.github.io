---
title: "Squid 3.1.0 configuration directive: reload_into_ims"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure reload_into_ims
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_reload_into_ims) | [Alphabetical Index](index_all#toc_reload_into_ims)

## Option Name:
[reload_into_ims](#reload_into_ims)
 * **Replaces:** 
 * **Requires:** --enable-http-violations
 * **Default Value:** reload_into_ims off


## Suggested Config:
```plaintext

```

## Details:

	When you enable this option, client no-cache or ``reload''
	requests will be changed to If-Modified-Since requests.
	Doing this VIOLATES the HTTP standard.  Enabling this
	feature could make you liable for problems which it
	causes.

	see also refresh_pattern for a more selective approach.



[Index](index#toc_reload_into_ims) | [Alphabetical Index](index_all#toc_reload_into_ims)

