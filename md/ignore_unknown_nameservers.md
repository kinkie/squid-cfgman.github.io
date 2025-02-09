---
title: "Squid 3.1.0 configuration directive: ignore_unknown_nameservers"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure ignore_unknown_nameservers
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_ignore_unknown_nameservers) | [Alphabetical Index](index_all#toc_ignore_unknown_nameservers)

## Option Name:
[ignore_unknown_nameservers](#ignore_unknown_nameservers)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** ignore_unknown_nameservers on


## Suggested Config:
```plaintext

```

## Details:

	By default Squid checks that DNS responses are received
	from the same IP addresses they are sent to.  If they
	don't match, Squid ignores the response and writes a warning
	message to cache.log.  You can allow responses from unknown
	nameservers by setting this option to 'off'.



[Index](index#toc_ignore_unknown_nameservers) | [Alphabetical Index](index_all#toc_ignore_unknown_nameservers)

