---
title: "Squid 3.1.0 configuration directive: broken_posts"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure broken_posts
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_broken_posts) | [Alphabetical Index](index_all#toc_broken_posts)

## Option Name:
[broken_posts](#broken_posts)
 * **Replaces:** 
 * **Requires:** --enable-http-violations
 * **Default Value:** Obey RFC 2616.


## Suggested Config:
```plaintext

```

## Details:

	A list of ACL elements which, if matched, causes Squid to send
	an extra CRLF pair after the body of a PUT/POST request.

	Some HTTP servers has broken implementations of PUT/POST,
	and rely on an extra CRLF pair sent by some WWW clients.

	Quote from RFC2616 section 4.1 on this matter:

	  Note: certain buggy HTTP/1.0 client implementations generate an
	  extra CRLF's after a POST request. To restate what is explicitly
	  forbidden by the BNF, an HTTP/1.1 client must not preface or follow
	  a request with an extra CRLF.

	This clause only supports fast acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.

Example:
 acl buggy_server url_regex ^http://....
 broken_posts allow buggy_server



[Index](index#toc_broken_posts) | [Alphabetical Index](index_all#toc_broken_posts)

