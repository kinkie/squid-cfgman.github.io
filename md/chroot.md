---
title: "Squid 3.1.0 configuration directive: chroot"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure chroot
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_chroot) | [Alphabetical Index](index_all#toc_chroot)

## Option Name:
[chroot](#chroot)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	Specifies a directory where Squid should do a chroot() while
	initializing.  This also causes Squid to fully drop root
	privileges after initializing.  This means, for example, if you
	use a HTTP port less than 1024 and try to reconfigure, you may
	get an error saying that Squid can not open the port.



[Index](index#toc_chroot) | [Alphabetical Index](index_all#toc_chroot)

