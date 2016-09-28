select 
	sc.server_id,
    sc.username,
    sc.password,
    si.server_name,
    si.ip_address,
    at.type_id,
    at.type_name,
    ai.account_id,
    ai.account_name,
    ai.account_description,
    ai.folder_location_backup,
    ai.folder_location_latest,
    ai.folder_location_rollback,
    ai.record_count_reference
from 
	server_credentials sc
left join
	server_info si 
    on si.server_id = sc.server_id
left join
	account_info ai
    on ai.server_id = sc.server_id
left join
	account_type at
    on at.type_id = ai.type_id
order by
	si.server_name,
    ai.account_name
	