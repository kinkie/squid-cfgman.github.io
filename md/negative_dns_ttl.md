---
title: "Squid 3.1.0 configuration directive: negative_dns_ttl"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure negative_dns_ttl
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_negative_dns_ttl) | [Alphabetical Index](index_all#toc_negative_dns_ttl)

## Option Name:
[negative_dns_ttl](#negative_dns_ttl)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** negative_dns_ttl 1 minutes


## Suggested Config:
```plaintext

```

## Details:

	Time-to-Live (TTL) for negative caching of failed DNS lookups.
	This also sets the lower cache limit on positive lookups.
	Minimum value is 1 second, and it is not recommendable to go
	much below 10 seconds.



[Index](index#toc_negative_dns_ttl) | [Alphabetical Index](index_all#toc_negative_dns_ttl)

