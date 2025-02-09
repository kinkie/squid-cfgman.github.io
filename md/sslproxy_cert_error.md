---
title: "Squid 3.1.0 configuration directive: sslproxy_cert_error"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure sslproxy_cert_error
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_sslproxy_cert_error) | [Alphabetical Index](index_all#toc_sslproxy_cert_error)

## Option Name:
[sslproxy_cert_error](#sslproxy_cert_error)
 * **Replaces:** 
 * **Requires:** --with-openssl
 * **Default Value:** Server certificate errors terminate the transaction.


## Suggested Config:
```plaintext

```

## Details:

	Use this ACL to bypass server certificate validation errors.

	For example, the following lines will bypass all validation errors
	when talking to servers for example.com. All other
	validation errors will result in ERR_SECURE_CONNECT_FAIL error.

		acl BrokenButTrustedServers dstdomain example.com
		sslproxy_cert_error allow BrokenButTrustedServers
		sslproxy_cert_error deny all

	This clause only supports fast acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.
	Using slow acl types may result in server crashes

	Without this option, all server certificate validation errors
	terminate the transaction to protect Squid and the client.

	SQUID_X509_V_ERR_INFINITE_VALIDATION error cannot be bypassed
	but should not happen unless your OpenSSL library is buggy.

	SECURITY WARNING:
		Bypassing validation errors is dangerous because an
		error usually implies that the server cannot be trusted
		and the connection may be insecure.

	See also: sslproxy_flags and DONT_VERIFY_PEER.



[Index](index#toc_sslproxy_cert_error) | [Alphabetical Index](index_all#toc_sslproxy_cert_error)

