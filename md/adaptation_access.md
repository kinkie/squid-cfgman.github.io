---
title: "Squid 3.1.0 configuration directive: adaptation_access"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure adaptation_access
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_adaptation_access) | [Alphabetical Index](index_all#toc_adaptation_access)

## Option Name:
[adaptation_access](#adaptation_access)
 * **Replaces:** 
 * **Requires:** --enable-ecap or --enable-icap-client
 * **Default Value:** Allow, unless rules exist in squid.conf.


## Suggested Config:
```plaintext

```

## Details:

	Sends an HTTP transaction to an ICAP or eCAP adaptation	service.

	adaptation_access service_name allow|deny [!]aclname...
	adaptation_access set_name     allow|deny [!]aclname...

	At each supported vectoring point, the adaptation_access
	statements are processed in the order they appear in this
	configuration file. Statements pointing to the following services
	are ignored (i.e., skipped without checking their ACL):

	    - services serving different vectoring points
	    - "broken-but-bypassable" services
	    - "up" services configured to ignore such transactions
              (e.g., based on the ICAP Transfer-Ignore header).

        When a set_name is used, all services in the set are checked
	using the same rules, to find the first applicable one. See
	adaptation_service_set for details.

	If an access list is checked and there is a match, the
	processing stops: For an "allow" rule, the corresponding
	adaptation service is used for the transaction. For a "deny"
	rule, no adaptation service is activated.

	It is currently not possible to apply more than one adaptation
	service at the same vectoring point to the same HTTP transaction.

        See also: icap_service and ecap_service

Example:
adaptation_access service_1 allow all



[Index](index#toc_adaptation_access) | [Alphabetical Index](index_all#toc_adaptation_access)

