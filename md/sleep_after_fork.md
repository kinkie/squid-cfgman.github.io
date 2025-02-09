---
title: "Squid 3.1.0 configuration directive: sleep_after_fork"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure sleep_after_fork
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_sleep_after_fork) | [Alphabetical Index](index_all#toc_sleep_after_fork)

## Option Name:
[sleep_after_fork](#sleep_after_fork)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** sleep_after_fork 0


## Suggested Config:
```plaintext

```

## Details:

	When this is set to a non-zero value, the main Squid process
	sleeps the specified number of microseconds after a fork()
	system call. This sleep may help the situation where your
	system reports fork() failures due to lack of (virtual)
	memory. Note, however, if you have a lot of child
	processes, these sleep delays will add up and your
	Squid will not service requests for some amount of time
	until all the child processes have been started.



[Index](index#toc_sleep_after_fork) | [Alphabetical Index](index_all#toc_sleep_after_fork)

