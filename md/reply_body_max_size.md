---
title: "Squid 3.1.0 configuration directive: reply_body_max_size"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure reply_body_max_size
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_reply_body_max_size) | [Alphabetical Index](index_all#toc_reply_body_max_size)

## Option Name:
[reply_body_max_size](#reply_body_max_size)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** No limit is applied.


## Suggested Config:
```plaintext

```

## Details:

	This option specifies the maximum size of a reply body. It can be
	used to prevent users from downloading very large files, such as
	MP3's and movies. When the reply headers are received, the
	reply_body_max_size lines are processed, and the first line where
	all (if any) listed ACLs are true is used as the maximum body size
	for this reply.

	This size is checked twice. First when we get the reply headers,
	we check the content-length value.  If the content length value exists
	and is larger than the allowed size, the request is denied and the
	user receives an error message that says "the request or reply
	is too large." If there is no content-length, and the reply
	size exceeds this limit, the client's connection is just closed
	and they will receive a partial reply.

	WARNING: downstream caches probably can not detect a partial reply
	if there is no content-length header, so they will cache
	partial responses and give them out as hits.  You should NOT
	use this option if you have downstream caches.

	WARNING: A maximum size smaller than the size of squid's error messages
	will cause an infinite loop and crash squid. Ensure that the smallest
	non-zero value you use is greater that the maximum header size plus
	the size of your largest error page.

	If you set this parameter none (the default), there will be
	no limit imposed.

	Configuration Format is:
		reply_body_max_size SIZE UNITS [acl ...]
	ie.
		reply_body_max_size 10 MB




[Index](index#toc_reply_body_max_size) | [Alphabetical Index](index_all#toc_reply_body_max_size)

