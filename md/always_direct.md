---
title: "Squid 3.1.0 configuration directive: always_direct"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure always_direct
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_always_direct) | [Alphabetical Index](index_all#toc_always_direct)

## Option Name:
[always_direct](#always_direct)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Prevent any cache_peer being used for this request.


## Suggested Config:
```plaintext

```

## Details:

	Usage: always_direct allow|deny [!]aclname ...

	Here you can use ACL elements to specify requests which should
	ALWAYS be forwarded by Squid to the origin servers without using
	any peers.  For example, to always directly forward requests for
	local servers ignoring any parents or siblings you may have use
	something like:

		acl local-servers dstdomain my.domain.net
		always_direct allow local-servers

	To always forward FTP requests directly, use

		acl FTP proto FTP
		always_direct allow FTP

	NOTE: There is a similar, but opposite option named
	'never_direct'.  You need to be aware that "always_direct deny
	foo" is NOT the same thing as "never_direct allow foo".  You
	may need to use a deny rule to exclude a more-specific case of
	some other rule.  Example:

		acl local-external dstdomain external.foo.net
		acl local-servers dstdomain  .foo.net
		always_direct deny local-external
		always_direct allow local-servers

	NOTE: If your goal is to make the client forward the request
	directly to the origin server bypassing Squid then this needs
	to be done in the client configuration. Squid configuration
	can only tell Squid how Squid should fetch the object.

	NOTE: This directive is not related to caching. The replies
	is cached as usual even if you use always_direct. To not cache
	the replies see the 'cache' directive.

	This clause supports both fast and slow acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.



[Index](index#toc_always_direct) | [Alphabetical Index](index_all#toc_always_direct)

