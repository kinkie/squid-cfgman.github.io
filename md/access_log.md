---
title: "Squid 3.1.0 configuration directive: access_log"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure access_log
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_access_log) | [Alphabetical Index](index_all#toc_access_log)

## Option Name:
[access_log](#access_log)
 * **Replaces:** cache_access_log
 * **Requires:** 
 * **Default Value:** daemon:/usr/local/squid/var/logs/access.log squid


## Suggested Config:
```plaintext

```

## Details:

	Configures whether and how Squid logs HTTP and ICP transactions.
	If access logging is enabled, a single line is logged for every
	matching HTTP or ICP request. The recommended directive formats are:

	access_log &lt;module&gt;:&lt;place&gt; [option ...] [acl acl ...]
	access_log none [acl acl ...]

	The following directive format is accepted but may be deprecated:
	access_log &lt;module&gt;:&lt;place&gt; [&lt;logformat name&gt; [acl acl ...]]

        In most cases, the first ACL name must not contain the '=' character
	and should not be equal to an existing logformat name. You can always
	start with an 'all' ACL to work around those restrictions.

	Will log to the specified module:place using the specified format (which
	must be defined in a logformat directive) those entries which match
	ALL the acl's specified (which must be defined in acl clauses).
	If no acl is specified, all requests will be logged to this destination.

	===== Available options for the recommended directive format =====

	logformat=name		Names log line format (either built-in or
				defined by a logformat directive). Defaults
				to 'squid'.

	buffer-size=64KB	Defines approximate buffering limit for log
				records (see buffered_logs).  Squid should not
				keep more than the specified size and, hence,
				should flush records before the buffer becomes
				full to avoid overflows under normal
				conditions (the exact flushing algorithm is
				module-dependent though).  The on-error option
				controls overflow handling.

	on-error=die|drop	Defines action on unrecoverable errors. The
				'drop' action ignores (i.e., does not log)
				affected log records. The default 'die' action
				kills the affected worker. The drop action
				support has not been tested for modules other
				than tcp.

	rotate=N		Specifies the number of log file rotations to
				make when you run 'squid -k rotate'. The default
				is to obey the logfile_rotate directive. Setting
				rotate=0 will disable the file name rotation,
				but the log files are still closed and re-opened.
				This will enable you to rename the logfiles
				yourself just before sending the rotate signal.
				Only supported by the stdio module.

	===== Modules Currently available =====

	none	Do not log any requests matching these ACL.
		Do not specify Place or logformat name.

	stdio	Write each log line to disk immediately at the completion of
		each request.
		Place: the filename and path to be written.

	daemon	Very similar to stdio. But instead of writing to disk the log
		line is passed to a daemon helper for asychronous handling instead.
		Place: varies depending on the daemon.

		log_file_daemon Place: the file name and path to be written.

	syslog	To log each request via syslog facility.
		Place: The syslog facility and priority level for these entries.
		Place Format:  facility.priority

		where facility could be any of:
			authpriv, daemon, local0 ... local7 or user.

		And priority could be any of:
			err, warning, notice, info, debug.

	udp	To send each log line as text data to a UDP receiver.
		Place: The destination host name or IP and port.
		Place Format:   //host:port

	tcp	To send each log line as text data to a TCP receiver.
		Lines may be accumulated before sending (see buffered_logs).
		Place: The destination host name or IP and port.
		Place Format:   //host:port

	Default:
		access_log daemon:/usr/local/squid/var/logs/access.log squid



[Index](index#toc_access_log) | [Alphabetical Index](index_all#toc_access_log)

