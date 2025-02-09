---
title: "Squid 3.1.0 configuration directive: sslproxy_cert_sign_hash"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure sslproxy_cert_sign_hash
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_sslproxy_cert_sign_hash) | [Alphabetical Index](index_all#toc_sslproxy_cert_sign_hash)

## Option Name:
[sslproxy_cert_sign_hash](#sslproxy_cert_sign_hash)
 * **Replaces:** 
 * **Requires:** --with-openssl
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	Sets the hashing algorithm to use when signing generated certificates.
	Valid algorithm names depend on the OpenSSL library used. The following
	names are usually available: sha1, sha256, sha512, and md5. Please see
	your OpenSSL library manual for the available hashes. By default, Squids
	that support this option use sha256 hashes.

	Squid does not forcefully purge cached certificates that were generated
	with an algorithm other than the currently configured one. They remain
	in the cache, subject to the regular cache eviction policy, and become
	useful if the algorithm changes again.



[Index](index#toc_sslproxy_cert_sign_hash) | [Alphabetical Index](index_all#toc_sslproxy_cert_sign_hash)

