---
title: "Squid 3.1.0 configuration directive: request_header_access"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure request_header_access
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_request_header_access) | [Alphabetical Index](index_all#toc_request_header_access)

## Option Name:
[request_header_access](#request_header_access)
 * **Replaces:** 
 * **Requires:** --enable-http-violations
 * **Default Value:** No limits.


## Suggested Config:
```plaintext

```

## Details:

	Usage: request_header_access header_name allow|deny [!]aclname ...

	WARNING: Doing this VIOLATES the HTTP standard.  Enabling
	this feature could make you liable for problems which it
	causes.

	This option replaces the old 'anonymize_headers' and the
	older 'http_anonymizer' option with something that is much
	more configurable. A list of ACLs for each header name allows
	removal of specific header fields under specific conditions.

	This option only applies to outgoing HTTP request headers (i.e.,
	headers sent by Squid to the next HTTP hop such as a cache peer
	or an origin server). The option has no effect during cache hit
	detection. The equivalent adaptation vectoring point in ICAP
	terminology is post-cache REQMOD.

	The option is applied to individual outgoing request header
	fields. For each request header field F, Squid uses the first
	qualifying sets of request_header_access rules:

	    1. Rules with header_name equal to F's name.
	    2. Rules with header_name 'Other', provided F's name is not
	       on the hard-coded list of commonly used HTTP header names.
	    3. Rules with header_name 'All'.

	Within that qualifying rule set, rule ACLs are checked as usual.
	If ACLs of an "allow" rule match, the header field is allowed to
	go through as is. If ACLs of a "deny" rule match, the header is
	removed and request_header_replace is then checked to identify
	if the removed header has a replacement. If no rules within the
	set have matching ACLs, the header field is left as is.

	For example, to achieve the same behavior as the old
	'http_anonymizer standard' option, you should use:

		request_header_access From deny all
		request_header_access Referer deny all
		request_header_access User-Agent deny all

	Or, to reproduce the old 'http_anonymizer paranoid' feature
	you should use:

		request_header_access Authorization allow all
		request_header_access Proxy-Authorization allow all
		request_header_access Cache-Control allow all
		request_header_access Content-Length allow all
		request_header_access Content-Type allow all
		request_header_access Date allow all
		request_header_access Host allow all
		request_header_access If-Modified-Since allow all
		request_header_access Pragma allow all
		request_header_access Accept allow all
		request_header_access Accept-Charset allow all
		request_header_access Accept-Encoding allow all
		request_header_access Accept-Language allow all
		request_header_access Connection allow all
		request_header_access All deny all

	HTTP reply headers are controlled with the reply_header_access directive.

	By default, all headers are allowed (no anonymizing is performed).



[Index](index#toc_request_header_access) | [Alphabetical Index](index_all#toc_request_header_access)

