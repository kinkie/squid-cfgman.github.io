---
title: "Squid 3.1.0 configuration directive: negative_ttl"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure negative_ttl
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_negative_ttl) | [Alphabetical Index](index_all#toc_negative_ttl)

## Option Name:
[negative_ttl](#negative_ttl)
 * **Replaces:** 
 * **Requires:** --enable-http-violations
 * **Default Value:** negative_ttl 0 seconds


## Suggested Config:
```plaintext

```

## Details:

	Set the Default Time-to-Live (TTL) for failed requests.
	Certain types of failures (such as "connection refused" and
	"404 Not Found") are able to be negatively-cached for a short time.
	Modern web servers should provide Expires: header, however if they
	do not this can provide a minimum TTL.
	The default is not to cache errors with unknown expiry details.

	Note that this is different from negative caching of DNS lookups.

	WARNING: Doing this VIOLATES the HTTP standard.  Enabling
	this feature could make you liable for problems which it
	causes.



[Index](index#toc_negative_ttl) | [Alphabetical Index](index_all#toc_negative_ttl)

