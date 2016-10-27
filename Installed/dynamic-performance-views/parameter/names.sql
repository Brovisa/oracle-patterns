select * from (
  select 'OK'      , name         , description                                      from v$parameter          union all
  select 'Obsolete', name         , null                                             from v$obsolete_parameter union all
  select '?'       ,'_fix_control','See v$session_fix_control, v$system_fix_control' from dual
)
order by
  replace(lower(name), '_','')
;
-- OK         active_instance_count                       number of active instances in the cluster database
-- Obsolete   allow_partial_sn_results
-- Obsolete   always_anti_join
-- Obsolete   always_semi_join
-- OK         aq_tm_processes                             number of AQ Time Managers to start
-- Obsolete   arch_io_slaves
-- OK         archive_lag_target                          Maximum number of seconds of redos the standby could lose
-- OK         asm_diskgroups                              disk groups to mount automatically
-- OK         asm_diskstring                              disk set locations for discovery
-- OK         asm_power_limit                             number of parallel relocations for disk rebalancing
-- OK         asm_preferred_read_failure_groups           preferred read failure groups
-- OK         audit_file_dest                             Directory in which auditing files are to reside
-- OK         audit_syslog_level                          Syslog facility and level
-- OK         audit_sys_operations                        enable sys auditing
-- OK         audit_trail                                 enable system auditing
-- Obsolete   _average_dirties_half_life
-- Obsolete   _aw_row_source_enabled
-- OK         awr_snapshot_time_offset                    Setting for AWR Snapshot Time Offset
-- OK         background_core_dump                        Core Size for Background Processes
-- OK         background_dump_dest                        Detached process dump directory
-- Obsolete   backup_disk_io_slaves
-- OK         backup_tape_io_slaves                       BACKUP Tape I/O slaves
-- OK         bitmap_merge_area_size                      maximum memory allow for BITMAP MERGE
-- OK         blank_trimming                              blank trimming semantics parameter
-- Obsolete   b_tree_bitmap_plans
-- OK         buffer_pool_keep                            Number of database blocks/latches in keep buffer pool
-- OK         buffer_pool_recycle                         Number of database blocks/latches in recycle buffer pool
-- Obsolete   cache_size_threshold
-- OK         cell_offload_compaction                     Cell packet compaction strategy
-- OK         cell_offload_decryption                     enable SQL processing offload of encrypted data to cells
-- OK         cell_offload_parameters                     Additional cell offload parameters
-- OK         cell_offload_plan_display                   Cell offload explain plan display
-- OK         cell_offload_processing                     enable SQL processing offload to cells
-- Obsolete   cell_partition_large_extents
-- OK         circuits                                    max number of circuits
-- Obsolete   cleanup_rollback_entries
-- OK         client_result_cache_lag                     client result cache maximum lag in milliseconds
-- OK         client_result_cache_size                    client result cache max size in bytes
-- OK         clonedb                                     clone database
-- Obsolete   close_cached_open_cursors
-- OK         cluster_database                            if TRUE startup in cluster database mode
-- OK         cluster_database_instances                  number of instances to use for sizing cluster db SGA structures
-- OK         cluster_interconnects                       interconnects for RAC use
-- OK         commit_logging                              transaction commit log write behaviour
-- OK         commit_point_strength                       Bias this node has toward not preparing in a two-phase commit
-- OK         commit_wait                                 transaction commit log wait behaviour
-- OK         commit_write                                transaction commit log write behaviour
-- OK         compatible                                  Database will be completely compatible with this software version
-- Obsolete   _compatible_no_recovery
-- Obsolete   complex_view_merging
-- OK         control_file_record_keep_time               control file record keep time in days
-- OK         control_files                               control file names list
-- OK         control_management_pack_access              declares which manageability packs are enabled
-- OK         core_dump_dest                              Core dump directory
-- OK         cpu_count                                   number of CPUs for this instance
-- OK         create_bitmap_area_size                     size of create bitmap buffer for bitmap index
-- OK         create_stored_outlines                      create stored outlines for DML statements
-- OK         cursor_bind_capture_destination             Allowed destination for captured bind variables
-- OK         cursor_sharing                              cursor sharing mode
-- OK         cursor_space_for_time                       use more memory in order to get faster execution
-- OK         db_16k_cache_size                           Size of cache for 16K buffers
-- OK         db_2k_cache_size                            Size of cache for 2K buffers
-- OK         db_32k_cache_size                           Size of cache for 32K buffers
-- OK         db_4k_cache_size                            Size of cache for 4K buffers
-- OK         db_8k_cache_size                            Size of cache for 8K buffers
-- OK         db_block_buffers                            Number of database blocks cached in memory
-- OK         db_block_checking                           header checking and data and index block checking
-- Obsolete   db_block_checkpoint_batch
-- OK         db_block_checksum                           store checksum in db blocks and check during reads
-- Obsolete   db_block_lru_extended_statistics
-- Obsolete   db_block_lru_latches
-- Obsolete   db_block_lru_statistics
-- Obsolete   db_block_max_dirty_target
-- OK         db_block_size                               Size of database block in bytes
-- OK         db_cache_advice                             Buffer cache sizing advisory
-- OK         db_cache_size                               Size of DEFAULT buffer pool for standard block size buffers
-- OK         db_create_file_dest                         default database location
-- OK         db_create_online_log_dest_1                 online log/controlfile destination #1
-- OK         db_create_online_log_dest_2                 online log/controlfile destination #2
-- OK         db_create_online_log_dest_3                 online log/controlfile destination #3
-- OK         db_create_online_log_dest_4                 online log/controlfile destination #4
-- OK         db_create_online_log_dest_5                 online log/controlfile  destination #5
-- OK         db_domain                                   directory part of global database name stored with CREATE DATABASE
-- OK         db_file_multiblock_read_count               db block to be read each IO
-- OK         db_file_name_convert                        datafile name convert patterns and strings for standby/clone db
-- OK         db_files                                    max allowable # db files
-- Obsolete   db_file_simultaneous_writes
-- OK         db_flashback_retention_target               Maximum Flashback Database log retention time in minutes.
-- OK         db_flash_cache_file                         flash cache file for default block size
-- OK         db_flash_cache_size                         flash cache size for db_flash_cache_file
-- OK         db_keep_cache_size                          Size of KEEP buffer pool for standard block size buffers
-- Obsolete   dblink_encrypt_login
-- OK         db_lost_write_protect                       enable lost write detection
-- OK         db_name                                     database name specified in CREATE DATABASE
-- Obsolete   _db_no_mount_lock
-- OK         db_recovery_file_dest                       default database recovery file location
-- OK         db_recovery_file_dest_size                  database recovery files size limit
-- OK         db_recycle_cache_size                       Size of RECYCLE buffer pool for standard block size buffers
-- OK         db_securefile                               permit securefile storage during lob creation
-- OK         db_ultra_safe                               Sets defaults for other parameters that control protection levels
-- OK         db_unique_name                              Database Unique Name
-- OK         db_unrecoverable_scn_tracking               Track nologging SCN in controlfile
-- OK         dbwr_io_slaves                              DBWR I/O slaves
-- OK         db_writer_processes                         number of background database writer  processes to start
-- OK         ddl_lock_timeout                            timeout to restrict the time that ddls wait for dml lock
-- Obsolete   ddl_wait_for_locks
-- OK         deferred_segment_creation                   defer segment creation to first insert
-- Obsolete   delayed_logging_block_cleanouts
-- OK         dg_broker_config_file1                      data guard broker configuration file #1
-- OK         dg_broker_config_file2                      data guard broker configuration file #2
-- OK         dg_broker_start                             start Data Guard broker (DMON process)
-- OK         diagnostic_dest                             diagnostic base directory
-- OK         _disable_interface_checking                 disable interface checking at startup
-- Obsolete   discrete_transactions_enabled
-- OK         disk_asynch_io                              Use asynch I/O for random access devices
-- OK         dispatchers                                 specifications of dispatchers
-- OK         distributed_lock_timeout                    number of seconds a distributed transaction waits for a lock
-- Obsolete   distributed_recovery_connection_hold_time
-- Obsolete   distributed_transactions
-- Obsolete   _dlm_send_timeout
-- OK         dml_locks                                   dml locks - one for each table modified in a transaction
-- Obsolete   drs_start
-- OK         dst_upgrade_insert_conv                     Enables/Disables internal conversions during DST upgrade
-- OK         enable_ddl_logging                          enable ddl logging
-- OK         _enable_NUMA_support                        Enable NUMA support and optimizations
-- Obsolete   enqueue_resources
-- OK         event                                       debug event control - default null string
-- OK         fal_client                                  FAL client
-- OK         fal_server                                  FAL server list
-- Obsolete   fast_full_scan_enabled
-- Obsolete   _fast_start_instance_recovery_target
-- OK         fast_start_io_target                        Upper bound on recovery reads
-- OK         fast_start_mttr_target                      MTTR target in seconds
-- OK         fast_start_parallel_rollback                max number of parallel recovery slaves that may be used
-- OK         fileio_network_adapters                     Network Adapters for File I/O
-- OK         file_mapping                                enable file mapping
-- OK         _file_size_increase_increment               Amount of file size increase increment, in bytes
-- OK         filesystemio_options                        IO operations on filesystem files
-- ?          _fix_control                                See v$session_fix_control, v$system_fix_control
-- OK         fixed_date                                  fixed SYSDATE value
-- Obsolete   freeze_DB_for_fast_instance_recovery
-- Obsolete   gc_defer_time
-- Obsolete   gc_files_to_locks
-- Obsolete   gc_latches
-- Obsolete   gc_lck_procs
-- OK         _gc_policy_time                             how often to make object policy decisions in minutes
-- Obsolete   gc_releasable_locks
-- Obsolete   gc_rollback_locks
-- OK         gcs_server_processes                        number of background gcs server processes to start
-- OK         _gc_undo_affinity                           if TRUE, enable dynamic undo affinity
-- OK         global_context_pool_size                    Global Application Context Pool Size in Bytes
-- OK         global_names                                enforce that database links have same name as remote database
-- OK         global_txn_processes                        number of background global transaction processes to start
-- OK         hash_area_size                              size of in-memory hash work area
-- Obsolete   hash_join_enabled
-- Obsolete   hash_multiblock_io_count
-- OK         hi_shared_memory_address                    SGA starting address (high order 32-bits on 64-bit platforms)
-- OK         hs_autoregister                             enable automatic server DD updates in HS agent self-registration
-- OK         ifile                                       include file in init.ora
-- OK         instance_groups                             list of instance group names
-- OK         instance_name                               instance name supported by the instance
-- Obsolete   instance_nodeset
-- OK         instance_number                             instance number
-- OK         instance_type                               type of instance to be executed
-- OK         java_jit_enabled                            Java VM JIT enabled
-- OK         java_max_sessionspace_size                  max allowed size in bytes of a Java sessionspace
-- OK         java_pool_size                              size in bytes of java pool
-- OK         java_soft_sessionspace_limit                warning limit on size in bytes of a Java sessionspace
-- Obsolete   job_queue_interval
-- Obsolete   job_queue_keep_connections
-- OK         job_queue_processes                         maximum number of job queue slave processes
-- OK         _kgl_cluster_lock_read_mostly               Library cache support for cluster lock read mostly optimization
-- Obsolete   _kgl_latch_count
-- OK         _kill_diagnostics_timeout                   timeout delay in seconds before killing enqueue blocker
-- Obsolete   _kspptbl_mem_usage
-- Obsolete   large_pool_min_alloc
-- OK         large_pool_size                             size in bytes of large pool
-- OK         ldap_directory_access                       RDBMS's LDAP access option
-- OK         ldap_directory_sysauth                      OID usage parameter
-- Obsolete   lgwr_io_slaves
-- OK         license_max_sessions                        maximum number of non-system user sessions allowed
-- OK         license_max_users                           maximum number of named users that can be created in the database
-- OK         license_sessions_warning                    warning level for number of non-system user sessions
-- OK         listener_networks                           listener registration networks
-- Obsolete   _lm_direct_sends
-- Obsolete   lm_locks
-- Obsolete   _lm_multiple_receivers
-- Obsolete   lm_procs
-- Obsolete   lm_procs
-- Obsolete   _lm_rcv_buffer_size
-- OK         _lm_rcvr_hang_allow_time                    receiver hang allow time in seconds
-- Obsolete   lm_ress
-- Obsolete   _lm_statistics
-- OK         local_listener                              local listener
-- OK         lock_name_space                             lock name space used for generating lock names for standby/clone database
-- OK         lock_sga                                    Lock entire SGA in physical memory
-- Obsolete   lock_sga_areas
-- Obsolete   _log_archive_buffer_size
-- OK         log_archive_config                          log archive config parameter
-- OK         log_archive_dest                            archival destination text string
-- OK         log_archive_dest_1                          archival destination #1 text string
-- OK         log_archive_dest_10                         archival destination #10 text string
-- OK         log_archive_dest_11                         archival destination #11 text string
-- OK         log_archive_dest_12                         archival destination #12 text string
-- OK         log_archive_dest_13                         archival destination #13 text string
-- OK         log_archive_dest_14                         archival destination #14 text string
-- OK         log_archive_dest_15                         archival destination #15 text string
-- OK         log_archive_dest_16                         archival destination #16 text string
-- OK         log_archive_dest_17                         archival destination #17 text string
-- OK         log_archive_dest_18                         archival destination #18 text string
-- OK         log_archive_dest_19                         archival destination #19 text string
-- OK         log_archive_dest_2                          archival destination #2 text string
-- OK         log_archive_dest_20                         archival destination #20 text string
-- OK         log_archive_dest_21                         archival destination #21 text string
-- OK         log_archive_dest_22                         archival destination #22 text string
-- OK         log_archive_dest_23                         archival destination #23 text string
-- OK         log_archive_dest_24                         archival destination #24 text string
-- OK         log_archive_dest_25                         archival destination #25 text string
-- OK         log_archive_dest_26                         archival destination #26 text string
-- OK         log_archive_dest_27                         archival destination #27 text string
-- OK         log_archive_dest_28                         archival destination #28 text string
-- OK         log_archive_dest_29                         archival destination #29 text string
-- OK         log_archive_dest_3                          archival destination #3 text string
-- OK         log_archive_dest_30                         archival destination #30 text string
-- OK         log_archive_dest_31                         archival destination #31 text string
-- OK         log_archive_dest_4                          archival destination #4 text string
-- OK         log_archive_dest_5                          archival destination #5 text string
-- OK         log_archive_dest_6                          archival destination #6 text string
-- OK         log_archive_dest_7                          archival destination #7 text string
-- OK         log_archive_dest_8                          archival destination #8 text string
-- OK         log_archive_dest_9                          archival destination #9 text string
-- OK         log_archive_dest_state_1                    archival destination #1 state text string
-- OK         log_archive_dest_state_10                   archival destination #10 state text string
-- OK         log_archive_dest_state_11                   archival destination #11 state text string
-- OK         log_archive_dest_state_12                   archival destination #12 state text string
-- OK         log_archive_dest_state_13                   archival destination #13 state text string
-- OK         log_archive_dest_state_14                   archival destination #14 state text string
-- OK         log_archive_dest_state_15                   archival destination #15 state text string
-- OK         log_archive_dest_state_16                   archival destination #16 state text string
-- OK         log_archive_dest_state_17                   archival destination #17 state text string
-- OK         log_archive_dest_state_18                   archival destination #18 state text string
-- OK         log_archive_dest_state_19                   archival destination #19 state text string
-- OK         log_archive_dest_state_2                    archival destination #2 state text string
-- OK         log_archive_dest_state_20                   archival destination #20 state text string
-- OK         log_archive_dest_state_21                   archival destination #21 state text string
-- OK         log_archive_dest_state_22                   archival destination #22 state text string
-- OK         log_archive_dest_state_23                   archival destination #23 state text string
-- OK         log_archive_dest_state_24                   archival destination #24 state text string
-- OK         log_archive_dest_state_25                   archival destination #25 state text string
-- OK         log_archive_dest_state_26                   archival destination #26 state text string
-- OK         log_archive_dest_state_27                   archival destination #27 state text string
-- OK         log_archive_dest_state_28                   archival destination #28 state text string
-- OK         log_archive_dest_state_29                   archival destination #29 state text string
-- OK         log_archive_dest_state_3                    archival destination #3 state text string
-- OK         log_archive_dest_state_30                   archival destination #30 state text string
-- OK         log_archive_dest_state_31                   archival destination #31 state text string
-- OK         log_archive_dest_state_4                    archival destination #4 state text string
-- OK         log_archive_dest_state_5                    archival destination #5 state text string
-- OK         log_archive_dest_state_6                    archival destination #6 state text string
-- OK         log_archive_dest_state_7                    archival destination #7 state text string
-- OK         log_archive_dest_state_8                    archival destination #8 state text string
-- OK         log_archive_dest_state_9                    archival destination #9 state text string
-- OK         log_archive_duplex_dest                     duplex archival destination text string
-- OK         log_archive_format                          archival destination format
-- OK         log_archive_local_first                     Establish EXPEDITE attribute default value
-- OK         log_archive_max_processes                   maximum number of active ARCH processes
-- OK         log_archive_min_succeed_dest                minimum number of archive destinations that must succeed
-- OK         log_archive_start                           start archival process on SGA initialization
-- OK         log_archive_trace                           Establish archivelog operation tracing level
-- Obsolete   log_block_checksum
-- OK         log_buffer                                  redo circular buffer size
-- OK         log_checkpoint_interval                     # redo blocks checkpoint threshold
-- OK         log_checkpoints_to_alert                    log checkpoint begin/end to alert file
-- OK         log_checkpoint_timeout                      Maximum time interval between checkpoints in seconds
-- OK         log_file_name_convert                       logfile name convert patterns and strings for standby/clone db
-- Obsolete   log_files
-- Obsolete   logmnr_max_persistent_sessions
-- Obsolete   log_parallelism
-- Obsolete   log_simultaneous_copies
-- Obsolete   log_small_entry_max_size
-- Obsolete   max_commit_propagation_delay
-- OK         max_dispatchers                             max number of dispatchers
-- OK         max_dump_file_size                          Maximum size (in bytes) of dump file
-- OK         max_enabled_roles                           max number of roles a user can have enabled
-- Obsolete   max_rollback_segments
-- OK         max_shared_servers                          max number of shared servers
-- Obsolete   max_transaction_branches
-- OK         memory_max_target                           Max size for Memory Target
-- OK         memory_target                               Target size of Oracle SGA and PGA memory
-- Obsolete   mts_circuits
-- Obsolete   mts_dispatchers
-- Obsolete   mts_listener_address
-- Obsolete   mts_max_dispatchers
-- Obsolete   mts_max_servers
-- Obsolete   mts_multiple_listeners
-- Obsolete   mts_servers
-- Obsolete   mts_service
-- Obsolete   mts_sessions
-- OK         nls_calendar                                NLS calendar system name
-- OK         nls_comp                                    NLS comparison
-- OK         nls_currency                                NLS local currency symbol
-- OK         nls_date_format                             NLS Oracle date format
-- OK         nls_date_language                           NLS date language name
-- OK         nls_dual_currency                           Dual currency symbol
-- OK         nls_iso_currency                            NLS ISO currency territory name
-- OK         nls_language                                NLS language name
-- OK         nls_length_semantics                        create columns using byte or char semantics by default
-- OK         nls_nchar_conv_excp                         NLS raise an exception instead of allowing implicit conversion
-- OK         nls_numeric_characters                      NLS numeric characters
-- OK         nls_sort                                    NLS linguistic definition name
-- OK         nls_territory                               NLS territory name
-- OK         nls_time_format                             time format
-- OK         nls_timestamp_format                        time stamp format
-- OK         nls_timestamp_tz_format                     timestamp with timezone format
-- OK         nls_time_tz_format                          time with timezone format
-- OK         O7_DICTIONARY_ACCESSIBILITY                 Version 7 Dictionary Accessibility Support
-- OK         object_cache_max_size_percent               percentage of maximum size over optimal of the user session's object cache
-- OK         object_cache_optimal_size                   optimal size of the user session's object cache in bytes
-- Obsolete   ogms_home
-- OK         olap_page_pool_size                         size of the olap page pool in bytes
-- OK         open_cursors                                max # cursors per session
-- OK         open_links                                  max # open links per session
-- OK         open_links_per_instance                     max # open links per instance
-- Obsolete   ops_admin_group
-- Obsolete   ops_interconnects
-- OK         optimizer_capture_sql_plan_baselines        automatic capture of SQL plan baselines for repeatable statements
-- Obsolete   _optimizer_choose_permutation
-- OK         optimizer_dynamic_sampling                  optimizer dynamic sampling
-- OK         optimizer_features_enable                   optimizer plan compatibility parameter
-- OK         optimizer_index_caching                     optimizer percent index caching
-- OK         optimizer_index_cost_adj                    optimizer index cost adjustment
-- Obsolete   optimizer_max_permutations
-- OK         optimizer_mode                              optimizer mode
-- Obsolete   optimizer_percent_parallel
-- Obsolete   optimizer_search_limit
-- OK         optimizer_secure_view_merging               optimizer secure view merging and predicate pushdown/movearound
-- OK         optimizer_use_invisible_indexes             Usage of invisible indexes (TRUE/FALSE)
-- OK         optimizer_use_pending_statistics            Control whether to use optimizer pending statistics
-- OK         optimizer_use_sql_plan_baselines            use of SQL plan baselines for captured sql statements
-- Obsolete   oracle_trace_collection_name
-- Obsolete   oracle_trace_collection_path
-- Obsolete   oracle_trace_collection_size
-- Obsolete   oracle_trace_enable
-- Obsolete   _oracle_trace_events
-- Obsolete   oracle_trace_facility_name
-- Obsolete   oracle_trace_facility_path
-- Obsolete   _oracle_trace_facility_version
-- OK         os_authent_prefix                           prefix for auto-logon accounts
-- OK         os_roles                                    retrieve roles from the operating system
-- OK         parallel_adaptive_multi_user                enable adaptive setting of degree for multiple user streams
-- OK         parallel_automatic_tuning                   enable intelligent defaults for parallel execution parameters
-- Obsolete   parallel_broadcast_enabled
-- Obsolete   parallel_default_max_instances
-- OK         parallel_degree_limit                       limit placed on degree of parallelism
-- OK         parallel_degree_policy                      policy used to compute the degree of parallelism (MANUAL/LIMITED/AUTO)
-- OK         parallel_execution_message_size             message buffer size for parallel execution
-- OK         parallel_force_local                        force single instance execution
-- OK         parallel_instance_group                     instance group to use for all parallel operations
-- OK         parallel_io_cap_enabled                     enable capping DOP by IO bandwidth
-- OK         parallel_max_servers                        maximum parallel query servers per instance
-- Obsolete   parallel_min_message_pool
-- OK         parallel_min_percent                        minimum percent of threads required for parallel query
-- OK         parallel_min_servers                        minimum parallel query servers per instance
-- OK         parallel_min_time_threshold                 threshold above which a plan is a candidate for parallelization (in seconds)
-- OK         parallel_server                             if TRUE startup in parallel server mode
-- Obsolete   parallel_server_idle_time
-- OK         parallel_server_instances                   number of instances to use for sizing OPS SGA structures
-- OK         parallel_servers_target                     instance target in terms of number of parallel servers
-- OK         parallel_threads_per_cpu                    number of parallel execution threads per CPU
-- Obsolete   parallel_transaction_resource_timeout
-- Obsolete   partition_view_enabled
-- OK         permit_92_wrap_format                       allow 9.2 or older wrap format in PL/SQL
-- OK         pga_aggregate_target                        Target size for the aggregate PGA memory consumed by the instance
-- OK         plscope_settings                            plscope_settings controls the compile time collection, cross reference, and storage of PL/SQL source code identifier data
-- OK         plsql_ccflags                               PL/SQL ccflags
-- OK         plsql_code_type                             PL/SQL code-type
-- Obsolete   plsql_compiler_flags
-- Obsolete   _plsql_conditional_compilation
-- OK         plsql_debug                                 PL/SQL debug
-- Obsolete   plsql_native_c_compiler
-- Obsolete   plsql_native_library_dir
-- Obsolete   plsql_native_library_subdir_count
-- Obsolete   plsql_native_linker
-- Obsolete   plsql_native_make_file_name
-- Obsolete   plsql_native_make_utility
-- OK         plsql_optimize_level                        PL/SQL optimize level
-- OK         plsql_v2_compatibility                      PL/SQL version 2.x compatibility flag
-- OK         plsql_warnings                              PL/SQL compiler warnings settings
-- OK         pre_page_sga                                pre-page sga for process
-- OK         processes                                   user processes
-- OK         processor_group_name                        Name of the processor group that this instance should run in.
-- Obsolete   push_join_predicate
-- OK         query_rewrite_enabled                       allow rewrite of queries using materialized views if enabled
-- OK         query_rewrite_integrity                     perform rewrite using materialized views with desired integrity
-- OK         rdbms_server_dn                             RDBMS's Distinguished Name
-- OK         read_only_open_delayed                      if TRUE delay opening of read only files until first access
-- OK         recovery_parallelism                        number of server processes to use for parallel recovery
-- OK         recyclebin                                  recyclebin processing
-- OK         redo_transport_user                         Data Guard transport user when using password file
-- Obsolete   remote_archive_enable
-- OK         remote_dependencies_mode                    remote-procedure-call dependencies mode parameter
-- OK         remote_listener                             remote listener
-- OK         remote_login_passwordfile                   password file usage parameter
-- OK         remote_os_authent                           allow non-secure remote clients to use auto-logon accounts
-- OK         remote_os_roles                             allow non-secure remote clients to use os roles
-- OK         replication_dependency_tracking             tracking dependency for Replication parallel propagation
-- OK         resource_limit                              master switch for resource limit
-- OK         resource_manager_cpu_allocation             Resource Manager CPU allocation
-- OK         resource_manager_plan                       resource mgr top plan
-- OK         result_cache_max_result                     maximum result size as percent of cache size
-- OK         result_cache_max_size                       maximum amount of memory to be used by the cache
-- OK         result_cache_mode                           result cache operator usage mode
-- OK         result_cache_remote_expiration              maximum life time (min) for any result using a remote object
-- OK         resumable_timeout                           set resumable_timeout
-- OK         rollback_segments                           undo segment list
-- Obsolete   row_cache_cursors
-- Obsolete   row_locking
-- OK         sec_case_sensitive_logon                    case sensitive password enabled for logon
-- OK         sec_max_failed_login_attempts               maximum number of failed login attempts on a connection
-- OK         sec_protocol_error_further_action           TTC protocol error continue action
-- OK         sec_protocol_error_trace_action             TTC protocol error action
-- OK         sec_return_server_release_banner            whether the server retruns the complete version information
-- Obsolete   _seq_process_cache_const
-- Obsolete   sequence_cache_entries
-- Obsolete   sequence_cache_hash_buckets
-- Obsolete   serializable
-- OK         serial_reuse                                reuse the frame segments
-- OK         service_names                               service names supported by the instance
-- OK         session_cached_cursors                      Number of cursors to cache in a session.
-- OK         session_max_open_files                      maximum number of open files allowed per session
-- OK         sessions                                    user and system sessions
-- OK         sga_max_size                                max total SGA size
-- OK         sga_target                                  Target size of SGA
-- OK         shadow_core_dump                            Core Size for Shadow Processes
-- OK         shared_memory_address                       SGA starting address (low order 32-bits on 64-bit platforms)
-- Obsolete   shared_pool_reserved_min_alloc
-- OK         shared_pool_reserved_size                   size in bytes of reserved area of shared pool
-- OK         shared_pool_size                            size in bytes of shared pool
-- OK         shared_servers                              number of shared servers to start up
-- OK         shared_server_sessions                      max number of shared server sessions
-- OK         skip_unusable_indexes                       skip unusable indexes if set to TRUE
-- OK         smtp_out_server                             utl_smtp server and port configuration parameter
-- Obsolete   snapshot_refresh_interval
-- Obsolete   snapshot_refresh_keep_connections
-- Obsolete   snapshot_refresh_processes
-- OK         sort_area_retained_size                     size of in-memory sort work area retained between fetch calls
-- OK         sort_area_size                              size of in-memory sort work area
-- Obsolete   sort_direct_writes
-- Obsolete   sort_multiblock_read_count
-- Obsolete   sort_read_fac
-- Obsolete   sort_spacemap_size
-- Obsolete   sort_write_buffers
-- Obsolete   sort_write_buffer_size
-- OK         spfile                                      server parameter file
-- Obsolete   spin_count
-- OK         sql92_security                              require select privilege for searched update/delete
-- OK         sql_trace                                   enable SQL trace
-- OK         sqltune_category                            Category qualifier for applying hintsets
-- Obsolete   sql_version
-- OK         standby_archive_dest                        standby database archivelog destination text string
-- OK         standby_file_management                     if auto then files are created/dropped automatically on standby
-- Obsolete   standby_preserves_names
-- OK         star_transformation_enabled                 enable the use of star transformation
-- OK         statistics_level                            statistics level
-- OK         streams_pool_size                           size in bytes of the streams pool
-- OK         tape_asynch_io                              Use asynch I/O requests for tape devices
-- Obsolete   temporary_table_locks
-- Obsolete   text_enable
-- OK         thread                                      Redo thread to mount
-- OK         timed_os_statistics                         internal os statistic gathering interval in seconds
-- OK         timed_statistics                            maintain internal timing statistics
-- OK         trace_enabled                               enable in memory tracing
-- OK         tracefile_identifier                        trace file custom identifier
-- Obsolete   transaction_auditing
-- OK         transactions                                max. number of concurrent active transactions
-- OK         transactions_per_rollback_segment           number of active transactions per rollback segment
-- OK         undo_management                             instance runs in SMU mode if TRUE, else in RBU mode
-- OK         undo_retention                              undo retention in seconds
-- Obsolete   undo_suppress_errors
-- OK         undo_tablespace                             use/switch undo tablespace
-- OK         use_indirect_data_buffers                   Enable indirect data buffers (very large SGA on 32-bit platforms)
-- Obsolete   use_ism
-- OK         use_large_pages                             Use large pages if available (TRUE/FALSE/ONLY)
-- OK         user_dump_dest                              User process dump directory
-- OK         utl_file_dir                                utl_file accessible directories list
-- OK         workarea_size_policy                        policy used to size SQL working areas (MANUAL/AUTO)
-- OK         xml_db_events                               are XML DB events enabled
