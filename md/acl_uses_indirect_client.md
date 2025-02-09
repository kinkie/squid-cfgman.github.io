---
title: "Squid 3.1.0 configuration directive: acl_uses_indirect_client"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure acl_uses_indirect_client
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_acl_uses_indirect_client) | [Alphabetical Index](index_all#toc_acl_uses_indirect_client)

## Option Name:
[acl_uses_indirect_client](#acl_uses_indirect_client)
 * **Replaces:** 
 * **Requires:** --enable-follow-x-forwarded-for
 * **Default Value:** acl_uses_indirect_client on


## Suggested Config:
```plaintext

```

## Details:

	Controls whether the indirect client address
	(see follow_x_forwarded_for) is used instead of the
	direct client address in acl matching.

	NOTE: maxconn ACL considers direct TCP links and indirect
	      clients will always have zero. So no match.



[Index](index#toc_acl_uses_indirect_client) | [Alphabetical Index](index_all#toc_acl_uses_indirect_client)

