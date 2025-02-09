---
title: "Squid 3.1.0 configuration directive: sslproxy_cert_adapt"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure sslproxy_cert_adapt
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_sslproxy_cert_adapt) | [Alphabetical Index](index_all#toc_sslproxy_cert_adapt)

## Option Name:
[sslproxy_cert_adapt](#sslproxy_cert_adapt)
 * **Replaces:** 
 * **Requires:** --with-openssl
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:


	sslproxy_cert_adapt &lt;adaptation algorithm&gt; acl ...

	The following certificate adaptation algorithms are supported:

	   setValidAfter
		Sets the "Not After" property to the "Not After" property of
		the CA certificate used to sign generated certificates.

	   setValidBefore
		Sets the "Not Before" property to the "Not Before" property of
		the CA certificate used to sign generated certificates.

	   setCommonName or setCommonName{CN}
		Sets Subject.CN property to the host name specified as a
		CN parameter or, if no explicit CN parameter was specified,
		extracted from the CONNECT request. It is a misconfiguration
		to use setCommonName without an explicit parameter for
		intercepted or tproxied SSL connections.

	This clause only supports fast acl types.

	Squid first groups sslproxy_cert_adapt options by adaptation algorithm.
	Within a group, when sslproxy_cert_adapt acl(s) match, Squid uses the
	corresponding adaptation algorithm to generate the certificate and
	ignores all subsequent sslproxy_cert_adapt options in that algorithm's
	group (i.e., the first match wins within each algorithm group). If no
	acl(s) match, the default mimicking action takes place.

	WARNING: SQUID_X509_V_ERR_DOMAIN_MISMATCH and ssl:certDomainMismatch can
	be used with sslproxy_cert_adapt, but if and only if Squid is bumping a
	CONNECT request that carries a domain name. In all other cases (CONNECT
	to an IP address or an intercepted SSL connection), Squid cannot detect
	the domain mismatch at certificate generation time when
	bump-server-first is used.



[Index](index#toc_sslproxy_cert_adapt) | [Alphabetical Index](index_all#toc_sslproxy_cert_adapt)

