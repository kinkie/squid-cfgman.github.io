---
title: "Squid 3.1.0 configuration directive: store_id_bypass"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure store_id_bypass
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_store_id_bypass) | [Alphabetical Index](index_all#toc_store_id_bypass)

## Option Name:
[store_id_bypass](#store_id_bypass)
 * **Replaces:** storeurl_rewrite_bypass
 * **Requires:** 
 * **Default Value:** store_id_bypass on


## Suggested Config:
```plaintext

```

## Details:

	When this is 'on', a request will not go through the
	helper if all helpers are busy. If this is 'off' and the helper
	queue grows too large, the action is prescribed by the
	on-persistent-overload option. You should only enable this if the
	helpers are not critical to your caching system. If you use
	helpers for critical caching components, and you enable this
	option,	users may not get objects from cache.
	This options sets default queue-size option of the store_id_children
	to 0.



[Index](index#toc_store_id_bypass) | [Alphabetical Index](index_all#toc_store_id_bypass)

