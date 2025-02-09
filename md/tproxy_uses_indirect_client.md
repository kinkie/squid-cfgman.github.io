---
title: "Squid 3.1.0 configuration directive: tproxy_uses_indirect_client"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure tproxy_uses_indirect_client
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_tproxy_uses_indirect_client) | [Alphabetical Index](index_all#toc_tproxy_uses_indirect_client)

## Option Name:
[tproxy_uses_indirect_client](#tproxy_uses_indirect_client)
 * **Replaces:** 
 * **Requires:** --enable-follow-x-forwarded-for and --enable-linux-netfilter
 * **Default Value:** tproxy_uses_indirect_client off


## Suggested Config:
```plaintext

```

## Details:

	Controls whether the indirect client address
	(see follow_x_forwarded_for) is used instead of the
	direct client address when spoofing the outgoing client.

	This has no effect on requests arriving in non-tproxy
	mode ports.

	SECURITY WARNING: Usage of this option is dangerous
	and should not be used trivially. Correct configuration
	of follow_x_forwarded_for with a limited set of trusted
	sources is required to prevent abuse of your proxy.



[Index](index#toc_tproxy_uses_indirect_client) | [Alphabetical Index](index_all#toc_tproxy_uses_indirect_client)

