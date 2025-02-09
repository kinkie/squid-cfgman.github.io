---
title: "Squid 3.1.0 configuration directive: paranoid_hit_validation"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure paranoid_hit_validation
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_paranoid_hit_validation) | [Alphabetical Index](index_all#toc_paranoid_hit_validation)

## Option Name:
[paranoid_hit_validation](#paranoid_hit_validation)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** validation disabled


## Suggested Config:
```plaintext

```

## Details:

	Controls whether Squid should perform paranoid validation of cache entry
	metadata integrity every time a cache entry is hit. This low-level
	validation should always succeed. Each failed validation results in a
	cache miss, a BUG line reported to cache.log, and the invalid entry
	marked as unusable (and eventually purged from the cache).

	Squid can only validate shared cache memory and rock cache_dir entries.

	* Zero (default) value means that the validation is disabled.

	* Positive values enable validation:
	  - values less than 1 day approximate the maximum time that Squid is allowed
	    to spend validating a single cache hit.
	  - values greater or equal to 1 day are considered as no limitation:
	    in this case all checks will be performed, regardless of how much time
	    they take.

	Hits are usually stored using 16KB slots (for rock, the size is
	configurable via cache_dir slot-size). Larger hits require scanning more
	slots and, hence, take more time. When validation is enabled, at least one
	slot is always validated, regardless of the configured time limit.

	A worker process validating an entry cannot do anything else (i.e. the
	validation is blocking). The validation overhead is environment dependent,
	but developers have observed Squid spending 3-10 microseconds to check each
	slot of a Rock or shared memory hit entry. If Squid cuts validation short
	because it runs out of configured time, it treats the entry as valid.

	When hit validation is enabled, its statistics is included in Cache
	Manager mgr:counters, mgr:5min, and mgr:60min reports.



[Index](index#toc_paranoid_hit_validation) | [Alphabetical Index](index_all#toc_paranoid_hit_validation)

