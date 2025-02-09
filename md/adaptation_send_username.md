---
title: "Squid 3.1.0 configuration directive: adaptation_send_username"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure adaptation_send_username
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_adaptation_send_username) | [Alphabetical Index](index_all#toc_adaptation_send_username)

## Option Name:
[adaptation_send_username](#adaptation_send_username)
 * **Replaces:** icap_send_client_username
 * **Requires:** --enable-ecap or --enable-icap-client
 * **Default Value:** adaptation_send_username off


## Suggested Config:
```plaintext

```

## Details:

	This sends authenticated HTTP client username (if available) to
	the adaptation service.

	For ICAP, the username value is encoded based on the
	icap_client_username_encode option and is sent using the header
	specified by the icap_client_username_header option.



[Index](index#toc_adaptation_send_username) | [Alphabetical Index](index_all#toc_adaptation_send_username)

