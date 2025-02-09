---
title: "Squid 3.1.0 configuration directive: minimum_expiry_time"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure minimum_expiry_time
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_minimum_expiry_time) | [Alphabetical Index](index_all#toc_minimum_expiry_time)

## Option Name:
[minimum_expiry_time](#minimum_expiry_time)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** minimum_expiry_time 60 seconds


## Suggested Config:
```plaintext

```

## Details:

	The minimum caching time according to (Expires - Date)
	headers Squid honors if the object can't be revalidated.
	The default is 60 seconds.

	In reverse proxy environments it might be desirable to honor
	shorter object lifetimes. It is most likely better to make
	your server return a meaningful Last-Modified header however.



[Index](index#toc_minimum_expiry_time) | [Alphabetical Index](index_all#toc_minimum_expiry_time)

