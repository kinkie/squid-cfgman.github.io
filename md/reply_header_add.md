---
title: "Squid 3.1.0 configuration directive: reply_header_add"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure reply_header_add
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_reply_header_add) | [Alphabetical Index](index_all#toc_reply_header_add)

## Option Name:
[reply_header_add](#reply_header_add)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	Usage:   reply_header_add field-name field-value [ acl ... ]
	Example: reply_header_add X-Client-CA "CA=%ssl::&gt;cert_issuer" all

	This option adds header fields to outgoing HTTP responses (i.e., response
	headers delivered by Squid to the client). This option has no effect on
	cache hit detection. The equivalent adaptation vectoring point in
	ICAP terminology is post-cache RESPMOD. This option does not apply to
	successful CONNECT replies.

	Field-name is a token specifying an HTTP header name. If a
	standard HTTP header name is used, Squid does not check whether
	the new header conflicts with any existing headers or violates
	HTTP rules. If the response to be modified already contains a
	field with the same name, the old field is preserved but the
	header field values are not merged.

	Field-value is either a token or a quoted string. If quoted
	string format is used, then the surrounding quotes are removed
	while escape sequences and %macros are processed.

	One or more Squid ACLs may be specified to restrict header
	injection to matching responses. As always in squid.conf, all
	ACLs in the ACL list must be satisfied for the insertion to
	happen. The reply_header_add option supports fast ACLs only.

	See also: request_header_add.



[Index](index#toc_reply_header_add) | [Alphabetical Index](index_all#toc_reply_header_add)

