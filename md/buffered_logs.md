---
title: "Squid 3.1.0 configuration directive: buffered_logs"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure buffered_logs
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_buffered_logs) | [Alphabetical Index](index_all#toc_buffered_logs)

## Option Name:
[buffered_logs](#buffered_logs)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** buffered_logs off


## Suggested Config:
```plaintext

```

## Details:

	Whether to write/send access_log records ASAP or accumulate them and
	then write/send them in larger chunks. Buffering may improve
	performance because it decreases the number of I/Os. However,
	buffering increases the delay before log records become available to
	the final recipient (e.g., a disk file or logging daemon) and,
	hence, increases the risk of log records loss.

	Note that even when buffered_logs are off, Squid may have to buffer
	records if it cannot write/send them immediately due to pending I/Os
	(e.g., the I/O writing the previous log record) or connectivity loss.

	Currently honored by 'daemon', 'tcp' and 'udp' access_log modules only.



[Index](index#toc_buffered_logs) | [Alphabetical Index](index_all#toc_buffered_logs)

