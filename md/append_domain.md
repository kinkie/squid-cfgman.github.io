---
title: "Squid 3.1.0 configuration directive: append_domain"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure append_domain
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_append_domain) | [Alphabetical Index](index_all#toc_append_domain)

## Option Name:
[append_domain](#append_domain)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Use operating system definitions


## Suggested Config:
```plaintext

```

## Details:

	Appends local domain name to hostnames without any dots in
	them.  append_domain must begin with a period.

	Be warned there are now Internet names with no dots in
	them using only top-domain names, so setting this may
	cause some Internet sites to become unavailable.

Example:
 append_domain .yourdomain.com



[Index](index#toc_append_domain) | [Alphabetical Index](index_all#toc_append_domain)

