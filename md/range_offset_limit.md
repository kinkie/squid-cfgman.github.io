---
title: "Squid 3.1.0 configuration directive: range_offset_limit"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure range_offset_limit
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_range_offset_limit) | [Alphabetical Index](index_all#toc_range_offset_limit)

## Option Name:
[range_offset_limit](#range_offset_limit)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	usage: (size) [units] [[!]aclname]

	Sets an upper limit on how far (number of bytes) into the file
	a Range request	may be to cause Squid to prefetch the whole file.
	If beyond this limit, Squid forwards the Range request as it is and
	the result is NOT cached.

	This is to stop a far ahead range request (lets say start at 17MB)
	from making Squid fetch the whole object up to that point before
	sending anything to the client.

	Multiple range_offset_limit lines may be specified, and they will
	be searched from top to bottom on each request until a match is found.
	The first match found will be used.  If no line matches a request, the
	default limit of 0 bytes will be used.

	'size' is the limit specified as a number of units.

	'units' specifies whether to use bytes, KB, MB, etc.
	If no units are specified bytes are assumed.

	A size of 0 causes Squid to never fetch more than the
	client requested. (default)

	A size of 'none' causes Squid to always fetch the object from the
	beginning so it may cache the result. (2.0 style)

	'aclname' is the name of a defined ACL.

	NP: Using 'none' as the byte value here will override any quick_abort settings
	    that may otherwise apply to the range request. The range request will
	    be fully fetched from start to finish regardless of the client
	    actions. This affects bandwidth usage.



[Index](index#toc_range_offset_limit) | [Alphabetical Index](index_all#toc_range_offset_limit)

