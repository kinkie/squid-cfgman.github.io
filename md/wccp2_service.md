---
title: "Squid 3.1.0 configuration directive: wccp2_service"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure wccp2_service
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_wccp2_service) | [Alphabetical Index](index_all#toc_wccp2_service)

## Option Name:
[wccp2_service](#wccp2_service)
 * **Replaces:** 
 * **Requires:** --enable-wccpv2
 * **Default Value:** Use the 'web-cache' standard service.


## Suggested Config:
```plaintext

```

## Details:

	WCCP2 allows for multiple traffic services. There are two
	types: "standard" and "dynamic". The standard type defines
	one service id - http (id 0). The dynamic service ids can be from
	51 to 255 inclusive.  In order to use a dynamic service id
	one must define the type of traffic to be redirected; this is done
	using the wccp2_service_info option.

	The "standard" type does not require a wccp2_service_info option,
	just specifying the service id will suffice.

	MD5 service authentication can be enabled by adding
	"password=&lt;password&gt;" to the end of this service declaration.

	Examples:

	wccp2_service standard 0	# for the 'web-cache' standard service
	wccp2_service dynamic 80	# a dynamic service type which will be
					# fleshed out with subsequent options.
	wccp2_service standard 0 password=foo



[Index](index#toc_wccp2_service) | [Alphabetical Index](index_all#toc_wccp2_service)

