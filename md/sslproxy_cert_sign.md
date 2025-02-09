---
title: "Squid 3.1.0 configuration directive: sslproxy_cert_sign"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure sslproxy_cert_sign
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_sslproxy_cert_sign) | [Alphabetical Index](index_all#toc_sslproxy_cert_sign)

## Option Name:
[sslproxy_cert_sign](#sslproxy_cert_sign)
 * **Replaces:** 
 * **Requires:** --with-openssl
 * **Default Value:** none
sslproxy_cert_sign signUntrusted ssl::certUntrusted
sslproxy_cert_sign signSelf ssl::certSelfSigned
sslproxy_cert_sign signTrusted all


## Suggested Config:
```plaintext

```

## Details:


        sslproxy_cert_sign &lt;signing algorithm&gt; acl ...

        The following certificate signing algorithms are supported:

	   signTrusted
		Sign using the configured CA certificate which is usually
		placed in and trusted by end-user browsers. This is the
		default for trusted origin server certificates.

	   signUntrusted
		Sign to guarantee an X509_V_ERR_CERT_UNTRUSTED browser error.
		This is the default for untrusted origin server certificates
		that are not self-signed (see ssl::certUntrusted).

	   signSelf
		Sign using a self-signed certificate with the right CN to
		generate a X509_V_ERR_DEPTH_ZERO_SELF_SIGNED_CERT error in the
		browser. This is the default for self-signed origin server
		certificates (see ssl::certSelfSigned).

	This clause only supports fast acl types.

	When sslproxy_cert_sign acl(s) match, Squid uses the corresponding
	signing algorithm to generate the certificate and ignores all
	subsequent sslproxy_cert_sign options (the first match wins). If no
	acl(s) match, the default signing algorithm is determined by errors
	detected when obtaining and validating the origin server certificate.

	WARNING: SQUID_X509_V_ERR_DOMAIN_MISMATCH and ssl:certDomainMismatch can
	be used with sslproxy_cert_adapt, but if and only if Squid is bumping a
	CONNECT request that carries a domain name. In all other cases (CONNECT
	to an IP address or an intercepted SSL connection), Squid cannot detect
	the domain mismatch at certificate generation time when
	bump-server-first is used.



[Index](index#toc_sslproxy_cert_sign) | [Alphabetical Index](index_all#toc_sslproxy_cert_sign)

