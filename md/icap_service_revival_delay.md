---
title: "Squid 3.1.0 configuration directive: icap_service_revival_delay"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure icap_service_revival_delay
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_icap_service_revival_delay) | [Alphabetical Index](index_all#toc_icap_service_revival_delay)

## Option Name:
[icap_service_revival_delay](#icap_service_revival_delay)
 * **Replaces:** 
 * **Requires:** --enable-icap-client
 * **Default Value:** icap_service_revival_delay 180


## Suggested Config:
```plaintext

```

## Details:

	The delay specifies the number of seconds to wait after an ICAP
	OPTIONS request failure before requesting the options again. The
	failed ICAP service is considered "down" until fresh OPTIONS are
	fetched.

	The actual delay cannot be smaller than the hardcoded minimum
	delay of 30 seconds.



[Index](index#toc_icap_service_revival_delay) | [Alphabetical Index](index_all#toc_icap_service_revival_delay)

