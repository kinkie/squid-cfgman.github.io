---
title: "Squid 3.1.0 configuration directive: send_hit"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure send_hit
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_send_hit) | [Alphabetical Index](index_all#toc_send_hit)

## Option Name:
[send_hit](#send_hit)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** By default, this directive is unused and has no effect.


## Suggested Config:
```plaintext

```

## Details:

	Responses denied by this directive will not be served from the cache
	(but may still be cached, see store_miss). This directive has no
	effect on the responses it allows and on the cached objects. This
	directive is applied to both regular from-cache responses and responses
	reused by collapsed requests (see collapsed_forwarding).

	Please see the "cache" directive for a summary of differences among
	store_miss, send_hit, and cache directives.

	Unlike the "cache" directive, send_hit only supports fast acl
	types.  See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.

	For example:

		# apply custom Store ID mapping to some URLs
		acl MapMe dstdomain .c.example.com
		store_id_program ...
		store_id_access allow MapMe

		# but prevent caching of special responses
		# such as 302 redirects that cause StoreID loops
		acl Ordinary http_status 200-299
		store_miss deny MapMe !Ordinary

		# and do not serve any previously stored special responses
		# from the cache (in case they were already cached before
		# the above store_miss rule was in effect).
		send_hit deny MapMe !Ordinary



[Index](index#toc_send_hit) | [Alphabetical Index](index_all#toc_send_hit)

