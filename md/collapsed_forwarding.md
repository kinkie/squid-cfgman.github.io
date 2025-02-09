---
title: "Squid 3.1.0 configuration directive: collapsed_forwarding"
copyright: Copyright (C) 1996-2023 The Squid Software Foundation and contributors
keywords: squid squid.conf config configure collapsed_forwarding
versions: 3.1.0
proiduct: Squid Web cache
permissions: GNU GPL v2
# showMiniToc: true
---
[Index](index#toc_collapsed_forwarding) | [Alphabetical Index](index_all#toc_collapsed_forwarding)

## Option Name:
[collapsed_forwarding](#collapsed_forwarding)
 * **Replaces:** 
 * **Requires:** 
 * **Default Value:** collapsed_forwarding off


## Suggested Config:
```plaintext

```

## Details:

       This option controls whether Squid is allowed to merge multiple
       potentially cachable requests for the same URI before Squid knows
       whether the response is going to be cachable.

       When enabled, instead of forwarding each concurrent request for
       the same URL, Squid just sends the first of them. The other, so
       called "collapsed" requests, wait for the response to the first
       request and, if it happens to be cachable, use that response.
       Here, "concurrent requests" means "received after the first
       request headers were parsed and before the corresponding response
       headers were parsed".

       This feature is disabled by default: enabling collapsed
       forwarding needlessly delays forwarding requests that look
       cachable (when they are collapsed) but then need to be forwarded
       individually anyway because they end up being for uncachable
       content. However, in some cases, such as acceleration of highly
       cachable content with periodic or grouped expiration times, the
       gains from collapsing [large volumes of simultaneous refresh
       requests] outweigh losses from such delays.

       Squid collapses two kinds of requests: regular client requests
       received on one of the listening ports and internal "cache
       revalidation" requests which are triggered by those regular
       requests hitting a stale cached object. Revalidation collapsing
       is currently disabled for Squid instances containing SMP-aware
       disk or memory caches and for Vary-controlled cached objects.

       A response reused by the collapsed request is deemed fresh in that
       request processing context -- Squid does not apply refresh_pattern and
       internal freshness validation checks to collapsed transactions. Squid
       does apply send_hit rules.



[Index](index#toc_collapsed_forwarding) | [Alphabetical Index](index_all#toc_collapsed_forwarding)

