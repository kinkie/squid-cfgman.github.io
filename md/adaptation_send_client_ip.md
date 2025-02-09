---
title: "Squid 3.1.0 configuration directive: adaptation_send_client_ip"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure adaptation_send_client_ip
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_adaptation_send_client_ip) | [Alphabetical Index](index_all#toc_adaptation_send_client_ip)

## Option Name:
[adaptation_send_client_ip](#adaptation_send_client_ip)
 * **Replaces:** icap_send_client_ip
 * **Requires:** --enable-ecap or --enable-icap-client
 * **Default Value:** adaptation_send_client_ip off


## Suggested Config:
```plaintext

```

## Details:

	If enabled, Squid shares HTTP client IP information with adaptation
	services. For ICAP, Squid adds the X-Client-IP header to ICAP requests.
	For eCAP, Squid sets the libecap::metaClientIp transaction option.

	See also: adaptation_uses_indirect_client



[Index](index#toc_adaptation_send_client_ip) | [Alphabetical Index](index_all#toc_adaptation_send_client_ip)

