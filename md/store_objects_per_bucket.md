---
title: "Squid 3.1.0 configuration directive: store_objects_per_bucket"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure store_objects_per_bucket
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_store_objects_per_bucket) | [Alphabetical Index](index_all#toc_store_objects_per_bucket)

## Option Name:
[store_objects_per_bucket](#store_objects_per_bucket)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** store_objects_per_bucket 20


## Suggested Config:
```plaintext

```

## Details:

	Target number of objects per bucket in the store hash table.
	Lowering this value increases the total number of buckets and
	also the storage maintenance rate.  The default is 20.



[Index](index#toc_store_objects_per_bucket) | [Alphabetical Index](index_all#toc_store_objects_per_bucket)

