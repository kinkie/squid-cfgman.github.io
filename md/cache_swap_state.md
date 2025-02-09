---
title: "Squid 3.1.0 configuration directive: cache_swap_state"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure cache_swap_state
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_cache_swap_state) | [Alphabetical Index](index_all#toc_cache_swap_state)

## Option Name:
[cache_swap_state](#cache_swap_state)
 * **Replaces:** cache_swap_log
 * **Requires:** 
 * **Default Value:** Store the journal inside its cache_dir


## Suggested Config:
```plaintext

```

## Details:

	Location for the cache "swap.state" file. This index file holds
	the metadata of objects saved on disk.  It is used to rebuild
	the cache during startup.  Normally this file resides in each
	'cache_dir' directory, but you may specify an alternate
	pathname here.  Note you must give a full filename, not just
	a directory. Since this is the index for the whole object
	list you CANNOT periodically rotate it!

	If %s can be used in the file name it will be replaced with a
	a representation of the cache_dir name where each / is replaced
	with '.'. This is needed to allow adding/removing cache_dir
	lines when cache_swap_log is being used.

	If have more than one 'cache_dir', and %s is not used in the name
	these swap logs will have names such as:

		cache_swap_log.00
		cache_swap_log.01
		cache_swap_log.02

	The numbered extension (which is added automatically)
	corresponds to the order of the 'cache_dir' lines in this
	configuration file.  If you change the order of the 'cache_dir'
	lines in this file, these index files will NOT correspond to
	the correct 'cache_dir' entry (unless you manually rename
	them).  We recommend you do NOT use this option.  It is
	better to keep these index files in each 'cache_dir' directory.



[Index](index#toc_cache_swap_state) | [Alphabetical Index](index_all#toc_cache_swap_state)

