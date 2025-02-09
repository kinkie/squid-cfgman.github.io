---
title: "Squid 3.1.0 configuration directive: logfile_rotate"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure logfile_rotate
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_logfile_rotate) | [Alphabetical Index](index_all#toc_logfile_rotate)

## Option Name:
[logfile_rotate](#logfile_rotate)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** logfile_rotate 10


## Suggested Config:
```plaintext

```

## Details:

	Specifies the default number of logfile rotations to make when you
	type 'squid -k rotate'. The default is 10, which will rotate
	with extensions 0 through 9. Setting logfile_rotate to 0 will
	disable the file name rotation, but the logfiles are still closed
	and re-opened. This will enable you to rename the logfiles
	yourself just before sending the rotate signal.

	Note, from Squid-3.1 this option is only a default for cache.log,
	that log can be rotated separately by using debug_options.

	Note, from Squid-4 this option is only a default for access.log
	recorded by stdio: module. Those logs can be rotated separately by
	using the rotate=N option on their access_log directive.

	Note, the 'squid -k rotate' command normally sends a USR1
	signal to the running squid process.  In certain situations
	(e.g. on Linux with Async I/O), USR1 is used for other
	purposes, so -k rotate uses another signal.  It is best to get
	in the habit of using 'squid -k rotate' instead of 'kill -USR1
	&lt;pid&gt;'.




[Index](index#toc_logfile_rotate) | [Alphabetical Index](index_all#toc_logfile_rotate)

