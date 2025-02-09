---
title: "Squid 3.1.0 configuration directive: sslproxy_foreign_intermediate_certs"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure sslproxy_foreign_intermediate_certs
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_sslproxy_foreign_intermediate_certs) | [Alphabetical Index](index_all#toc_sslproxy_foreign_intermediate_certs)

## Option Name:
[sslproxy_foreign_intermediate_certs](#sslproxy_foreign_intermediate_certs)
 * **Replaces:** 
 * **Requires:** --with-openssl
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	Many origin servers fail to send their full server certificate
	chain for verification, assuming the client already has or can
	easily locate any missing intermediate certificates.

	Squid uses the certificates from the specified file to fill in
	these missing chains when trying to validate origin server
	certificate chains.

	The file is expected to contain zero or more PEM-encoded
	intermediate certificates. These certificates are not treated
	as trusted root certificates, and any self-signed certificate in
	this file will be ignored.



[Index](index#toc_sslproxy_foreign_intermediate_certs) | [Alphabetical Index](index_all#toc_sslproxy_foreign_intermediate_certs)

