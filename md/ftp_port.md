---
title: "Squid 3.1.0 configuration directive: ftp_port"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure ftp_port
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_ftp_port) | [Alphabetical Index](index_all#toc_ftp_port)

## Option Name:
[ftp_port](#ftp_port)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	Enables Native FTP proxy by specifying the socket address where Squid
	listens for FTP client requests. See http_port directive for various
	ways to specify the listening address and mode.

	Usage: ftp_port address [mode] [options]

	WARNING: This is a new, experimental, complex feature that has seen
	limited production exposure. Some Squid modules (e.g., caching) do not
	currently work with native FTP proxying, and many features have not
	even been tested for compatibility. Test well before deploying!

	Native FTP proxying differs substantially from proxying HTTP requests
	with ftp:// URIs because Squid works as an FTP server and receives
	actual FTP commands (rather than HTTP requests with FTP URLs).

	Native FTP commands accepted at ftp_port are internally converted or
	wrapped into HTTP-like messages. The same happens to Native FTP
	responses received from FTP origin servers. Those HTTP-like messages
	are shoveled through regular access control and adaptation layers
	between the FTP client and the FTP origin server. This allows Squid to
	examine, adapt, block, and log FTP exchanges. Squid reuses most HTTP
	mechanisms when shoveling wrapped FTP messages. For example,
	http_access and adaptation_access directives are used.

	Modes:

	   intercept	Same as http_port intercept. The FTP origin address is
			determined based on the intended destination of the
			intercepted connection.

	   tproxy	Support Linux TPROXY for spoofing outgoing
			connections using the client IP address.
			NP: disables authentication and maybe IPv6 on the port.

	By default (i.e., without an explicit mode option), Squid extracts the
	FTP origin address from the login@origin parameter of the FTP USER
	command. Many popular FTP clients support such native FTP proxying.

	Options:

	   name=token	Specifies an internal name for the port. Defaults to
			the port address. Usable with myportname ACL.

	   ftp-track-dirs
			Enables tracking of FTP directories by injecting extra
			PWD commands and adjusting Request-URI (in wrapping
			HTTP requests) to reflect the current FTP server
			directory. Tracking is disabled by default.

	   protocol=FTP	Protocol to reconstruct accelerated and intercepted
			requests with. Defaults to FTP. No other accepted
			values have been tested with. An unsupported value
			results in a FATAL error. Accepted values are FTP,
			HTTP (or HTTP/1.1), and HTTPS (or HTTPS/1.1).

	Other http_port modes and options that are not specific to HTTP and
	HTTPS may also work.
	Among the options that are not available for ftp_port:
	- require-proxy-header
	- ssl-bump



[Index](index#toc_ftp_port) | [Alphabetical Index](index_all#toc_ftp_port)

