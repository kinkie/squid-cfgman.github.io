---
title: "Squid 3.1.0 configuration directive: http_accel_surrogate_remote"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure http_accel_surrogate_remote
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_http_accel_surrogate_remote) | [Alphabetical Index](index_all#toc_http_accel_surrogate_remote)

## Option Name:
[http_accel_surrogate_remote](#http_accel_surrogate_remote)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** http_accel_surrogate_remote off


## Suggested Config:
```plaintext

```

## Details:

	Remote surrogates (such as those in a CDN) honour the header
	"Surrogate-Control: no-store-remote".

	Set this to on to have squid behave as a remote surrogate.



[Index](index#toc_http_accel_surrogate_remote) | [Alphabetical Index](index_all#toc_http_accel_surrogate_remote)

