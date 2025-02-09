---
title: "Squid 3.1.0 configuration directive: spoof_client_ip"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure spoof_client_ip
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_spoof_client_ip) | [Alphabetical Index](index_all#toc_spoof_client_ip)

## Option Name:
[spoof_client_ip](#spoof_client_ip)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Allow spoofing on all TPROXY traffic.


## Suggested Config:
```plaintext

```

## Details:

	Control client IP address spoofing of TPROXY traffic based on
	defined access lists.

	spoof_client_ip allow|deny [!]aclname ...

	If there are no "spoof_client_ip" lines present, the default
	is to "allow" spoofing of any suitable request.

	Note that the cache_peer "no-tproxy" option overrides this ACL.

	This clause supports fast acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.



[Index](index#toc_spoof_client_ip) | [Alphabetical Index](index_all#toc_spoof_client_ip)

