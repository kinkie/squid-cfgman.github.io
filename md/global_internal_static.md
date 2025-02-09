---
title: "Squid 3.1.0 configuration directive: global_internal_static"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure global_internal_static
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_global_internal_static) | [Alphabetical Index](index_all#toc_global_internal_static)

## Option Name:
[global_internal_static](#global_internal_static)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** global_internal_static on


## Suggested Config:
```plaintext

```

## Details:

	This directive controls is Squid should intercept all requests for
	/squid-internal-static/ no matter which host the URL is requesting
	(default on setting), or if nothing special should be done for
	such URLs (off setting). The purpose of this directive is to make
	icons etc work better in complex cache hierarchies where it may
	not always be possible for all corners in the cache mesh to reach
	the server generating a directory listing.



[Index](index#toc_global_internal_static) | [Alphabetical Index](index_all#toc_global_internal_static)

