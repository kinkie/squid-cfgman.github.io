---
title: "Squid 3.1.0 configuration directive: cache_peer_access"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure cache_peer_access
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_cache_peer_access) | [Alphabetical Index](index_all#toc_cache_peer_access)

## Option Name:
[cache_peer_access](#cache_peer_access)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** No peer usage restrictions.


## Suggested Config:
```plaintext

```

## Details:

	Restricts usage of cache_peer proxies.

	Usage:
		cache_peer_access peer-name allow|deny [!]aclname ...

	For the required peer-name parameter, use either the value of the
	cache_peer name=value parameter or, if name=value is missing, the
	cache_peer hostname parameter.

	This directive narrows down the selection of peering candidates, but
	does not determine the order in which the selected candidates are
	contacted. That order is determined by the peer selection algorithms
	(see PEER SELECTION sections in the cache_peer documentation).

	If a deny rule matches, the corresponding peer will not be contacted
	for the current transaction -- Squid will not send ICP queries and
	will not forward HTTP requests to that peer. An allow match leaves
	the corresponding peer in the selection. The first match for a given
	peer wins for that peer.

	The relative order of cache_peer_access directives for the same peer
	matters. The relative order of any two cache_peer_access directives
	for different peers does not matter. To ease interpretation, it is a
	good idea to group cache_peer_access directives for the same peer
	together.

	A single cache_peer_access directive may be evaluated multiple times
	for a given transaction because individual peer selection algorithms
	may check it independently from each other. These redundant checks
	may be optimized away in future Squid versions.

	This clause only supports fast acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.




[Index](index#toc_cache_peer_access) | [Alphabetical Index](index_all#toc_cache_peer_access)

