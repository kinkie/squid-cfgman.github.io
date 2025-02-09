---
title: "Squid 3.1.0 configuration directive: authenticate_ip_ttl"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure authenticate_ip_ttl
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_authenticate_ip_ttl) | [Alphabetical Index](index_all#toc_authenticate_ip_ttl)

## Option Name:
[authenticate_ip_ttl](#authenticate_ip_ttl)
 * **Replaces:** 
 * **Requires:** --enable-auth
 * **Default Value:** authenticate_ip_ttl 1 second


## Suggested Config:
```plaintext

```

## Details:

	If you use proxy authentication and the 'max_user_ip' ACL,
	this directive controls how long Squid remembers the IP
	addresses associated with each user.  Use a small value
	(e.g., 60 seconds) if your users might change addresses
	quickly, as is the case with dialup.   You might be safe
	using a larger value (e.g., 2 hours) in a corporate LAN
	environment with relatively static address assignments.



[Index](index#toc_authenticate_ip_ttl) | [Alphabetical Index](index_all#toc_authenticate_ip_ttl)

