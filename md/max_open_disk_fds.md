---
title: "Squid 3.1.0 configuration directive: max_open_disk_fds"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure max_open_disk_fds
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_max_open_disk_fds) | [Alphabetical Index](index_all#toc_max_open_disk_fds)

## Option Name:
[max_open_disk_fds](#max_open_disk_fds)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** no limit


## Suggested Config:
```plaintext

```

## Details:

	To avoid having disk as the I/O bottleneck Squid can optionally
	bypass the on-disk cache if more than this amount of disk file
	descriptors are open.

	A value of 0 indicates no limit.



[Index](index#toc_max_open_disk_fds) | [Alphabetical Index](index_all#toc_max_open_disk_fds)

