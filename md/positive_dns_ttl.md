---
title: "Squid 3.1.0 configuration directive: positive_dns_ttl"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure positive_dns_ttl
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_positive_dns_ttl) | [Alphabetical Index](index_all#toc_positive_dns_ttl)

## Option Name:
[positive_dns_ttl](#positive_dns_ttl)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** positive_dns_ttl 6 hours


## Suggested Config:
```plaintext

```

## Details:

	Upper limit on how long Squid will cache positive DNS responses.
	Default is 6 hours (360 minutes). This directive must be set
	larger than negative_dns_ttl.



[Index](index#toc_positive_dns_ttl) | [Alphabetical Index](index_all#toc_positive_dns_ttl)

