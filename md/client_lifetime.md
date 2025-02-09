---
title: "Squid 3.1.0 configuration directive: client_lifetime"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure client_lifetime
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_client_lifetime) | [Alphabetical Index](index_all#toc_client_lifetime)

## Option Name:
[client_lifetime](#client_lifetime)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** client_lifetime 1 day


## Suggested Config:
```plaintext

```

## Details:

	The maximum amount of time a client (browser) is allowed to
	remain connected to the cache process.  This protects the Cache
	from having a lot of sockets (and hence file descriptors) tied up
	in a CLOSE_WAIT state from remote clients that go away without
	properly shutting down (either because of a network failure or
	because of a poor client implementation).  The default is one
	day, 1440 minutes.

	NOTE:  The default value is intended to be much larger than any
	client would ever need to be connected to your cache.  You
	should probably change client_lifetime only as a last resort.
	If you seem to have many client connections tying up
	filedescriptors, we recommend first tuning the read_timeout,
	request_timeout, persistent_request_timeout and quick_abort values.



[Index](index#toc_client_lifetime) | [Alphabetical Index](index_all#toc_client_lifetime)

