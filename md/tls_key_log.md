---
title: "Squid 3.1.0 configuration directive: tls_key_log"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure tls_key_log
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_tls_key_log) | [Alphabetical Index](index_all#toc_tls_key_log)

## Option Name:
[tls_key_log](#tls_key_log)
 * **Replaces:** 
 * **Requires:** --with-openssl
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	Configures whether and where Squid records pre-master secret and
	related encryption details for TLS connections accepted or established
	by Squid. These connections include connections accepted at
	https_port, TLS connections opened to origin servers/cache_peers/ICAP
	services, and TLS tunnels bumped by Squid using the SslBump feature.
	This log (a.k.a. SSLKEYLOGFILE) is meant for triage with traffic
	inspection tools like Wireshark.

	    tls_key_log &lt;destination&gt; [options] [if [!]&lt;acl&gt;...]

	WARNING: This log allows anybody to decrypt the corresponding
	encrypted TLS connections, both in-flight and postmortem.

	At most one log file is supported at this time. Repeated tls_key_log
	directives are treated as fatal configuration errors. By default, no
	log is created or updated.

	If the log file does not exist, Squid creates it. Otherwise, Squid
	appends an existing log file.

	The directive is consulted whenever a TLS connection is accepted or
	established by Squid. TLS connections that fail the handshake may be
	logged if Squid got enough information to form a log record. A record
	is logged only if all of the configured ACLs match.

	While transport-related ACLs like src and dst should work, Squid may
	not have access to higher-level information. For example, when logging
	accepted https_port connections, Squid does not yet have access to the
	expected HTTPS request. Similarly, an HTTPS response is not available
	when logging most TLS connections established by Squid.

	The log record format is meant to be compatible with TLS deciphering
	features of Wireshark which relies on fields like CLIENT_RANDOM and
	RSA Master-Key. A single log record usually spans multiple lines.
	Technical documentation for that format is maintained inside the
	Wireshark code (e.g., see tls_keylog_process_lines() comments as of
	Wireshark commit e3d44136f0f0026c5e893fa249f458073f3b7328). TLS key
	log does not support custom record formats.

	This clause only supports fast acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.

	See access_log's &lt;module&gt;:&lt;place&gt; parameter for a list of supported
	logging destinations.

	TLS key log supports all access_log key=value options with the
	exception of logformat=name.

	Requires Squid built with OpenSSL support.



[Index](index#toc_tls_key_log) | [Alphabetical Index](index_all#toc_tls_key_log)

