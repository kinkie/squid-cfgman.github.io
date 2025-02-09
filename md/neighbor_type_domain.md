---
title: "Squid 3.1.0 configuration directive: neighbor_type_domain"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure neighbor_type_domain
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_neighbor_type_domain) | [Alphabetical Index](index_all#toc_neighbor_type_domain)

## Option Name:
[neighbor_type_domain](#neighbor_type_domain)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** The peer type from cache_peer directive is used for all requests to that peer.


## Suggested Config:
```plaintext

```

## Details:

	Modify the cache_peer neighbor type when passing requests
	about specific domains to the peer.

	Usage:
		neighbor_type_domain peer-name parent|sibling domain...

	For the required peer-name parameter, use either the value of the
	cache_peer name=value parameter or, if name=value is missing, the
	cache_peer hostname parameter.

	For example:
		cache_peer foo.example.com parent 3128 3130
		neighbor_type_domain foo.example.com sibling .au .de

	The above configuration treats all requests to foo.example.com as a
	parent proxy unless the request is for a .au or .de ccTLD domain name.



[Index](index#toc_neighbor_type_domain) | [Alphabetical Index](index_all#toc_neighbor_type_domain)

