---
title: "Squid 3.1.0 configuration directive: http_upgrade_request_protocols"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure http_upgrade_request_protocols
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_http_upgrade_request_protocols) | [Alphabetical Index](index_all#toc_http_upgrade_request_protocols)

## Option Name:
[http_upgrade_request_protocols](#http_upgrade_request_protocols)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** Upgrade header dropped, effectively blocking an upgrade attempt.


## Suggested Config:
```plaintext

```

## Details:

	Controls client-initiated and server-confirmed switching from HTTP to
	another protocol (or to several protocols) using HTTP Upgrade mechanism
	defined in RFC 7230 Section 6.7. Squid itself does not understand the
	protocols being upgraded to and participates in the upgraded
	communication only as a dumb TCP proxy. Admins should not allow
	upgrading to protocols that require a more meaningful proxy
	participation.

	Usage: http_upgrade_request_protocols &lt;protocol&gt; allow|deny [!]acl ...

	The required "protocol" parameter is either an all-caps word OTHER or an
	explicit protocol name (e.g. "WebSocket") optionally followed by a slash
	and a version token (e.g. "HTTP/3"). Explicit protocol names and
	versions are case sensitive.

	When an HTTP client sends an Upgrade request header, Squid iterates over
	the client-offered protocols and, for each protocol P (with an optional
	version V), evaluates the first non-empty set of
	http_upgrade_request_protocols rules (if any) from the following list:

		* All rules with an explicit protocol name equal to P.
		* All rules that use OTHER instead of a protocol name.

	In other words, rules using OTHER are considered for protocol P if and
	only if there are no rules mentioning P by name.

	If both of the above sets are empty, then Squid removes protocol P from
	the Upgrade offer.

	If the client sent a versioned protocol offer P/X, then explicit rules
	referring to the same-name but different-version protocol P/Y are
	declared inapplicable. Inapplicable rules are not evaluated (i.e. are
	ignored). However, inapplicable rules still belong to the first set of
	rules for P.

	Within the applicable rule subset, individual rules are evaluated in
	their configuration order. If all ACLs of an applicable "allow" rule
	match, then the protocol offered by the client is forwarded to the next
	hop as is. If all ACLs of an applicable "deny" rule match, then the
	offer is dropped. If no applicable rules have matching ACLs, then the
	offer is also dropped. The first matching rule also ends rules
	evaluation for the offered protocol.

	If all client-offered protocols are removed, then Squid forwards the
	client request without the Upgrade header. Squid never sends an empty
	Upgrade request header.

	An Upgrade request header with a value violating HTTP syntax is dropped
	and ignored without an attempt to use extractable individual protocol
	offers.

	Upon receiving an HTTP 101 (Switching Protocols) control message, Squid
	checks that the server listed at least one protocol name and sent a
	Connection:upgrade response header. Squid does not understand individual
	protocol naming and versioning concepts enough to implement stricter
	checks, but an admin can restrict HTTP 101 (Switching Protocols)
	responses further using http_reply_access. Responses denied by
	http_reply_access rules and responses flagged by the internal Upgrade
	checks result in HTTP 502 (Bad Gateway) ERR_INVALID_RESP errors and
	Squid-to-server connection closures.

	If Squid sends an Upgrade request header, and the next hop (e.g., the
	origin server) responds with an acceptable HTTP 101 (Switching
	Protocols), then Squid forwards that message to the client and becomes
	a TCP tunnel.

	The presence of an Upgrade request header alone does not preclude cache
	lookups. In other words, an Upgrade request might be satisfied from the
	cache, using regular HTTP caching rules.

	This clause only supports fast acl types.
	See https://wiki.squid-cache.org/SquidFaq/SquidAcl for details.

	Each of the following groups of configuration lines represents a
	separate configuration example:

	# never upgrade to protocol Foo; all others are OK
	http_upgrade_request_protocols Foo deny all
	http_upgrade_request_protocols OTHER allow all

	# only allow upgrades to protocol Bar (except for its first version)
	http_upgrade_request_protocols Bar/1 deny all
	http_upgrade_request_protocols Bar allow all
	http_upgrade_request_protocols OTHER deny all # this rule is optional

	# only allow upgrades to protocol Baz, and only if Baz is the only offer
	acl UpgradeHeaderHasMultipleOffers ...
	http_upgrade_request_protocols Baz deny UpgradeHeaderHasMultipleOffers
	http_upgrade_request_protocols Baz allow all



[Index](index#toc_http_upgrade_request_protocols) | [Alphabetical Index](index_all#toc_http_upgrade_request_protocols)

