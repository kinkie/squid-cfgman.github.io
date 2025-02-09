---
title: "Squid 3.1.0 configuration directive: unique_hostname"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure unique_hostname
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_unique_hostname) | [Alphabetical Index](index_all#toc_unique_hostname)

## Option Name:
[unique_hostname](#unique_hostname)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Copy the value from visible_hostname


## Suggested Config:
```plaintext

```

## Details:

	If you want to have multiple machines with the same
	'visible_hostname' you must give each machine a different
	'unique_hostname' so forwarding loops can be detected.



[Index](index#toc_unique_hostname) | [Alphabetical Index](index_all#toc_unique_hostname)

