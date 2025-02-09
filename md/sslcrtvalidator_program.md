---
title: "Squid 3.1.0 configuration directive: sslcrtvalidator_program"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure sslcrtvalidator_program
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_sslcrtvalidator_program) | [Alphabetical Index](index_all#toc_sslcrtvalidator_program)

## Option Name:
[sslcrtvalidator_program](#sslcrtvalidator_program)
 * **Replaces:** 
 * **Requires:** --with-openssl
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	Specify the location and options of the executable for ssl_crt_validator
	process.

	Usage:  sslcrtvalidator_program [ttl=...] [cache=n] path ...

	Options:

	cache=bytes
		Limits how much memory Squid can use for caching validator
		responses. The default is 67108864 (i.e. 64 MB).
		Reconfiguration purges any excess entries. To disable caching,
		use cache=0. Currently, cache entry sizes are seriously
		underestimated. Even with that bug, a typical estimate for a
		single cache entry size would be at least a few kilobytes (the
		size of the PEM certificates sent to the validator).

	ttl=&lt;seconds|"infinity"&gt;
		Approximately how long Squid may reuse the validator results
		for. The default is 3600 (i.e. 1 hour). Using ttl=infinity
		disables TTL checks. Reconfiguration does not affect TTLs of
		the already cached entries. To disable caching, use zero cache
		size, not zero TTL -- zero TTL allows reuse for the remainder
		of the second when the result was cached.



[Index](index#toc_sslcrtvalidator_program) | [Alphabetical Index](index_all#toc_sslcrtvalidator_program)

