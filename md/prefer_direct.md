---
title: "Squid 3.1.0 configuration directive: prefer_direct"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure prefer_direct
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_prefer_direct) | [Alphabetical Index](index_all#toc_prefer_direct)

## Option Name:
[prefer_direct](#prefer_direct)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** prefer_direct off


## Suggested Config:
```plaintext

```

## Details:

	Normally Squid tries to use parents for most requests. If you for some
	reason like it to first try going direct and only use a parent if
	going direct fails set this to on.

	By combining nonhierarchical_direct off and prefer_direct on you
	can set up Squid to use a parent as a backup path if going direct
	fails.

	Note: If you want Squid to use parents for all requests see
	the never_direct directive. prefer_direct only modifies how Squid
	acts on cacheable requests.



[Index](index#toc_prefer_direct) | [Alphabetical Index](index_all#toc_prefer_direct)

