---
title: "Squid 3.1.0 configuration directive: visible_hostname"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure visible_hostname
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_visible_hostname) | [Alphabetical Index](index_all#toc_visible_hostname)

## Option Name:
[visible_hostname](#visible_hostname)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Automatically detect the system host name


## Suggested Config:
```plaintext

```

## Details:

	If you want to present a special hostname in error messages, etc,
	define this.  Otherwise, the return value of gethostname()
	will be used. If you have multiple caches in a cluster and
	get errors about IP-forwarding you must set them to have individual
	names with this setting.



[Index](index#toc_visible_hostname) | [Alphabetical Index](index_all#toc_visible_hostname)

