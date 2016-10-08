-- use usap_feeds_file;
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
    ai.file_size_reference,
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
where 
	sc.server_id = 4
order by
	si.server_name,
    at.type_name,
    ai.account_name;

update account_info 
set file_size_reference = '1320702443' 
where account_id = 11;

update account_info 
set record_count_reference = '0' 
where account_id in (5,6,7);