---
title: "Squid 3.1.0 configuration directive: cache"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure cache
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_cache) | [Alphabetical Index](index_all#toc_cache)

## Option Name:
[cache](#cache)
 * **Replaces:** no_cache
 * **Requires:** 
 * **Default Value:** By default, this directive is unused and has no effect.


## Suggested Config:
```plaintext

```

## Details:

	Requests denied by this directive will not be served from the cache
	and their responses will not be stored in the cache. This directive
	has no effect on other transactions and on already cached responses.

	This clause supports both fast and slow acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.

	This and the two other similar caching directives listed below are
	checked at different transaction processing stages, have different
	access to response information, affect different cache operations,
	and differ in slow ACLs support:

	* cache: Checked before Squid makes a hit/miss determination.
		No access to reply information!
		Denies both serving a hit and storing a miss.
		Supports both fast and slow ACLs.
	* send_hit: Checked after a hit was detected.
		Has access to reply (hit) information.
		Denies serving a hit only.
		Supports fast ACLs only.
	* store_miss: Checked before storing a cachable miss.
		Has access to reply (miss) information.
		Denies storing a miss only.
		Supports fast ACLs only.

	If you are not sure which of the three directives to use, apply the
	following decision logic:

	* If your ACL(s) are of slow type _and_ need response info, redesign.
	  Squid does not support that particular combination at this time.
        Otherwise:
	* If your directive ACL(s) are of slow type, use "cache"; and/or
	* if your directive ACL(s) need no response info, use "cache".
        Otherwise:
	* If you do not want the response cached, use store_miss; and/or
	* if you do not want a hit on a cached response, use send_hit.



[Index](index#toc_cache) | [Alphabetical Index](index_all#toc_cache)

