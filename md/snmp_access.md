---
title: "Squid 3.1.0 configuration directive: snmp_access"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure snmp_access
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_snmp_access) | [Alphabetical Index](index_all#toc_snmp_access)

## Option Name:
[snmp_access](#snmp_access)
 * **Replaces:** 
 * **Requires:** --enable-snmp
 * **Default Value:** Deny, unless rules exist in squid.conf.


## Suggested Config:
```plaintext

```

## Details:

	Allowing or denying access to the SNMP port.

	All access to the agent is denied by default.
	usage:

	snmp_access allow|deny [!]aclname ...

	This clause only supports fast acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.

Example:
 snmp_access allow snmppublic localhost
 snmp_access deny all



[Index](index#toc_snmp_access) | [Alphabetical Index](index_all#toc_snmp_access)

