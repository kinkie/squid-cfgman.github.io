---
title: "Squid 3.1.0 configuration directive: url_rewrite_bypass"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure url_rewrite_bypass
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_url_rewrite_bypass) | [Alphabetical Index](index_all#toc_url_rewrite_bypass)

## Option Name:
[url_rewrite_bypass](#url_rewrite_bypass)
 * **Replaces:** redirector_bypass
 * **Requires:** 
 * **Default Value:** url_rewrite_bypass off


## Suggested Config:
```plaintext

```

## Details:

	When this is 'on', a request will not go through the
	redirector if all the helpers are busy. If this is 'off' and the
	redirector queue grows too large, the action is prescribed by the
	on-persistent-overload option. You should only enable this if the
	redirectors are not critical to your caching system. If you use
	redirectors for access control, and you enable this option,
	users may have access to pages they should not
	be allowed to request.

	Enabling this option sets the default url_rewrite_children queue-size
	option value to 0.



[Index](index#toc_url_rewrite_bypass) | [Alphabetical Index](index_all#toc_url_rewrite_bypass)

