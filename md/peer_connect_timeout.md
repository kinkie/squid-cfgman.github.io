---
title: "Squid 3.1.0 configuration directive: peer_connect_timeout"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure peer_connect_timeout
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_peer_connect_timeout) | [Alphabetical Index](index_all#toc_peer_connect_timeout)

## Option Name:
[peer_connect_timeout](#peer_connect_timeout)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** peer_connect_timeout 30 seconds


## Suggested Config:
```plaintext

```

## Details:

	This parameter specifies how long to wait for a pending TCP
	connection to a peer cache.  The default is 30 seconds.   You
	may also set different timeout values for individual neighbors
	with the 'connect-timeout' option on a 'cache_peer' line.



[Index](index#toc_peer_connect_timeout) | [Alphabetical Index](index_all#toc_peer_connect_timeout)

