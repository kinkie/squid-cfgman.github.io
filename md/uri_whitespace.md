---
title: "Squid 3.1.0 configuration directive: uri_whitespace"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure uri_whitespace
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_uri_whitespace) | [Alphabetical Index](index_all#toc_uri_whitespace)

## Option Name:
[uri_whitespace](#uri_whitespace)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** uri_whitespace strip


## Suggested Config:
```plaintext

```

## Details:

	What to do with requests that have whitespace characters in the
	URI.  Options:

	strip:  The whitespace characters are stripped out of the URL.
		This is the behavior recommended by RFC2396 and RFC3986
		for tolerant handling of generic URI.
		NOTE: This is one difference between generic URI and HTTP URLs.

	deny:   The request is denied.  The user receives an "Invalid
		Request" message.
		This is the behaviour recommended by RFC2616 for safe
		handling of HTTP request URL.

	allow:  The request is allowed and the URI is not changed.  The
		whitespace characters remain in the URI.  Note the
		whitespace is passed to redirector processes if they
		are in use.
		Note this may be considered a violation of RFC2616
		request parsing where whitespace is prohibited in the
		URL field.

	encode:	The request is allowed and the whitespace characters are
		encoded according to RFC1738.

	chop:	The request is allowed and the URI is chopped at the
		first whitespace.


	NOTE the current Squid implementation of encode and chop violates
	RFC2616 by not using a 301 redirect after altering the URL.



[Index](index#toc_uri_whitespace) | [Alphabetical Index](index_all#toc_uri_whitespace)

