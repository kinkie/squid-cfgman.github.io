---
title: "Squid 3.1.0 configuration directive: collapsed_forwarding_access"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure collapsed_forwarding_access
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_collapsed_forwarding_access) | [Alphabetical Index](index_all#toc_collapsed_forwarding_access)

## Option Name:
[collapsed_forwarding_access](#collapsed_forwarding_access)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Requests may be collapsed if collapsed_forwarding is on.


## Suggested Config:
```plaintext

```

## Details:

	Use this directive to restrict collapsed forwarding to a subset of
	eligible requests. The directive is checked for regular HTTP
	requests, internal revalidation requests, and HTCP/ICP requests.

		collapsed_forwarding_access allow|deny [!]aclname ...

	This directive cannot force collapsing. It has no effect on
	collapsing unless collapsed_forwarding is 'on', and all other
	collapsing preconditions are satisfied.

	* A denied request will not collapse, and future transactions will
	  not collapse on it (even if they are allowed to collapse).

	* An allowed request may collapse, or future transactions may
	  collapse on it (provided they are allowed to collapse).

	This directive is evaluated before receiving HTTP response headers
	and without access to Squid-to-peer connection (if any).

	Only fast ACLs are supported.

	See also: collapsed_forwarding.



[Index](index#toc_collapsed_forwarding_access) | [Alphabetical Index](index_all#toc_collapsed_forwarding_access)

