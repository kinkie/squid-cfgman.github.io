---
title: "Squid 3.1.0 configuration directive: client_delay_pools"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure client_delay_pools
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_client_delay_pools) | [Alphabetical Index](index_all#toc_client_delay_pools)

## Option Name:
[client_delay_pools](#client_delay_pools)
 * **Replaces:** 
 * **Requires:** --enable-delay-pools
 * **Default Value:** client_delay_pools 0


## Suggested Config:
```plaintext

```

## Details:

	This option specifies the number of client delay pools used. It must
	preceed other client_delay_* options.

	Example:
		client_delay_pools 2

	See also client_delay_parameters and client_delay_access.



[Index](index#toc_client_delay_pools) | [Alphabetical Index](index_all#toc_client_delay_pools)

