---
title: "Squid 3.1.0 configuration directive: client_delay_access"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure client_delay_access
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_client_delay_access) | [Alphabetical Index](index_all#toc_client_delay_access)

## Option Name:
[client_delay_access](#client_delay_access)
 * **Replaces:** 
 * **Requires:** --enable-delay-pools
 * **Default Value:** Deny use of the pool, unless allow rules exist in squid.conf for the pool.


## Suggested Config:
```plaintext

```

## Details:

	This option determines the client-side delay pool for the
	request:

	    client_delay_access pool_ID allow|deny acl_name

	All client_delay_access options are checked in their pool ID
	order, starting with pool 1. The first checked pool with allowed
	request is selected for the request. If no ACL matches or there
	are no client_delay_access options, the request bandwidth is not
	limited.

	The ACL-selected pool is then used to find the
	client_delay_parameters for the request. Client-side pools are
	not used to aggregate clients. Clients are always aggregated
	based on their source IP addresses (one bucket per source IP).

	This clause only supports fast acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.
	Additionally, only the client TCP connection details are available.
	ACLs testing HTTP properties will not work.

	Please see delay_access for more examples.

	Example:
		client_delay_access 1 allow low_rate_network
		client_delay_access 2 allow vips_network


	See also client_delay_parameters and client_delay_pools.



[Index](index#toc_client_delay_access) | [Alphabetical Index](index_all#toc_client_delay_access)

