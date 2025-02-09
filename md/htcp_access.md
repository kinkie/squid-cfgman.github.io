---
title: "Squid 3.1.0 configuration directive: htcp_access"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure htcp_access
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_htcp_access) | [Alphabetical Index](index_all#toc_htcp_access)

## Option Name:
[htcp_access](#htcp_access)
 * **Replaces:** 
 * **Requires:** --enable-htcp
 * **Default Value:** Deny, unless rules exist in squid.conf.


## Suggested Config:
```plaintext
# Allow HTCP queries from local networks only
#htcp_access allow localnet
#htcp_access deny all

```

## Details:

	Allowing or Denying access to the HTCP port based on defined
	access lists

	htcp_access  allow|deny [!]aclname ...

	See also htcp_clr_access for details on access control for
	cache purge (CLR) HTCP messages.

	NOTE: The default if no htcp_access lines are present is to
	deny all traffic. This default may cause problems with peers
	using the htcp option.

	This clause only supports fast acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.




[Index](index#toc_htcp_access) | [Alphabetical Index](index_all#toc_htcp_access)

