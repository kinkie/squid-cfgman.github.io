---
title: "Squid 3.1.0 configuration directive: reply_header_access"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure reply_header_access
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_reply_header_access) | [Alphabetical Index](index_all#toc_reply_header_access)

## Option Name:
[reply_header_access](#reply_header_access)
 * **Replaces:** 
 * **Requires:** --enable-http-violations
 * **Default Value:** No limits.


## Suggested Config:
```plaintext

```

## Details:

	Usage: reply_header_access header_name allow|deny [!]aclname ...

	WARNING: Doing this VIOLATES the HTTP standard.  Enabling
	this feature could make you liable for problems which it
	causes.

	This option only applies to reply headers, i.e., from the
	server to the client.

	This is the same as request_header_access, but in the other
	direction. Please see request_header_access for detailed
	documentation.

	For example, to achieve the same behavior as the old
	'http_anonymizer standard' option, you should use:

		reply_header_access Server deny all
		reply_header_access WWW-Authenticate deny all
		reply_header_access Link deny all

	Or, to reproduce the old 'http_anonymizer paranoid' feature
	you should use:

		reply_header_access Allow allow all
		reply_header_access WWW-Authenticate allow all
		reply_header_access Proxy-Authenticate allow all
		reply_header_access Cache-Control allow all
		reply_header_access Content-Encoding allow all
		reply_header_access Content-Length allow all
		reply_header_access Content-Type allow all
		reply_header_access Date allow all
		reply_header_access Expires allow all
		reply_header_access Last-Modified allow all
		reply_header_access Location allow all
		reply_header_access Pragma allow all
		reply_header_access Content-Language allow all
		reply_header_access Retry-After allow all
		reply_header_access Title allow all
		reply_header_access Content-Disposition allow all
		reply_header_access Connection allow all
		reply_header_access All deny all

	HTTP request headers are controlled with the request_header_access directive.

	By default, all headers are allowed (no anonymizing is
	performed).



[Index](index#toc_reply_header_access) | [Alphabetical Index](index_all#toc_reply_header_access)

