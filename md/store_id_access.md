---
title: "Squid 3.1.0 configuration directive: store_id_access"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure store_id_access
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_store_id_access) | [Alphabetical Index](index_all#toc_store_id_access)

## Option Name:
[store_id_access](#store_id_access)
 * **Replaces:** storeurl_rewrite_access
 * **Requires:** 
 * **Default Value:** Allow, unless rules exist in squid.conf.


## Suggested Config:
```plaintext

```

## Details:

	If defined, this access list specifies which requests are
	sent to the StoreID processes.  By default all requests
	are sent.

	This clause supports both fast and slow acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.



[Index](index#toc_store_id_access) | [Alphabetical Index](index_all#toc_store_id_access)

