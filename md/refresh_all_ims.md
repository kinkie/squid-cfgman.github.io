---
title: "Squid 3.1.0 configuration directive: refresh_all_ims"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure refresh_all_ims
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_refresh_all_ims) | [Alphabetical Index](index_all#toc_refresh_all_ims)

## Option Name:
[refresh_all_ims](#refresh_all_ims)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** refresh_all_ims off


## Suggested Config:
```plaintext

```

## Details:

	When you enable this option, squid will always check
	the origin server for an update when a client sends an
	If-Modified-Since request.  Many browsers use IMS
	requests when the user requests a reload, and this
	ensures those clients receive the latest version.

	By default (off), squid may return a Not Modified response
	based on the age of the cached version.



[Index](index#toc_refresh_all_ims) | [Alphabetical Index](index_all#toc_refresh_all_ims)

