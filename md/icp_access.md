---
title: "Squid 3.1.0 configuration directive: icp_access"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure icp_access
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_icp_access) | [Alphabetical Index](index_all#toc_icp_access)

## Option Name:
[icp_access](#icp_access)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Deny, unless rules exist in squid.conf.


## Suggested Config:
```plaintext
# Allow ICP queries from local networks only
#icp_access allow localnet
#icp_access deny all

```

## Details:

	Allowing or Denying access to the ICP port based on defined
	access lists

	icp_access  allow|deny [!]aclname ...

	NOTE: The default if no icp_access lines are present is to
	deny all traffic. This default may cause problems with peers
	using ICP.

	This clause only supports fast acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.




[Index](index#toc_icp_access) | [Alphabetical Index](index_all#toc_icp_access)

