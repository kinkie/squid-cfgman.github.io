---
title: "Squid 3.1.0 configuration directive: wccp_version"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure wccp_version
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_wccp_version) | [Alphabetical Index](index_all#toc_wccp_version)

## Option Name:
[wccp_version](#wccp_version)
 * **Replaces:** 
 * **Requires:** --enable-wccp
 * **Default Value:** wccp_version 4


## Suggested Config:
```plaintext

```

## Details:

	This directive is only relevant if you need to set up WCCP(v1)
	to some very old and end-of-life Cisco routers. In all other
	setups it must be left unset or at the default setting.
	It defines an internal version in the WCCP(v1) protocol,
	with version 4 being the officially documented protocol.

	According to some users, Cisco IOS 11.2 and earlier only
	support WCCP version 3.  If you're using that or an earlier
	version of IOS, you may need to change this value to 3, otherwise
	do not specify this parameter.



[Index](index#toc_wccp_version) | [Alphabetical Index](index_all#toc_wccp_version)

