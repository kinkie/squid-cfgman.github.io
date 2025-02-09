---
title: "Squid 3.1.0 configuration directive: netdb_filename"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure netdb_filename
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_netdb_filename) | [Alphabetical Index](index_all#toc_netdb_filename)

## Option Name:
[netdb_filename](#netdb_filename)
 * **Replaces:** 
 * **Requires:** --enable-icmp
 * **Default Value:** netdb_filename stdio:/usr/local/squid/var/cache/squid/netdb.state


## Suggested Config:
```plaintext

```

## Details:

	Where Squid stores it's netdb journal.
	When enabled this journal preserves netdb state between restarts.

	To disable, enter "none".



[Index](index#toc_netdb_filename) | [Alphabetical Index](index_all#toc_netdb_filename)

