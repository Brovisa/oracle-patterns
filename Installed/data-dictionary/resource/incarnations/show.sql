select
  resource_type,
  resource_name,
  db_unique_name,
  db_domain,
  instance_name,
  host_name,
  startup_time
from
  dba_resource_incarnations;
