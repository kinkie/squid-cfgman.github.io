---
title: "Squid 3.1.0 configuration directive: shared_memory_locking"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure shared_memory_locking
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_shared_memory_locking) | [Alphabetical Index](index_all#toc_shared_memory_locking)

## Option Name:
[shared_memory_locking](#shared_memory_locking)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** shared_memory_locking off


## Suggested Config:
```plaintext

```

## Details:

	Whether to ensure that all required shared memory is available by
	"locking" that shared memory into RAM when Squid starts. The
	alternative is faster startup time followed by slightly slower
	performance and, if not enough RAM is actually available during
	runtime, mysterious crashes.

	SMP Squid uses many shared memory segments. These segments are
	brought into Squid memory space using an mmap(2) system call. During
	Squid startup, the mmap() call often succeeds regardless of whether
	the system has enough RAM. In general, Squid cannot tell whether the
	kernel applies this "optimistic" memory allocation policy (but
	popular modern kernels usually use it).

	Later, if Squid attempts to actually access the mapped memory
	regions beyond what the kernel is willing to allocate, the
	"optimistic" kernel simply kills Squid kid with a SIGBUS signal.
	Some of the memory limits enforced by the kernel are currently
	poorly understood: We do not know how to detect and check them. This
	option ensures that the mapped memory will be available.

	This option may have a positive performance side-effect: Locking
	memory at start avoids runtime paging I/O. Paging slows Squid down.

	Locking memory may require a large enough RLIMIT_MEMLOCK OS limit,
	CAP_IPC_LOCK capability, or equivalent.



[Index](index#toc_shared_memory_locking) | [Alphabetical Index](index_all#toc_shared_memory_locking)

