---
title: "Squid 3.1.0 configuration directive: sslcrtd_program"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure sslcrtd_program
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_sslcrtd_program) | [Alphabetical Index](index_all#toc_sslcrtd_program)

## Option Name:
[sslcrtd_program](#sslcrtd_program)
 * **Replaces:** 
 * **Requires:** --enable-ssl-crtd
 * **Default Value:** sslcrtd_program /usr/local/squid/libexec/security_file_certgen -s /usr/local/squid/var/cache/squid/ssl_db -M 4MB


## Suggested Config:
```plaintext

```

## Details:

	Specify the location and options of the executable for certificate
	generator.

	/usr/local/squid/libexec/security_file_certgen program can use a disk cache to improve response
	times on repeated requests. To enable caching, specify -s and -M
	parameters. If those parameters are not given, the program generates
	a new certificate on every request.

	For more information use:
		/usr/local/squid/libexec/security_file_certgen -h



[Index](index#toc_sslcrtd_program) | [Alphabetical Index](index_all#toc_sslcrtd_program)

