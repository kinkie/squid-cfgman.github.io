---
title: "Squid 3.1.0 configuration directive: htcp_clr_access"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure htcp_clr_access
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_htcp_clr_access) | [Alphabetical Index](index_all#toc_htcp_clr_access)

## Option Name:
[htcp_clr_access](#htcp_clr_access)
 * **Replaces:** 
 * **Requires:** --enable-htcp
 * **Default Value:** Deny, unless rules exist in squid.conf.


## Suggested Config:
```plaintext
# Allow HTCP CLR requests from trusted peers

```

## Details:

	Allowing or Denying access to purge content using HTCP based
	on defined access lists.
	See htcp_access for details on general HTCP access control.

	htcp_clr_access  allow|deny [!]aclname ...

	This clause only supports fast acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.

acl htcp_clr_peer src 192.0.2.2 2001:DB8::2
htcp_clr_access allow htcp_clr_peer
htcp_clr_access deny all



[Index](index#toc_htcp_clr_access) | [Alphabetical Index](index_all#toc_htcp_clr_access)

