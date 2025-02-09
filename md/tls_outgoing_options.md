---
title: "Squid 3.1.0 configuration directive: tls_outgoing_options"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure tls_outgoing_options
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_tls_outgoing_options) | [Alphabetical Index](index_all#toc_tls_outgoing_options)

## Option Name:
[tls_outgoing_options](#tls_outgoing_options)
 * **Replaces:** 
 * **Requires:** --with-gnutls or --with-openssl
 * **Default Value:** tls_outgoing_options min-version=1.0


## Suggested Config:
```plaintext

```

## Details:

	disable		Do not support https:// URLs.

	cert=/path/to/client/certificate
			A client X.509 certificate to use when connecting.

	key=/path/to/client/private_key
			The private key corresponding to the cert= above.

			If key= is not specified cert= is assumed to
			reference a PEM file containing both the certificate
			and private key.

	cipher=...	The list of valid TLS ciphers to use.

	min-version=1.N
			The minimum TLS protocol version to permit.
			To control SSLv3 use the options= parameter.
			Supported Values: 1.0 (default), 1.1, 1.2, 1.3

	options=...	Specify various TLS/SSL implementation options.

			OpenSSL options most important are:

			    NO_SSLv3    Disallow the use of SSLv3

			    SINGLE_DH_USE
				      Always create a new key when using
				      temporary/ephemeral DH key exchanges

			    NO_TICKET
				      Disable use of RFC5077 session tickets.
				      Some servers may have problems
				      understanding the TLS extension due
				      to ambiguous specification in RFC4507.

			    ALL       Enable various bug workarounds
				      suggested as "harmless" by OpenSSL
				      Be warned that this reduces SSL/TLS
				      strength to some attacks.

				See the OpenSSL SSL_CTX_set_options documentation
				for a more complete list.

			GnuTLS options most important are:

			    %NO_TICKETS
				      Disable use of RFC5077 session tickets.
				      Some servers may have problems
				      understanding the TLS extension due
				      to ambiguous specification in RFC4507.

				See the GnuTLS Priority Strings documentation
				for a more complete list.
				http://www.gnutls.org/manual/gnutls.html#Priority-Strings


	cafile=		PEM file containing CA certificates to use when verifying
			the peer certificate. May be repeated to load multiple files.

	capath=		A directory containing additional CA certificates to
			use when verifying the peer certificate.
			Requires OpenSSL or LibreSSL.

	crlfile=... 	A certificate revocation list file to use when
			verifying the peer certificate.

	flags=...	Specify various flags modifying the TLS implementation:

			DONT_VERIFY_PEER
				Accept certificates even if they fail to
				verify.
			DONT_VERIFY_DOMAIN
				Don't verify the peer certificate
				matches the server name

	default-ca[=off]
			Whether to use the system Trusted CAs. Default is ON.

	domain= 	The peer name as advertised in its certificate.
			Used for verifying the correctness of the received peer
			certificate. If not specified the peer hostname will be
			used.



[Index](index#toc_tls_outgoing_options) | [Alphabetical Index](index_all#toc_tls_outgoing_options)

