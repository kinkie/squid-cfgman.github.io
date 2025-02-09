---
title: "Squid 3.1.0 configuration directive: cache_log_message"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure cache_log_message
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_cache_log_message) | [Alphabetical Index](index_all#toc_cache_log_message)

## Option Name:
[cache_log_message](#cache_log_message)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Use debug_options.


## Suggested Config:
```plaintext

```

## Details:

	Configures logging of individual cache.log messages.

		cache_log_message id=&lt;number&gt; option...
		cache_log_message ids=&lt;number&gt;-&lt;number&gt; option...

	Most messages have _not_ been instrumented to support this directive
	yet. For the list of instrumented messages and their IDs, please see
	the doc/debug-messages.dox file.

	Message ID corresponds to the message semantics rather than message
	text or source code location. The ID is stable across Squid
	instances and versions. Substantial changes in message semantics
	result in a new ID assignment. To reduce the danger of suppressing
	an important log message, the old IDs of removed (or substantially
	changed) messages are never reused.

	If more than one cache_log_message directive refers to the same
	message ID, the last directive wins.

	Use ids=min-max syntax to apply the same message configuration to an
	inclusive range of message IDs. An ID range with N values has
	exactly the same effect as typing N cache_log_message lines.

	At least one option is required. Supported options are:

	  level=&lt;number&gt;: The logging level to use for the message. Squid
		command line options (-s and -d) as well as the debug_options
		directive control which levels go to syslog, stderr, and/or
		cache.log. In most environments, using level=2 or higher stops
		Squid from logging the message anywhere. By default, the
		hard-coded message-specific level is used.

	  limit=&lt;number&gt;: After logging the specified number of messages at
		the configured (or default) debugging level DL, start using
		level 3 (for DL 0 and 1) or 8 (for higher DL values). Usually,
		level-3+ messages are not logged anywhere so this option can
		often be used to effectively suppress the message. Each SMP
		Squid process gets the same limit.



[Index](index#toc_cache_log_message) | [Alphabetical Index](index_all#toc_cache_log_message)

