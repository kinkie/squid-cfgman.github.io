---
title: "Squid 3.1.0 configuration directive: icap_log"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure icap_log
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_icap_log) | [Alphabetical Index](index_all#toc_icap_log)

## Option Name:
[icap_log](#icap_log)
 * **Replaces:** 
 * **Requires:** --enable-icap-client
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	ICAP log files record ICAP transaction summaries, one line per
	transaction.

	The icap_log option format is:
	icap_log &lt;filepath&gt; [&lt;logformat name&gt; [acl acl ...]]
	icap_log none [acl acl ...]]

	Please see access_log option documentation for details. The two
	kinds of logs share the overall configuration approach and many
	features.

	ICAP processing of a single HTTP message or transaction may
	require multiple ICAP transactions.  In such cases, multiple
	ICAP transaction log lines will correspond to a single access
	log line.

	ICAP log supports many access.log logformat %codes. In ICAP context,
	HTTP message-related %codes are applied to the HTTP message embedded
	in an ICAP message. Logformat "%http::&gt;..." codes are used for HTTP
	messages embedded in ICAP requests while "%http::&lt;..." codes are used
	for HTTP messages embedded in ICAP responses. For example:

		http::&gt;h	To-be-adapted HTTP message headers sent by Squid to
				the ICAP service. For REQMOD transactions, these are
				HTTP request headers. For RESPMOD, these are HTTP
				response headers, but Squid currently cannot log them
				(i.e., %http::&gt;h will expand to "-" for RESPMOD).

		http::&lt;h	Adapted HTTP message headers sent by the ICAP
				service to Squid (i.e., HTTP request headers in regular
				REQMOD; HTTP response headers in RESPMOD and during
				request satisfaction in REQMOD).

	ICAP OPTIONS transactions do not embed HTTP messages.

	Several logformat codes below deal with ICAP message bodies. An ICAP
	message body, if any, typically includes a complete HTTP message
	(required HTTP headers plus optional HTTP message body). When
	computing HTTP message body size for these logformat codes, Squid
	either includes or excludes chunked encoding overheads; see
	code-specific documentation for details.

	For Secure ICAP services, all size-related information is currently
	computed before/after TLS encryption/decryption, as if TLS was not
	in use at all.

	The following format codes are also available for ICAP logs:

		icap::&lt;A	ICAP server IP address. Similar to &lt;A.

		icap::&lt;service_name	ICAP service name from the icap_service
				option in Squid configuration file.

		icap::ru	ICAP Request-URI. Similar to ru.

		icap::rm	ICAP request method (REQMOD, RESPMOD, or
				OPTIONS). Similar to existing rm.

		icap::&gt;st	The total size of the ICAP request sent to the ICAP
				server (ICAP headers + ICAP body), including chunking
				metadata (if any).

		icap::&lt;st	The total size of the ICAP response received from the
				ICAP server (ICAP headers + ICAP body), including
				chunking metadata (if any).

		icap::&lt;bs	The size of the ICAP response body received from the
				ICAP server, excluding chunking metadata (if any).

		icap::tr 	Transaction response time (in
				milliseconds).  The timer starts when
				the ICAP transaction is created and
				stops when the transaction is completed.
				Similar to tr.

		icap::tio	Transaction I/O time (in milliseconds). The
				timer starts when the first ICAP request
				byte is scheduled for sending. The timers
				stops when the last byte of the ICAP response
				is received.

		icap::to 	Transaction outcome: ICAP_ERR* for all
				transaction errors, ICAP_OPT for OPTION
				transactions, ICAP_ECHO for 204
				responses, ICAP_MOD for message
				modification, and ICAP_SAT for request
				satisfaction. Similar to Ss.

		icap::Hs	ICAP response status code. Similar to Hs.

		icap::&gt;h	ICAP request header(s). Similar to &gt;h.

		icap::&lt;h	ICAP response header(s). Similar to &lt;h.

	The default ICAP log format, which can be used without an explicit
	definition, is called icap_squid:

logformat icap_squid %ts.%03tu %6icap::tr %&gt;A %icap::to/%03icap::Hs %icap::&lt;st %icap::rm %icap::ru %un -/%icap::&lt;A -

	See also: logformat and %adapt::&lt;last_h



[Index](index#toc_icap_log) | [Alphabetical Index](index_all#toc_icap_log)

