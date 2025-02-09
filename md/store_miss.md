---
title: "Squid 3.1.0 configuration directive: store_miss"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure store_miss
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_store_miss) | [Alphabetical Index](index_all#toc_store_miss)

## Option Name:
[store_miss](#store_miss)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** By default, this directive is unused and has no effect.


## Suggested Config:
```plaintext

```

## Details:

	Responses denied by this directive will not be cached (but may still
	be served from the cache, see send_hit). This directive has no
	effect on the responses it allows and on the already cached responses.

	Please see the "cache" directive for a summary of differences among
	store_miss, send_hit, and cache directives. See the
	send_hit directive for a usage example.

	Unlike the "cache" directive, store_miss only supports fast acl
	types.  See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.



[Index](index#toc_store_miss) | [Alphabetical Index](index_all#toc_store_miss)

