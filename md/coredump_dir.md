---
title: "Squid 3.1.0 configuration directive: coredump_dir"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure coredump_dir
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_coredump_dir) | [Alphabetical Index](index_all#toc_coredump_dir)

## Option Name:
[coredump_dir](#coredump_dir)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Use the directory from where Squid was started.


## Suggested Config:
```plaintext
# Leave coredumps in the first cache dir

```

## Details:

	By default Squid leaves core files in the directory from where
	it was started. If you set 'coredump_dir' to a directory
	that exists, Squid will chdir() to that directory at startup
	and coredump files will be left there.

	In addition to changing the directory, the process permissions are updated
	to enable process tracing and/or coredump file generation. The details are
	OS-specific, but look for prctl(2) PR_SET_DUMPABLE and procctl(2)
	PROC_TRACE_CTL documentation as guiding examples.

CONFIG_START

coredump_dir /usr/local/squid/var/cache/squid
CONFIG_END



[Index](index#toc_coredump_dir) | [Alphabetical Index](index_all#toc_coredump_dir)

