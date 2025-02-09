---
title: "Squid 3.1.0 configuration directive: note"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure note
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_note) | [Alphabetical Index](index_all#toc_note)

## Option Name:
[note](#note)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	This option used to log custom information about the master
	transaction. For example, an admin may configure Squid to log
	which "user group" the transaction belongs to, where "user group"
	will be determined based on a set of ACLs and not [just]
	authentication information.
	Values of key/value pairs can be logged using %{key}note macros:

	    note key value acl ...
	    logformat myFormat ... %{key}note ...

	This clause only supports fast acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.



[Index](index#toc_note) | [Alphabetical Index](index_all#toc_note)

