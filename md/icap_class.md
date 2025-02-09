---
title: "Squid 3.1.0 configuration directive: icap_class"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure icap_class
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_icap_class) | [Alphabetical Index](index_all#toc_icap_class)

## Option Name:
[icap_class](#icap_class)
 * **Replaces:** 
 * **Requires:** --enable-icap-client
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	This deprecated option was documented to define an ICAP service
	chain, even though it actually defined a set of similar, redundant
	services, and the chains were not supported.

	To define a set of redundant services, please use the
	adaptation_service_set directive. For service chains, use
	adaptation_service_chain.



[Index](index#toc_icap_class) | [Alphabetical Index](index_all#toc_icap_class)

