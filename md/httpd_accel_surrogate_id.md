---
title: "Squid 3.1.0 configuration directive: httpd_accel_surrogate_id"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure httpd_accel_surrogate_id
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_httpd_accel_surrogate_id) | [Alphabetical Index](index_all#toc_httpd_accel_surrogate_id)

## Option Name:
[httpd_accel_surrogate_id](#httpd_accel_surrogate_id)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** visible_hostname is used if no specific ID is set.


## Suggested Config:
```plaintext

```

## Details:

	Surrogates (http://www.esi.org/architecture_spec_1.0.html)
	need an identification token to allow control targeting. Because
	a farm of surrogates may all perform the same tasks, they may share
	an identification token.

	When the surrogate is a reverse-proxy, this ID is also
	used as cdn-id for CDN-Loop detection (RFC 8586).



[Index](index#toc_httpd_accel_surrogate_id) | [Alphabetical Index](index_all#toc_httpd_accel_surrogate_id)

