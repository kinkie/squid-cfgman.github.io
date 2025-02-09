---
title: "Squid 3.1.0 configuration directive: cpu_affinity_map"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure cpu_affinity_map
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_cpu_affinity_map) | [Alphabetical Index](index_all#toc_cpu_affinity_map)

## Option Name:
[cpu_affinity_map](#cpu_affinity_map)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Let operating system decide.


## Suggested Config:
```plaintext

```

## Details:

	Usage: cpu_affinity_map process_numbers=P1,P2,... cores=C1,C2,...

	Sets 1:1 mapping between Squid processes and CPU cores. For example,

	    cpu_affinity_map process_numbers=1,2,3,4 cores=1,3,5,7

	affects processes 1 through 4 only and places them on the first
	four even cores, starting with core #1.

	CPU cores are numbered starting from 1. Requires support for
	sched_getaffinity(2) and sched_setaffinity(2) system calls.

	Multiple cpu_affinity_map options are merged.

	See also: workers



[Index](index#toc_cpu_affinity_map) | [Alphabetical Index](index_all#toc_cpu_affinity_map)

