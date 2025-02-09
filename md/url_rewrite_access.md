---
title: "Squid 3.1.0 configuration directive: url_rewrite_access"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure url_rewrite_access
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_url_rewrite_access) | [Alphabetical Index](index_all#toc_url_rewrite_access)

## Option Name:
[url_rewrite_access](#url_rewrite_access)
 * **Replaces:** redirector_access
 * **Requires:** 
 * **Default Value:** Allow, unless rules exist in squid.conf.


## Suggested Config:
```plaintext

```

## Details:

	If defined, this access list specifies which requests are
	sent to the redirector processes.

	This clause supports both fast and slow acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.



[Index](index#toc_url_rewrite_access) | [Alphabetical Index](index_all#toc_url_rewrite_access)

