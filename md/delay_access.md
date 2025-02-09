---
title: "Squid 3.1.0 configuration directive: delay_access"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure delay_access
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_delay_access) | [Alphabetical Index](index_all#toc_delay_access)

## Option Name:
[delay_access](#delay_access)
 * **Replaces:** 
 * **Requires:** --enable-delay-pools
 * **Default Value:** Deny using the pool, unless allow rules exist in squid.conf for the pool.


## Suggested Config:
```plaintext

```

## Details:

	This is used to determine which delay pool a request falls into.

	delay_access is sorted per pool and the matching starts with pool 1,
	then pool 2, ..., and finally pool N. The first delay pool where the
	request is allowed is selected for the request. If it does not allow
	the request to any pool then the request is not delayed (default).

	For example, if you want some_big_clients in delay
	pool 1 and lotsa_little_clients in delay pool 2:

		delay_access 1 allow some_big_clients
		delay_access 1 deny all
		delay_access 2 allow lotsa_little_clients
		delay_access 2 deny all
		delay_access 3 allow authenticated_clients

	See also delay_parameters and delay_class.




[Index](index#toc_delay_access) | [Alphabetical Index](index_all#toc_delay_access)

