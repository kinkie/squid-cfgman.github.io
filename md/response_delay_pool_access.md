---
title: "Squid 3.1.0 configuration directive: response_delay_pool_access"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure response_delay_pool_access
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_response_delay_pool_access) | [Alphabetical Index](index_all#toc_response_delay_pool_access)

## Option Name:
[response_delay_pool_access](#response_delay_pool_access)
 * **Replaces:** 
 * **Requires:** --enable-delay-pools
 * **Default Value:** Deny use of the pool, unless allow rules exist in squid.conf for the pool.


## Suggested Config:
```plaintext

```

## Details:

	Determines whether a specific named response delay pool is used
	for the transaction. The syntax for this directive is:

	response_delay_pool_access pool_name allow|deny acl_name

	All response_delay_pool_access options are checked in the order
	they appear in this configuration file. The first rule with a
	matching ACL wins. If (and only if) an "allow" rule won, Squid
	assigns the response to the corresponding named delay pool.



[Index](index#toc_response_delay_pool_access) | [Alphabetical Index](index_all#toc_response_delay_pool_access)

