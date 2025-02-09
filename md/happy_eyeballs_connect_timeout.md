---
title: "Squid 3.1.0 configuration directive: happy_eyeballs_connect_timeout"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure happy_eyeballs_connect_timeout
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_happy_eyeballs_connect_timeout) | [Alphabetical Index](index_all#toc_happy_eyeballs_connect_timeout)

## Option Name:
[happy_eyeballs_connect_timeout](#happy_eyeballs_connect_timeout)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** happy_eyeballs_connect_timeout 250


## Suggested Config:
```plaintext

```

## Details:

	This Happy Eyeballs (RFC 8305) tuning directive specifies the minimum
	delay between opening a primary to-server connection and opening a
	spare to-server connection for the same master transaction. This delay
	is similar to the Connection Attempt Delay in RFC 8305, but it is only
	applied to the first spare connection attempt. Subsequent spare
	connection attempts use happy_eyeballs_connect_gap, and primary
	connection attempts are not artificially delayed at all.

	Terminology: The "primary" and "spare" designations are determined by
	the order of DNS answers received by Squid: If Squid DNS AAAA query
	was answered first, then primary connections are connections to IPv6
	peer addresses (while spare connections use IPv4 addresses).
	Similarly, if Squid DNS A query was answered first, then primary
	connections are connections to IPv4 peer addresses (while spare
	connections use IPv6 addresses).

	Shorter happy_eyeballs_connect_timeout values reduce master
	transaction response time, potentially improving user-perceived
	response times (i.e., making user eyeballs happier). Longer delays
	reduce both concurrent connection level and server bombardment with
	connection requests, potentially improving overall Squid performance
	and reducing the chance of being blocked by servers for opening too
	many unused connections.

	RFC 8305 prohibits happy_eyeballs_connect_timeout values smaller than
	10 (milliseconds) to "avoid congestion collapse in the presence of
	high packet-loss rates".

	The following Happy Eyeballs directives place additional connection
	opening restrictions: happy_eyeballs_connect_gap and
	happy_eyeballs_connect_limit.



[Index](index#toc_happy_eyeballs_connect_timeout) | [Alphabetical Index](index_all#toc_happy_eyeballs_connect_timeout)

