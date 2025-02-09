---
title: "Squid 3.1.0 configuration directive: adaptation_uses_indirect_client"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure adaptation_uses_indirect_client
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_adaptation_uses_indirect_client) | [Alphabetical Index](index_all#toc_adaptation_uses_indirect_client)

## Option Name:
[adaptation_uses_indirect_client](#adaptation_uses_indirect_client)
 * **Replaces:** icap_uses_indirect_client
 * **Requires:** --enable-follow-x-forwarded-for and (--enable-icap-client and/or --enable-ecap)
 * **Default Value:** adaptation_uses_indirect_client on


## Suggested Config:
```plaintext

```

## Details:

	Controls whether the indirect client IP address (instead of the direct
	client IP address) is passed to adaptation services.

	See also: follow_x_forwarded_for adaptation_send_client_ip



[Index](index#toc_adaptation_uses_indirect_client) | [Alphabetical Index](index_all#toc_adaptation_uses_indirect_client)

