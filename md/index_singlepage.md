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

<a name='workers' />
{% include workers %}
<a name='cpu_affinity_map' />
{% include cpu_affinity_map %}
<a name='shared_memory_locking' />
{% include shared_memory_locking %}
<a name='hopeless_kid_revival_delay' />
{% include hopeless_kid_revival_delay %}

## OPTIONS FOR AUTHENTICATION

<a name='auth_param' />
{% include auth_param %}
<a name='authenticate_cache_garbage_interval' />
{% include authenticate_cache_garbage_interval %}
<a name='authenticate_ttl' />
{% include authenticate_ttl %}
<a name='authenticate_ip_ttl' />
{% include authenticate_ip_ttl %}

## ACCESS CONTROLS

<a name='external_acl_type' />
{% include external_acl_type %}
<a name='acl' />
{% include acl %}
<a name='proxy_protocol_access' />
{% include proxy_protocol_access %}
<a name='follow_x_forwarded_for' />
{% include follow_x_forwarded_for %}
<a name='acl_uses_indirect_client' />
{% include acl_uses_indirect_client %}
<a name='delay_pool_uses_indirect_client' />
{% include delay_pool_uses_indirect_client %}
<a name='log_uses_indirect_client' />
{% include log_uses_indirect_client %}
<a name='tproxy_uses_indirect_client' />
{% include tproxy_uses_indirect_client %}
<a name='spoof_client_ip' />
{% include spoof_client_ip %}
<a name='http_access' />
{% include http_access %}
<a name='adapted_http_access' />
{% include adapted_http_access %}
<a name='http_reply_access' />
{% include http_reply_access %}
<a name='icp_access' />
{% include icp_access %}
<a name='htcp_access' />
{% include htcp_access %}
<a name='htcp_clr_access' />
{% include htcp_clr_access %}
<a name='miss_access' />
{% include miss_access %}
<a name='reply_body_max_size' />
{% include reply_body_max_size %}
<a name='on_unsupported_protocol' />
{% include on_unsupported_protocol %}
<a name='auth_schemes' />
{% include auth_schemes %}

## NETWORK OPTIONS

<a name='http_port' />
{% include http_port %}
<a name='https_port' />
{% include https_port %}
<a name='ftp_port' />
{% include ftp_port %}
<a name='tcp_outgoing_tos' />
{% include tcp_outgoing_tos %}
<a name='clientside_tos' />
{% include clientside_tos %}
<a name='tcp_outgoing_mark' />
{% include tcp_outgoing_mark %}
<a name='mark_client_packet' />
{% include mark_client_packet %}
<a name='mark_client_connection' />
{% include mark_client_connection %}
<a name='qos_flows' />
{% include qos_flows %}
<a name='tcp_outgoing_address' />
{% include tcp_outgoing_address %}
<a name='host_verify_strict' />
{% include host_verify_strict %}
<a name='client_dst_passthru' />
{% include client_dst_passthru %}

## TLS OPTIONS

<a name='tls_outgoing_options' />
{% include tls_outgoing_options %}

## SSL OPTIONS

<a name='ssl_unclean_shutdown' />
{% include ssl_unclean_shutdown %}
<a name='ssl_engine' />
{% include ssl_engine %}
<a name='sslproxy_session_ttl' />
{% include sslproxy_session_ttl %}
<a name='sslproxy_session_cache_size' />
{% include sslproxy_session_cache_size %}
<a name='sslproxy_foreign_intermediate_certs' />
{% include sslproxy_foreign_intermediate_certs %}
<a name='sslproxy_cert_sign_hash' />
{% include sslproxy_cert_sign_hash %}
<a name='ssl_bump' />
{% include ssl_bump %}
<a name='sslproxy_cert_error' />
{% include sslproxy_cert_error %}
<a name='sslproxy_cert_sign' />
{% include sslproxy_cert_sign %}
<a name='sslproxy_cert_adapt' />
{% include sslproxy_cert_adapt %}
<a name='sslpassword_program' />
{% include sslpassword_program %}

## OPTIONS RELATING TO EXTERNAL SSL_CRTD

<a name='sslcrtd_program' />
{% include sslcrtd_program %}
<a name='sslcrtd_children' />
{% include sslcrtd_children %}
<a name='sslcrtvalidator_program' />
{% include sslcrtvalidator_program %}
<a name='sslcrtvalidator_children' />
{% include sslcrtvalidator_children %}

## OPTIONS WHICH AFFECT THE NEIGHBOR SELECTION ALGORITHM

<a name='cache_peer' />
{% include cache_peer %}
<a name='cache_peer_access' />
{% include cache_peer_access %}
<a name='neighbor_type_domain' />
{% include neighbor_type_domain %}
<a name='dead_peer_timeout' />
{% include dead_peer_timeout %}
<a name='forward_max_tries' />
{% include forward_max_tries %}

## MEMORY CACHE OPTIONS

<a name='cache_mem' />
{% include cache_mem %}
<a name='maximum_object_size_in_memory' />
{% include maximum_object_size_in_memory %}
<a name='memory_cache_shared' />
{% include memory_cache_shared %}
<a name='memory_cache_mode' />
{% include memory_cache_mode %}
<a name='memory_replacement_policy' />
{% include memory_replacement_policy %}

## DISK CACHE OPTIONS

<a name='cache_replacement_policy' />
{% include cache_replacement_policy %}
<a name='minimum_object_size' />
{% include minimum_object_size %}
<a name='maximum_object_size' />
{% include maximum_object_size %}
<a name='cache_dir' />
{% include cache_dir %}
<a name='store_dir_select_algorithm' />
{% include store_dir_select_algorithm %}
<a name='paranoid_hit_validation' />
{% include paranoid_hit_validation %}
<a name='max_open_disk_fds' />
{% include max_open_disk_fds %}
<a name='cache_swap_low' />
{% include cache_swap_low %}
<a name='cache_swap_high' />
{% include cache_swap_high %}

## LOGFILE OPTIONS

<a name='logformat' />
{% include logformat %}
<a name='access_log' />
{% include access_log %}
<a name='icap_log' />
{% include icap_log %}
<a name='logfile_daemon' />
{% include logfile_daemon %}
<a name='stats_collection' />
{% include stats_collection %}
<a name='cache_store_log' />
{% include cache_store_log %}
<a name='cache_swap_state' />
{% include cache_swap_state %}
<a name='logfile_rotate' />
{% include logfile_rotate %}
<a name='mime_table' />
{% include mime_table %}
<a name='log_mime_hdrs' />
{% include log_mime_hdrs %}
<a name='pid_filename' />
{% include pid_filename %}
<a name='client_netmask' />
{% include client_netmask %}
<a name='strip_query_terms' />
{% include strip_query_terms %}
<a name='buffered_logs' />
{% include buffered_logs %}
<a name='netdb_filename' />
{% include netdb_filename %}
<a name='tls_key_log' />
{% include tls_key_log %}

## OPTIONS FOR TROUBLESHOOTING

<a name='cache_log' />
{% include cache_log %}
<a name='cache_log_message' />
{% include cache_log_message %}
<a name='debug_options' />
{% include debug_options %}
<a name='coredump_dir' />
{% include coredump_dir %}

## OPTIONS FOR FTP GATEWAYING

<a name='ftp_user' />
{% include ftp_user %}
<a name='ftp_passive' />
{% include ftp_passive %}
<a name='ftp_epsv_all' />
{% include ftp_epsv_all %}
<a name='ftp_epsv' />
{% include ftp_epsv %}
<a name='ftp_eprt' />
{% include ftp_eprt %}
<a name='ftp_sanitycheck' />
{% include ftp_sanitycheck %}
<a name='ftp_telnet_protocol' />
{% include ftp_telnet_protocol %}

## OPTIONS FOR EXTERNAL SUPPORT PROGRAMS

<a name='diskd_program' />
{% include diskd_program %}
<a name='unlinkd_program' />
{% include unlinkd_program %}
<a name='pinger_program' />
{% include pinger_program %}
<a name='pinger_enable' />
{% include pinger_enable %}

## OPTIONS FOR URL REWRITING

<a name='url_rewrite_program' />
{% include url_rewrite_program %}
<a name='url_rewrite_children' />
{% include url_rewrite_children %}
<a name='url_rewrite_host_header' />
{% include url_rewrite_host_header %}
<a name='url_rewrite_access' />
{% include url_rewrite_access %}
<a name='url_rewrite_bypass' />
{% include url_rewrite_bypass %}
<a name='url_rewrite_extras' />
{% include url_rewrite_extras %}
<a name='url_rewrite_timeout' />
{% include url_rewrite_timeout %}

## OPTIONS FOR STORE ID

<a name='store_id_program' />
{% include store_id_program %}
<a name='store_id_extras' />
{% include store_id_extras %}
<a name='store_id_children' />
{% include store_id_children %}
<a name='store_id_access' />
{% include store_id_access %}
<a name='store_id_bypass' />
{% include store_id_bypass %}

## OPTIONS FOR TUNING THE CACHE

<a name='cache' />
{% include cache %}
<a name='send_hit' />
{% include send_hit %}
<a name='store_miss' />
{% include store_miss %}
<a name='max_stale' />
{% include max_stale %}
<a name='refresh_pattern' />
{% include refresh_pattern %}
<a name='quick_abort_min' />
{% include quick_abort_min %}
<a name='quick_abort_max' />
{% include quick_abort_max %}
<a name='quick_abort_pct' />
{% include quick_abort_pct %}
<a name='read_ahead_gap' />
{% include read_ahead_gap %}
<a name='negative_ttl' />
{% include negative_ttl %}
<a name='positive_dns_ttl' />
{% include positive_dns_ttl %}
<a name='negative_dns_ttl' />
{% include negative_dns_ttl %}
<a name='range_offset_limit' />
{% include range_offset_limit %}
<a name='minimum_expiry_time' />
{% include minimum_expiry_time %}
<a name='store_avg_object_size' />
{% include store_avg_object_size %}
<a name='store_objects_per_bucket' />
{% include store_objects_per_bucket %}

## HTTP OPTIONS

<a name='request_header_max_size' />
{% include request_header_max_size %}
<a name='reply_header_max_size' />
{% include reply_header_max_size %}
<a name='request_body_max_size' />
{% include request_body_max_size %}
<a name='client_request_buffer_max_size' />
{% include client_request_buffer_max_size %}
<a name='broken_posts' />
{% include broken_posts %}
<a name='adaptation_uses_indirect_client' />
{% include adaptation_uses_indirect_client %}
<a name='via' />
{% include via %}
<a name='vary_ignore_expire' />
{% include vary_ignore_expire %}
<a name='request_header_access' />
{% include request_header_access %}
<a name='reply_header_access' />
{% include reply_header_access %}
<a name='request_header_replace' />
{% include request_header_replace %}
<a name='reply_header_replace' />
{% include reply_header_replace %}
<a name='request_header_add' />
{% include request_header_add %}
<a name='reply_header_add' />
{% include reply_header_add %}
<a name='note' />
{% include note %}
<a name='relaxed_header_parser' />
{% include relaxed_header_parser %}
<a name='collapsed_forwarding' />
{% include collapsed_forwarding %}
<a name='collapsed_forwarding_access' />
{% include collapsed_forwarding_access %}
<a name='shared_transient_entries_limit' />
{% include shared_transient_entries_limit %}

## TIMEOUTS

<a name='forward_timeout' />
{% include forward_timeout %}
<a name='connect_timeout' />
{% include connect_timeout %}
<a name='peer_connect_timeout' />
{% include peer_connect_timeout %}
<a name='read_timeout' />
{% include read_timeout %}
<a name='write_timeout' />
{% include write_timeout %}
<a name='request_timeout' />
{% include request_timeout %}
<a name='request_start_timeout' />
{% include request_start_timeout %}
<a name='client_idle_pconn_timeout' />
{% include client_idle_pconn_timeout %}
<a name='ftp_client_idle_timeout' />
{% include ftp_client_idle_timeout %}
<a name='client_lifetime' />
{% include client_lifetime %}
<a name='pconn_lifetime' />
{% include pconn_lifetime %}
<a name='half_closed_clients' />
{% include half_closed_clients %}
<a name='server_idle_pconn_timeout' />
{% include server_idle_pconn_timeout %}
<a name='shutdown_lifetime' />
{% include shutdown_lifetime %}

## ADMINISTRATIVE PARAMETERS

<a name='cache_mgr' />
{% include cache_mgr %}
<a name='mail_from' />
{% include mail_from %}
<a name='mail_program' />
{% include mail_program %}
<a name='cache_effective_user' />
{% include cache_effective_user %}
<a name='cache_effective_group' />
{% include cache_effective_group %}
<a name='httpd_suppress_version_string' />
{% include httpd_suppress_version_string %}
<a name='visible_hostname' />
{% include visible_hostname %}
<a name='unique_hostname' />
{% include unique_hostname %}
<a name='hostname_aliases' />
{% include hostname_aliases %}
<a name='umask' />
{% include umask %}

## HTTPD-ACCELERATOR OPTIONS

<a name='httpd_accel_surrogate_id' />
{% include httpd_accel_surrogate_id %}
<a name='http_accel_surrogate_remote' />
{% include http_accel_surrogate_remote %}

## DELAY POOL PARAMETERS

<a name='delay_pools' />
{% include delay_pools %}
<a name='delay_class' />
{% include delay_class %}
<a name='delay_access' />
{% include delay_access %}
<a name='delay_parameters' />
{% include delay_parameters %}
<a name='delay_initial_bucket_level' />
{% include delay_initial_bucket_level %}

## CLIENT DELAY POOL PARAMETERS

<a name='client_delay_pools' />
{% include client_delay_pools %}
<a name='client_delay_initial_bucket_level' />
{% include client_delay_initial_bucket_level %}
<a name='client_delay_parameters' />
{% include client_delay_parameters %}
<a name='client_delay_access' />
{% include client_delay_access %}
<a name='response_delay_pool' />
{% include response_delay_pool %}
<a name='response_delay_pool_access' />
{% include response_delay_pool_access %}

## WCCPv1 AND WCCPv2 CONFIGURATION OPTIONS

<a name='wccp_router' />
{% include wccp_router %}
<a name='wccp2_router' />
{% include wccp2_router %}
<a name='wccp_version' />
{% include wccp_version %}
<a name='wccp2_rebuild_wait' />
{% include wccp2_rebuild_wait %}
<a name='wccp2_forwarding_method' />
{% include wccp2_forwarding_method %}
<a name='wccp2_return_method' />
{% include wccp2_return_method %}
<a name='wccp2_assignment_method' />
{% include wccp2_assignment_method %}
<a name='wccp2_service' />
{% include wccp2_service %}
<a name='wccp2_service_info' />
{% include wccp2_service_info %}
<a name='wccp2_weight' />
{% include wccp2_weight %}
<a name='wccp_address' />
{% include wccp_address %}
<a name='wccp2_address' />
{% include wccp2_address %}

## PERSISTENT CONNECTION HANDLING

 Also see "pconn_timeout" in the TIMEOUTS section

<a name='client_persistent_connections' />
{% include client_persistent_connections %}
<a name='server_persistent_connections' />
{% include server_persistent_connections %}
<a name='persistent_connection_after_error' />
{% include persistent_connection_after_error %}
<a name='detect_broken_pconn' />
{% include detect_broken_pconn %}

## CACHE DIGEST OPTIONS

<a name='digest_generation' />
{% include digest_generation %}
<a name='digest_bits_per_entry' />
{% include digest_bits_per_entry %}
<a name='digest_rebuild_period' />
{% include digest_rebuild_period %}
<a name='digest_rewrite_period' />
{% include digest_rewrite_period %}
<a name='digest_swapout_chunk_size' />
{% include digest_swapout_chunk_size %}
<a name='digest_rebuild_chunk_percentage' />
{% include digest_rebuild_chunk_percentage %}

## SNMP OPTIONS

<a name='snmp_port' />
{% include snmp_port %}
<a name='snmp_access' />
{% include snmp_access %}
<a name='snmp_incoming_address' />
{% include snmp_incoming_address %}
<a name='snmp_outgoing_address' />
{% include snmp_outgoing_address %}

## ICP OPTIONS

<a name='icp_port' />
{% include icp_port %}
<a name='htcp_port' />
{% include htcp_port %}
<a name='log_icp_queries' />
{% include log_icp_queries %}
<a name='udp_incoming_address' />
{% include udp_incoming_address %}
<a name='udp_outgoing_address' />
{% include udp_outgoing_address %}
<a name='icp_hit_stale' />
{% include icp_hit_stale %}
<a name='minimum_direct_hops' />
{% include minimum_direct_hops %}
<a name='minimum_direct_rtt' />
{% include minimum_direct_rtt %}
<a name='netdb_low' />
{% include netdb_low %}
<a name='netdb_high' />
{% include netdb_high %}
<a name='netdb_ping_period' />
{% include netdb_ping_period %}
<a name='query_icmp' />
{% include query_icmp %}
<a name='test_reachability' />
{% include test_reachability %}
<a name='icp_query_timeout' />
{% include icp_query_timeout %}
<a name='maximum_icp_query_timeout' />
{% include maximum_icp_query_timeout %}
<a name='minimum_icp_query_timeout' />
{% include minimum_icp_query_timeout %}
<a name='background_ping_rate' />
{% include background_ping_rate %}

## MULTICAST ICP OPTIONS

<a name='mcast_groups' />
{% include mcast_groups %}
<a name='mcast_icp_query_timeout' />
{% include mcast_icp_query_timeout %}

## INTERNAL ICON OPTIONS

<a name='icon_directory' />
{% include icon_directory %}
<a name='global_internal_static' />
{% include global_internal_static %}
<a name='short_icon_urls' />
{% include short_icon_urls %}

## ERROR PAGE OPTIONS

<a name='error_directory' />
{% include error_directory %}
<a name='error_default_language' />
{% include error_default_language %}
<a name='error_log_languages' />
{% include error_log_languages %}
<a name='err_page_stylesheet' />
{% include err_page_stylesheet %}
<a name='err_html_text' />
{% include err_html_text %}
<a name='email_err_data' />
{% include email_err_data %}
<a name='deny_info' />
{% include deny_info %}

## OPTIONS INFLUENCING REQUEST FORWARDING

<a name='nonhierarchical_direct' />
{% include nonhierarchical_direct %}
<a name='prefer_direct' />
{% include prefer_direct %}
<a name='cache_miss_revalidate' />
{% include cache_miss_revalidate %}
<a name='always_direct' />
{% include always_direct %}
<a name='never_direct' />
{% include never_direct %}

## ADVANCED NETWORKING OPTIONS

<a name='incoming_udp_average' />
{% include incoming_udp_average %}
<a name='incoming_tcp_average' />
{% include incoming_tcp_average %}
<a name='incoming_dns_average' />
{% include incoming_dns_average %}
<a name='min_udp_poll_cnt' />
{% include min_udp_poll_cnt %}
<a name='min_dns_poll_cnt' />
{% include min_dns_poll_cnt %}
<a name='min_tcp_poll_cnt' />
{% include min_tcp_poll_cnt %}
<a name='accept_filter' />
{% include accept_filter %}
<a name='client_ip_max_connections' />
{% include client_ip_max_connections %}
<a name='tcp_recv_bufsize' />
{% include tcp_recv_bufsize %}

## ICAP OPTIONS

<a name='icap_enable' />
{% include icap_enable %}
<a name='icap_connect_timeout' />
{% include icap_connect_timeout %}
<a name='icap_io_timeout' />
{% include icap_io_timeout %}
<a name='icap_service_failure_limit' />
{% include icap_service_failure_limit %}
<a name='icap_service_revival_delay' />
{% include icap_service_revival_delay %}
<a name='icap_preview_enable' />
{% include icap_preview_enable %}
<a name='icap_preview_size' />
{% include icap_preview_size %}
<a name='icap_206_enable' />
{% include icap_206_enable %}
<a name='icap_default_options_ttl' />
{% include icap_default_options_ttl %}
<a name='icap_persistent_connections' />
{% include icap_persistent_connections %}
<a name='adaptation_send_client_ip' />
{% include adaptation_send_client_ip %}
<a name='adaptation_send_username' />
{% include adaptation_send_username %}
<a name='icap_client_username_header' />
{% include icap_client_username_header %}
<a name='icap_client_username_encode' />
{% include icap_client_username_encode %}
<a name='icap_service' />
{% include icap_service %}
<a name='icap_class' />
{% include icap_class %}
<a name='icap_access' />
{% include icap_access %}

## eCAP OPTIONS

<a name='ecap_enable' />
{% include ecap_enable %}
<a name='ecap_service' />
{% include ecap_service %}
<a name='loadable_modules' />
{% include loadable_modules %}

## MESSAGE ADAPTATION OPTIONS

<a name='adaptation_service_set' />
{% include adaptation_service_set %}
<a name='adaptation_service_chain' />
{% include adaptation_service_chain %}
<a name='adaptation_access' />
{% include adaptation_access %}
<a name='adaptation_service_iteration_limit' />
{% include adaptation_service_iteration_limit %}
<a name='adaptation_masterx_shared_names' />
{% include adaptation_masterx_shared_names %}
<a name='adaptation_meta' />
{% include adaptation_meta %}
<a name='icap_retry' />
{% include icap_retry %}
<a name='icap_retry_limit' />
{% include icap_retry_limit %}

## DNS OPTIONS

<a name='check_hostnames' />
{% include check_hostnames %}
<a name='allow_underscore' />
{% include allow_underscore %}
<a name='dns_retransmit_interval' />
{% include dns_retransmit_interval %}
<a name='dns_timeout' />
{% include dns_timeout %}
<a name='dns_packet_max' />
{% include dns_packet_max %}
<a name='dns_defnames' />
{% include dns_defnames %}
<a name='dns_multicast_local' />
{% include dns_multicast_local %}
<a name='dns_nameservers' />
{% include dns_nameservers %}
<a name='hosts_file' />
{% include hosts_file %}
<a name='append_domain' />
{% include append_domain %}
<a name='ignore_unknown_nameservers' />
{% include ignore_unknown_nameservers %}
<a name='ipcache_size' />
{% include ipcache_size %}
<a name='ipcache_low' />
{% include ipcache_low %}
<a name='ipcache_high' />
{% include ipcache_high %}
<a name='fqdncache_size' />
{% include fqdncache_size %}

## MISCELLANEOUS

<a name='configuration_includes_quoted_values' />
{% include configuration_includes_quoted_values %}
<a name='memory_pools' />
{% include memory_pools %}
<a name='memory_pools_limit' />
{% include memory_pools_limit %}
<a name='forwarded_for' />
{% include forwarded_for %}
<a name='cachemgr_passwd' />
{% include cachemgr_passwd %}
<a name='client_db' />
{% include client_db %}
<a name='refresh_all_ims' />
{% include refresh_all_ims %}
<a name='reload_into_ims' />
{% include reload_into_ims %}
<a name='connect_retries' />
{% include connect_retries %}
<a name='retry_on_error' />
{% include retry_on_error %}
<a name='as_whois_server' />
{% include as_whois_server %}
<a name='offline_mode' />
{% include offline_mode %}
<a name='uri_whitespace' />
{% include uri_whitespace %}
<a name='chroot' />
{% include chroot %}
<a name='pipeline_prefetch' />
{% include pipeline_prefetch %}
<a name='high_response_time_warning' />
{% include high_response_time_warning %}
<a name='high_page_fault_warning' />
{% include high_page_fault_warning %}
<a name='high_memory_warning' />
{% include high_memory_warning %}
<a name='sleep_after_fork' />
{% include sleep_after_fork %}
<a name='windows_ipaddrchangemonitor' />
{% include windows_ipaddrchangemonitor %}
<a name='eui_lookup' />
{% include eui_lookup %}
<a name='max_filedescriptors' />
{% include max_filedescriptors %}
<a name='force_request_body_continuation' />
{% include force_request_body_continuation %}
<a name='http_upgrade_request_protocols' />
{% include http_upgrade_request_protocols %}
<a name='server_pconn_for_nonretriable' />
{% include server_pconn_for_nonretriable %}
<a name='happy_eyeballs_connect_timeout' />
{% include happy_eyeballs_connect_timeout %}
<a name='happy_eyeballs_connect_gap' />
{% include happy_eyeballs_connect_gap %}
<a name='happy_eyeballs_connect_limit' />
{% include happy_eyeballs_connect_limit %}

[Alphabetic index](index_all)
