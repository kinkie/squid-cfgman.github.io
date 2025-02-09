---
title: "Squid 3.1.0 configuration directive: logfile_daemon"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure logfile_daemon
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_logfile_daemon) | [Alphabetical Index](index_all#toc_logfile_daemon)

## Option Name:
[logfile_daemon](#logfile_daemon)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** logfile_daemon /usr/local/squid/libexec/log_file_daemon


## Suggested Config:
```plaintext

```

## Details:

	Specify the path to the logfile-writing daemon. This daemon is
	used to write the access and store logs, if configured.

	Squid sends a number of commands to the log daemon:
	  L&lt;data&gt;\n - logfile data
	  R\n - rotate file
	  T\n - truncate file
	  O\n - reopen file
	  F\n - flush file
	  r&lt;n&gt;\n - set rotate count to &lt;n&gt;
	  b&lt;n&gt;\n - 1 = buffer output, 0 = don't buffer output

	No responses is expected.



[Index](index#toc_logfile_daemon) | [Alphabetical Index](index_all#toc_logfile_daemon)

