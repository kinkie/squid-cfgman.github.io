---
title: "Squid 3.1.0 configuration directive: adapted_http_access"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure adapted_http_access
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_adapted_http_access) | [Alphabetical Index](index_all#toc_adapted_http_access)

## Option Name:
[adapted_http_access](#adapted_http_access)
 * **Replaces:** http_access2
 * **Requires:** 
 * **Default Value:** Allow, unless rules exist in squid.conf.


## Suggested Config:
```plaintext

```

## Details:

	Allowing or Denying access based on defined access lists

	Essentially identical to http_access, but runs after redirectors
	and ICAP/eCAP adaptation. Allowing access control based on their
	output.

	If not set then only http_access is used.



[Index](index#toc_adapted_http_access) | [Alphabetical Index](index_all#toc_adapted_http_access)

