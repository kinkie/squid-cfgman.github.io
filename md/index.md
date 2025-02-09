---
title: Squid 3.1.0 configuration file
keywords: squid squid.conf config configure
description: Squid 3.1.0
---

##	WELCOME TO SQUID 8.0.0-VCS

	This is the documentation for the Squid configuration file.
	This documentation can also be found online at:
		http://www.squid-cache.org/Doc/config/

	You may wish to look at the Squid home page and wiki for the
	FAQ and other documentation:
		http://www.squid-cache.org/
		https://wiki.squid-cache.org/SquidFaq
		https://wiki.squid-cache.org/ConfigExamples

	This documentation shows what the defaults for various directives
	happen to be.  If you don't need to change the default, you should
	leave the line out of your squid.conf in most cases.

	In some cases "none" refers to no default setting at all,
	while in other cases it refers to the value of the option
	- the comments for that keyword indicate if this is the case.


##  Configuration options can be included using the "include" directive.
  Include takes a list of files to include. Quoting and wildcards are
  supported.

  For example,

  include /path/to/included/file/squid.acl.config

  Includes can be nested up to a hard-coded depth of 16 levels.
  This arbitrary restriction is to prevent recursive include references
  from causing Squid entering an infinite loop whilst trying to load
  configuration files.

  Values with byte units

	Squid accepts size units on some size related directives. All
	such directives are documented with a default value displaying
	a unit.

	Units accepted by Squid are:
		bytes - byte
		KB - Kilobyte (2^10, 1'024 bytes)
		MB - Megabyte (2^20, 1'048'576 bytes)
		GB - Gigabyte (2^30, 1'073'741'824 bytes)
	Squid does not yet support KiB, MiB, and GiB unit names.

  Values with time units

	Time-related directives marked with either "time-units" or
	"time-units-small" accept a time unit. The supported time units are:

		nanosecond (time-units-small only)
		microsecond (time-units-small only)
		millisecond
		second
		minute
		hour
		day
		week
		fortnight
		month - 30 days
		year - 31557790080 milliseconds (just over 365 days)
		decade

  Values with spaces, quotes, and other special characters

	Squid supports directive parameters with spaces, quotes, and other
	special characters. Surround such parameters with "double quotes". Use
	the configuration_includes_quoted_values directive to enable or
	disable that support.

	Squid supports reading configuration option parameters from external
	files using the syntax:
		parameters("/path/filename")
	For example:
		acl allowlist dstdomain parameters("/etc/squid/allowlist.txt")

  Conditional configuration

	If-statements can be used to make configuration directives
	depend on conditions:

	    if <CONDITION>
	        ... regular configuration directives ...
	    [else
	        ... regular configuration directives ...]
	    endif

	The else part is optional. The keywords "if", "else", and "endif"
	must be typed on their own lines, as if they were regular
	configuration directives.

	NOTE: An else-if condition is not supported.

	These individual conditions types are supported:

	    true
		Always evaluates to true.
	    false
		Always evaluates to false.
	    <integer> = <integer>
	        Equality comparison of two integer numbers.

  SMP-Related Macros

	The following SMP-related preprocessor macros can be used.

	${process_name} expands to the current Squid process "name"
	(e.g., squid1, squid2, or cache1).

	${process_number} expands to the current Squid process
	identifier, which is an integer number (e.g., 1, 2, 3) unique
	across all Squid processes of the current service instance.

	${service_name} expands into the current Squid service instance
	name identifier which is provided by -n on the command line.

  Logformat Macros

	Logformat macros can be used in many places outside of the logformat
	directive. In theory, all of the logformat codes can be used as %macros,
	where they are supported. In practice, a %macro expands as a dash (-) when
	the transaction does not yet have enough information and a value is needed.

	There is no definitive list of what tokens are available at the various
	stages of the transaction.

	And some information may already be available to Squid but not yet
	committed where the macro expansion code can access it (report
	such instances!). The macro will be expanded into a single dash
	('-') in such cases. Not all macros have been tested.


## OPTIONS FOR SMP

 * [workers](workers)
 * [cpu_affinity_map](cpu_affinity_map)
 * [shared_memory_locking](shared_memory_locking)
 * [hopeless_kid_revival_delay](hopeless_kid_revival_delay)

## OPTIONS FOR AUTHENTICATION

 * [auth_param](auth_param)
 * [authenticate_cache_garbage_interval](authenticate_cache_garbage_interval)
 * [authenticate_ttl](authenticate_ttl)
 * [authenticate_ip_ttl](authenticate_ip_ttl)

## ACCESS CONTROLS

 * [external_acl_type](external_acl_type)
 * [acl](acl)
 * [proxy_protocol_access](proxy_protocol_access)
 * [follow_x_forwarded_for](follow_x_forwarded_for)
 * [acl_uses_indirect_client](acl_uses_indirect_client)
 * [delay_pool_uses_indirect_client](delay_pool_uses_indirect_client)
 * [log_uses_indirect_client](log_uses_indirect_client)
 * [tproxy_uses_indirect_client](tproxy_uses_indirect_client)
 * [spoof_client_ip](spoof_client_ip)
 * [http_access](http_access)
 * [adapted_http_access](adapted_http_access)
 * [http_reply_access](http_reply_access)
 * [icp_access](icp_access)
 * [htcp_access](htcp_access)
 * [htcp_clr_access](htcp_clr_access)
 * [miss_access](miss_access)
 * [reply_body_max_size](reply_body_max_size)
 * [on_unsupported_protocol](on_unsupported_protocol)
 * [auth_schemes](auth_schemes)

## NETWORK OPTIONS

 * [http_port](http_port)
 * [https_port](https_port)
 * [ftp_port](ftp_port)
 * [tcp_outgoing_tos](tcp_outgoing_tos)
 * [clientside_tos](clientside_tos)
 * [tcp_outgoing_mark](tcp_outgoing_mark)
 * [mark_client_packet](mark_client_packet)
 * [mark_client_connection](mark_client_connection)
 * [qos_flows](qos_flows)
 * [tcp_outgoing_address](tcp_outgoing_address)
 * [host_verify_strict](host_verify_strict)
 * [client_dst_passthru](client_dst_passthru)

## TLS OPTIONS

 * [tls_outgoing_options](tls_outgoing_options)

## SSL OPTIONS

 * [ssl_unclean_shutdown](ssl_unclean_shutdown)
 * [ssl_engine](ssl_engine)
 * [sslproxy_session_ttl](sslproxy_session_ttl)
 * [sslproxy_session_cache_size](sslproxy_session_cache_size)
 * [sslproxy_foreign_intermediate_certs](sslproxy_foreign_intermediate_certs)
 * [sslproxy_cert_sign_hash](sslproxy_cert_sign_hash)
 * [ssl_bump](ssl_bump)
 * [sslproxy_cert_error](sslproxy_cert_error)
 * [sslproxy_cert_sign](sslproxy_cert_sign)
 * [sslproxy_cert_adapt](sslproxy_cert_adapt)
 * [sslpassword_program](sslpassword_program)

## OPTIONS RELATING TO EXTERNAL SSL_CRTD

 * [sslcrtd_program](sslcrtd_program)
 * [sslcrtd_children](sslcrtd_children)
 * [sslcrtvalidator_program](sslcrtvalidator_program)
 * [sslcrtvalidator_children](sslcrtvalidator_children)

## OPTIONS WHICH AFFECT THE NEIGHBOR SELECTION ALGORITHM

 * [cache_peer](cache_peer)
 * [cache_peer_access](cache_peer_access)
 * [neighbor_type_domain](neighbor_type_domain)
 * [dead_peer_timeout](dead_peer_timeout)
 * [forward_max_tries](forward_max_tries)

## MEMORY CACHE OPTIONS

 * [cache_mem](cache_mem)
 * [maximum_object_size_in_memory](maximum_object_size_in_memory)
 * [memory_cache_shared](memory_cache_shared)
 * [memory_cache_mode](memory_cache_mode)
 * [memory_replacement_policy](memory_replacement_policy)

## DISK CACHE OPTIONS

 * [cache_replacement_policy](cache_replacement_policy)
 * [minimum_object_size](minimum_object_size)
 * [maximum_object_size](maximum_object_size)
 * [cache_dir](cache_dir)
 * [store_dir_select_algorithm](store_dir_select_algorithm)
 * [paranoid_hit_validation](paranoid_hit_validation)
 * [max_open_disk_fds](max_open_disk_fds)
 * [cache_swap_low](cache_swap_low)
 * [cache_swap_high](cache_swap_high)

## LOGFILE OPTIONS

 * [logformat](logformat)
 * [access_log](access_log)
 * [icap_log](icap_log)
 * [logfile_daemon](logfile_daemon)
 * [stats_collection](stats_collection)
 * [cache_store_log](cache_store_log)
 * [cache_swap_state](cache_swap_state)
 * [logfile_rotate](logfile_rotate)
 * [mime_table](mime_table)
 * [log_mime_hdrs](log_mime_hdrs)
 * [pid_filename](pid_filename)
 * [client_netmask](client_netmask)
 * [strip_query_terms](strip_query_terms)
 * [buffered_logs](buffered_logs)
 * [netdb_filename](netdb_filename)
 * [tls_key_log](tls_key_log)

## OPTIONS FOR TROUBLESHOOTING

 * [cache_log](cache_log)
 * [cache_log_message](cache_log_message)
 * [debug_options](debug_options)
 * [coredump_dir](coredump_dir)

## OPTIONS FOR FTP GATEWAYING

 * [ftp_user](ftp_user)
 * [ftp_passive](ftp_passive)
 * [ftp_epsv_all](ftp_epsv_all)
 * [ftp_epsv](ftp_epsv)
 * [ftp_eprt](ftp_eprt)
 * [ftp_sanitycheck](ftp_sanitycheck)
 * [ftp_telnet_protocol](ftp_telnet_protocol)

## OPTIONS FOR EXTERNAL SUPPORT PROGRAMS

 * [diskd_program](diskd_program)
 * [unlinkd_program](unlinkd_program)
 * [pinger_program](pinger_program)
 * [pinger_enable](pinger_enable)

## OPTIONS FOR URL REWRITING

 * [url_rewrite_program](url_rewrite_program)
 * [url_rewrite_children](url_rewrite_children)
 * [url_rewrite_host_header](url_rewrite_host_header)
 * [url_rewrite_access](url_rewrite_access)
 * [url_rewrite_bypass](url_rewrite_bypass)
 * [url_rewrite_extras](url_rewrite_extras)
 * [url_rewrite_timeout](url_rewrite_timeout)

## OPTIONS FOR STORE ID

 * [store_id_program](store_id_program)
 * [store_id_extras](store_id_extras)
 * [store_id_children](store_id_children)
 * [store_id_access](store_id_access)
 * [store_id_bypass](store_id_bypass)

## OPTIONS FOR TUNING THE CACHE

 * [cache](cache)
 * [send_hit](send_hit)
 * [store_miss](store_miss)
 * [max_stale](max_stale)
 * [refresh_pattern](refresh_pattern)
 * [quick_abort_min](quick_abort_min)
 * [quick_abort_max](quick_abort_max)
 * [quick_abort_pct](quick_abort_pct)
 * [read_ahead_gap](read_ahead_gap)
 * [negative_ttl](negative_ttl)
 * [positive_dns_ttl](positive_dns_ttl)
 * [negative_dns_ttl](negative_dns_ttl)
 * [range_offset_limit](range_offset_limit)
 * [minimum_expiry_time](minimum_expiry_time)
 * [store_avg_object_size](store_avg_object_size)
 * [store_objects_per_bucket](store_objects_per_bucket)

## HTTP OPTIONS

 * [request_header_max_size](request_header_max_size)
 * [reply_header_max_size](reply_header_max_size)
 * [request_body_max_size](request_body_max_size)
 * [client_request_buffer_max_size](client_request_buffer_max_size)
 * [broken_posts](broken_posts)
 * [adaptation_uses_indirect_client](adaptation_uses_indirect_client)
 * [via](via)
 * [vary_ignore_expire](vary_ignore_expire)
 * [request_header_access](request_header_access)
 * [reply_header_access](reply_header_access)
 * [request_header_replace](request_header_replace)
 * [reply_header_replace](reply_header_replace)
 * [request_header_add](request_header_add)
 * [reply_header_add](reply_header_add)
 * [note](note)
 * [relaxed_header_parser](relaxed_header_parser)
 * [collapsed_forwarding](collapsed_forwarding)
 * [collapsed_forwarding_access](collapsed_forwarding_access)
 * [shared_transient_entries_limit](shared_transient_entries_limit)

## TIMEOUTS

 * [forward_timeout](forward_timeout)
 * [connect_timeout](connect_timeout)
 * [peer_connect_timeout](peer_connect_timeout)
 * [read_timeout](read_timeout)
 * [write_timeout](write_timeout)
 * [request_timeout](request_timeout)
 * [request_start_timeout](request_start_timeout)
 * [client_idle_pconn_timeout](client_idle_pconn_timeout)
 * [ftp_client_idle_timeout](ftp_client_idle_timeout)
 * [client_lifetime](client_lifetime)
 * [pconn_lifetime](pconn_lifetime)
 * [half_closed_clients](half_closed_clients)
 * [server_idle_pconn_timeout](server_idle_pconn_timeout)
 * [shutdown_lifetime](shutdown_lifetime)

## ADMINISTRATIVE PARAMETERS

 * [cache_mgr](cache_mgr)
 * [mail_from](mail_from)
 * [mail_program](mail_program)
 * [cache_effective_user](cache_effective_user)
 * [cache_effective_group](cache_effective_group)
 * [httpd_suppress_version_string](httpd_suppress_version_string)
 * [visible_hostname](visible_hostname)
 * [unique_hostname](unique_hostname)
 * [hostname_aliases](hostname_aliases)
 * [umask](umask)

## HTTPD-ACCELERATOR OPTIONS

 * [httpd_accel_surrogate_id](httpd_accel_surrogate_id)
 * [http_accel_surrogate_remote](http_accel_surrogate_remote)

## DELAY POOL PARAMETERS

 * [delay_pools](delay_pools)
 * [delay_class](delay_class)
 * [delay_access](delay_access)
 * [delay_parameters](delay_parameters)
 * [delay_initial_bucket_level](delay_initial_bucket_level)

## CLIENT DELAY POOL PARAMETERS

 * [client_delay_pools](client_delay_pools)
 * [client_delay_initial_bucket_level](client_delay_initial_bucket_level)
 * [client_delay_parameters](client_delay_parameters)
 * [client_delay_access](client_delay_access)
 * [response_delay_pool](response_delay_pool)
 * [response_delay_pool_access](response_delay_pool_access)

## WCCPv1 AND WCCPv2 CONFIGURATION OPTIONS

 * [wccp_router](wccp_router)
 * [wccp2_router](wccp2_router)
 * [wccp_version](wccp_version)
 * [wccp2_rebuild_wait](wccp2_rebuild_wait)
 * [wccp2_forwarding_method](wccp2_forwarding_method)
 * [wccp2_return_method](wccp2_return_method)
 * [wccp2_assignment_method](wccp2_assignment_method)
 * [wccp2_service](wccp2_service)
 * [wccp2_service_info](wccp2_service_info)
 * [wccp2_weight](wccp2_weight)
 * [wccp_address](wccp_address)
 * [wccp2_address](wccp2_address)

## PERSISTENT CONNECTION HANDLING

 Also see "pconn_timeout" in the TIMEOUTS section

 * [client_persistent_connections](client_persistent_connections)
 * [server_persistent_connections](server_persistent_connections)
 * [persistent_connection_after_error](persistent_connection_after_error)
 * [detect_broken_pconn](detect_broken_pconn)

## CACHE DIGEST OPTIONS

 * [digest_generation](digest_generation)
 * [digest_bits_per_entry](digest_bits_per_entry)
 * [digest_rebuild_period](digest_rebuild_period)
 * [digest_rewrite_period](digest_rewrite_period)
 * [digest_swapout_chunk_size](digest_swapout_chunk_size)
 * [digest_rebuild_chunk_percentage](digest_rebuild_chunk_percentage)

## SNMP OPTIONS

 * [snmp_port](snmp_port)
 * [snmp_access](snmp_access)
 * [snmp_incoming_address](snmp_incoming_address)
 * [snmp_outgoing_address](snmp_outgoing_address)

## ICP OPTIONS

 * [icp_port](icp_port)
 * [htcp_port](htcp_port)
 * [log_icp_queries](log_icp_queries)
 * [udp_incoming_address](udp_incoming_address)
 * [udp_outgoing_address](udp_outgoing_address)
 * [icp_hit_stale](icp_hit_stale)
 * [minimum_direct_hops](minimum_direct_hops)
 * [minimum_direct_rtt](minimum_direct_rtt)
 * [netdb_low](netdb_low)
 * [netdb_high](netdb_high)
 * [netdb_ping_period](netdb_ping_period)
 * [query_icmp](query_icmp)
 * [test_reachability](test_reachability)
 * [icp_query_timeout](icp_query_timeout)
 * [maximum_icp_query_timeout](maximum_icp_query_timeout)
 * [minimum_icp_query_timeout](minimum_icp_query_timeout)
 * [background_ping_rate](background_ping_rate)

## MULTICAST ICP OPTIONS

 * [mcast_groups](mcast_groups)
 * [mcast_icp_query_timeout](mcast_icp_query_timeout)

## INTERNAL ICON OPTIONS

 * [icon_directory](icon_directory)
 * [global_internal_static](global_internal_static)
 * [short_icon_urls](short_icon_urls)

## ERROR PAGE OPTIONS

 * [error_directory](error_directory)
 * [error_default_language](error_default_language)
 * [error_log_languages](error_log_languages)
 * [err_page_stylesheet](err_page_stylesheet)
 * [err_html_text](err_html_text)
 * [email_err_data](email_err_data)
 * [deny_info](deny_info)

## OPTIONS INFLUENCING REQUEST FORWARDING

 * [nonhierarchical_direct](nonhierarchical_direct)
 * [prefer_direct](prefer_direct)
 * [cache_miss_revalidate](cache_miss_revalidate)
 * [always_direct](always_direct)
 * [never_direct](never_direct)

## ADVANCED NETWORKING OPTIONS

 * [incoming_udp_average](incoming_udp_average)
 * [incoming_tcp_average](incoming_tcp_average)
 * [incoming_dns_average](incoming_dns_average)
 * [min_udp_poll_cnt](min_udp_poll_cnt)
 * [min_dns_poll_cnt](min_dns_poll_cnt)
 * [min_tcp_poll_cnt](min_tcp_poll_cnt)
 * [accept_filter](accept_filter)
 * [client_ip_max_connections](client_ip_max_connections)
 * [tcp_recv_bufsize](tcp_recv_bufsize)

## ICAP OPTIONS

 * [icap_enable](icap_enable)
 * [icap_connect_timeout](icap_connect_timeout)
 * [icap_io_timeout](icap_io_timeout)
 * [icap_service_failure_limit](icap_service_failure_limit)
 * [icap_service_revival_delay](icap_service_revival_delay)
 * [icap_preview_enable](icap_preview_enable)
 * [icap_preview_size](icap_preview_size)
 * [icap_206_enable](icap_206_enable)
 * [icap_default_options_ttl](icap_default_options_ttl)
 * [icap_persistent_connections](icap_persistent_connections)
 * [adaptation_send_client_ip](adaptation_send_client_ip)
 * [adaptation_send_username](adaptation_send_username)
 * [icap_client_username_header](icap_client_username_header)
 * [icap_client_username_encode](icap_client_username_encode)
 * [icap_service](icap_service)
 * [icap_class](icap_class)
 * [icap_access](icap_access)

## eCAP OPTIONS

 * [ecap_enable](ecap_enable)
 * [ecap_service](ecap_service)
 * [loadable_modules](loadable_modules)

## MESSAGE ADAPTATION OPTIONS

 * [adaptation_service_set](adaptation_service_set)
 * [adaptation_service_chain](adaptation_service_chain)
 * [adaptation_access](adaptation_access)
 * [adaptation_service_iteration_limit](adaptation_service_iteration_limit)
 * [adaptation_masterx_shared_names](adaptation_masterx_shared_names)
 * [adaptation_meta](adaptation_meta)
 * [icap_retry](icap_retry)
 * [icap_retry_limit](icap_retry_limit)

## DNS OPTIONS

 * [check_hostnames](check_hostnames)
 * [allow_underscore](allow_underscore)
 * [dns_retransmit_interval](dns_retransmit_interval)
 * [dns_timeout](dns_timeout)
 * [dns_packet_max](dns_packet_max)
 * [dns_defnames](dns_defnames)
 * [dns_multicast_local](dns_multicast_local)
 * [dns_nameservers](dns_nameservers)
 * [hosts_file](hosts_file)
 * [append_domain](append_domain)
 * [ignore_unknown_nameservers](ignore_unknown_nameservers)
 * [ipcache_size](ipcache_size)
 * [ipcache_low](ipcache_low)
 * [ipcache_high](ipcache_high)
 * [fqdncache_size](fqdncache_size)

## MISCELLANEOUS

 * [configuration_includes_quoted_values](configuration_includes_quoted_values)
 * [memory_pools](memory_pools)
 * [memory_pools_limit](memory_pools_limit)
 * [forwarded_for](forwarded_for)
 * [cachemgr_passwd](cachemgr_passwd)
 * [client_db](client_db)
 * [refresh_all_ims](refresh_all_ims)
 * [reload_into_ims](reload_into_ims)
 * [connect_retries](connect_retries)
 * [retry_on_error](retry_on_error)
 * [as_whois_server](as_whois_server)
 * [offline_mode](offline_mode)
 * [uri_whitespace](uri_whitespace)
 * [chroot](chroot)
 * [pipeline_prefetch](pipeline_prefetch)
 * [high_response_time_warning](high_response_time_warning)
 * [high_page_fault_warning](high_page_fault_warning)
 * [high_memory_warning](high_memory_warning)
 * [sleep_after_fork](sleep_after_fork)
 * [windows_ipaddrchangemonitor](windows_ipaddrchangemonitor)
 * [eui_lookup](eui_lookup)
 * [max_filedescriptors](max_filedescriptors)
 * [force_request_body_continuation](force_request_body_continuation)
 * [http_upgrade_request_protocols](http_upgrade_request_protocols)
 * [server_pconn_for_nonretriable](server_pconn_for_nonretriable)
 * [happy_eyeballs_connect_timeout](happy_eyeballs_connect_timeout)
 * [happy_eyeballs_connect_gap](happy_eyeballs_connect_gap)
 * [happy_eyeballs_connect_limit](happy_eyeballs_connect_limit)

[Alphabetic index](index_all)
