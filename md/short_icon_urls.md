---
title: "Squid 3.1.0 configuration directive: short_icon_urls"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure short_icon_urls
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_short_icon_urls) | [Alphabetical Index](index_all#toc_short_icon_urls)

## Option Name:
[short_icon_urls](#short_icon_urls)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** short_icon_urls on


## Suggested Config:
```plaintext

```

## Details:

	If this is enabled Squid will use short URLs for icons.
	If disabled it will revert to the old behavior of including
	it's own name and port in the URL.

	If you run a complex cache hierarchy with a mix of Squid and
	other proxies you may need to disable this directive.



[Index](index#toc_short_icon_urls) | [Alphabetical Index](index_all#toc_short_icon_urls)

