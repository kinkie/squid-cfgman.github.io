---
title: "Squid 3.1.0 configuration directive: cache_effective_group"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure cache_effective_group
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_cache_effective_group) | [Alphabetical Index](index_all#toc_cache_effective_group)

## Option Name:
[cache_effective_group](#cache_effective_group)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Use system group memberships of the cache_effective_user account


## Suggested Config:
```plaintext

```

## Details:

	Squid sets the GID to the effective user's default group ID
	(taken from the password file) and supplementary group list
	from the groups membership.

	If you want Squid to run with a specific GID regardless of
	the group memberships of the effective user then set this
	to the group (or GID) you want Squid to run as. When set
	all other group privileges of the effective user are ignored
	and only this GID is effective. If Squid is not started as
	root the user starting Squid MUST be member of the specified
	group.

	This option is not recommended by the Squid Team.
	Our preference is for administrators to configure a secure
	user account for squid with UID/GID matching system policies.



[Index](index#toc_cache_effective_group) | [Alphabetical Index](index_all#toc_cache_effective_group)

