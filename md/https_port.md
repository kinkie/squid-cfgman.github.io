---
title: "Squid 3.1.0 configuration directive: https_port"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure https_port
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_https_port) | [Alphabetical Index](index_all#toc_https_port)

## Option Name:
[https_port](#https_port)
 * **Replaces:** 
 * **Requires:** --with-gnutls or --with-openssl
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	Usage:  [ip:]port [mode] tls-cert=certificate.pem [options]

	The socket address where Squid will listen for client requests made
	over TLS or SSL connections. Commonly referred to as HTTPS.

	This is most useful for situations where you are running squid in
	accelerator mode and you want to do the TLS work at the accelerator
	level.

	You may specify multiple socket addresses on multiple lines,
	each with their own certificate and/or options.

	The tls-cert= option is mandatory on HTTPS ports.

	See http_port for a list of modes and options.
	Not all http_port options are available for https_port.
	Among the unavalable options:
	- require-proxy-header



[Index](index#toc_https_port) | [Alphabetical Index](index_all#toc_https_port)

