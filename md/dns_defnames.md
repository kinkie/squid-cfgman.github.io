---
title: "Squid 3.1.0 configuration directive: dns_defnames"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure dns_defnames
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_dns_defnames) | [Alphabetical Index](index_all#toc_dns_defnames)

## Option Name:
[dns_defnames](#dns_defnames)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Search for single-label domain names is disabled.


## Suggested Config:
```plaintext

```

## Details:

	Normally the RES_DEFNAMES resolver option is disabled
	(see res_init(3)).  This prevents caches in a hierarchy
	from interpreting single-component hostnames locally.  To allow
	Squid to handle single-component names, enable this option.



[Index](index#toc_dns_defnames) | [Alphabetical Index](index_all#toc_dns_defnames)

