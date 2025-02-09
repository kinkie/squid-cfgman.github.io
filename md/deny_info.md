---
title: "Squid 3.1.0 configuration directive: deny_info"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure deny_info
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_deny_info) | [Alphabetical Index](index_all#toc_deny_info)

## Option Name:
[deny_info](#deny_info)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** none


## Suggested Config:
```plaintext

```

## Details:

	Usage:   deny_info err_page_name acl
	or       deny_info http://... acl
	or       deny_info TCP_RESET acl

	This can be used to return a ERR_ page for requests which
	do not pass the 'http_access' rules.  Squid remembers the last
	acl it evaluated in http_access, and if a 'deny_info' line exists
	for that ACL Squid returns a corresponding error page.

	The acl is typically the last acl on the http_access deny line which
	denied access. The exceptions to this rule are:
	- When Squid needs to request authentication credentials. It's then
	  the first authentication related acl encountered
	- When none of the http_access lines matches. It's then the last
	  acl processed on the last http_access line.
	- When the decision to deny access was made by an adaptation service,
	  the acl name is the corresponding eCAP or ICAP service_name.

	NP: If providing your own custom error pages with error_directory
	    you may also specify them by your custom file name:
	    Example: deny_info ERR_CUSTOM_ACCESS_DENIED bad_guys

	By default Squid will send "403 Forbidden". A different 4xx or 5xx
	may be specified by prefixing the file name with the code and a colon.
	e.g. 404:ERR_CUSTOM_ACCESS_DENIED

	Alternatively you can tell Squid to reset the TCP connection
	by specifying TCP_RESET.

	Or you can specify an error URL or URL pattern. The browsers will
	get redirected to the specified URL after formatting tags have
	been replaced. Redirect will be done with 302 or 307 according to
	HTTP/1.1 specs. A different 3xx code may be specified by prefixing
	the URL. e.g. 303:http://example.com/

	URL FORMAT TAGS:
		%a	- username (if available. Password NOT included)
		%A	- Local listening IP address the client connection was connected to
		%B	- FTP path URL
		%e	- Error number
		%E	- Error description
		%h	- Squid hostname
		%H	- Request domain name
		%i	- Client IP Address
		%M	- Request Method
		%O	- Unescaped message result from external ACL helper
		%o	- Message result from external ACL helper
		%p	- Request Port number
		%P	- Request Protocol name
		%R	- Request URL path
		%T	- Timestamp in RFC 1123 format
		%U	- Full canonical URL from client
			  (HTTPS URLs terminate with *)
		%u	- Full canonical URL from client
		%w	- Admin email from squid.conf
		%x	- Error name
		%%	- Literal percent (%) code




[Index](index#toc_deny_info) | [Alphabetical Index](index_all#toc_deny_info)

