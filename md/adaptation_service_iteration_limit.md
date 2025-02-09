---
title: "Squid 3.1.0 configuration directive: adaptation_service_iteration_limit"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure adaptation_service_iteration_limit
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_adaptation_service_iteration_limit) | [Alphabetical Index](index_all#toc_adaptation_service_iteration_limit)

## Option Name:
[adaptation_service_iteration_limit](#adaptation_service_iteration_limit)
 * **Replaces:** 
 * **Requires:** --enable-ecap or --enable-icap-client
 * **Default Value:** adaptation_service_iteration_limit 16


## Suggested Config:
```plaintext

```

## Details:

	Limits the number of iterations allowed when applying adaptation
	services to a message. If your longest adaptation set or chain
	may have more than 16 services, increase the limit beyond its
	default value of 16. If detecting infinite iteration loops sooner
	is critical, make the iteration limit match the actual number
	of services in your longest adaptation set or chain.

	Infinite adaptation loops are most likely with routing services.

	See also: icap_service routing=1



[Index](index#toc_adaptation_service_iteration_limit) | [Alphabetical Index](index_all#toc_adaptation_service_iteration_limit)

