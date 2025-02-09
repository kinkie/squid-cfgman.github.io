---
title: "Squid 3.1.0 configuration directive: allow_underscore"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure allow_underscore
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_allow_underscore) | [Alphabetical Index](index_all#toc_allow_underscore)

## Option Name:
[allow_underscore](#allow_underscore)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** allow_underscore on


## Suggested Config:
```plaintext

```

## Details:

	Underscore characters is not strictly allowed in Internet hostnames
	but nevertheless used by many sites. Set this to off if you want
	Squid to be strict about the standard.
	This check is performed only when check_hostnames is set to on.



[Index](index#toc_allow_underscore) | [Alphabetical Index](index_all#toc_allow_underscore)

