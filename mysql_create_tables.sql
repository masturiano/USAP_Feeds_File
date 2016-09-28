show databases;
use usap_feeds_file;
show tables;

# Server Credentials
-- server_id
-- username
-- password
create table server_credentials(
	server_id int not null,
    username varchar(50),
    password varchar(50),
    primary key(server_id)
);
insert into server_credentials values(3,'masturiano','masturianousap1q2w');
select * from server_credentials;

# Server info
-- server_id
-- server_name
-- ip_address
create table server_info(
	server_id int not null,
    server_name varchar(50),
    ip_address varchar(15),
    primary key(server_id)
);
insert into server_info values(3,'EC2FEEDGEN03','174.129.233.96');
select * from server_info;

# Account type
-- type_id
-- type_name
create table account_type(
	type_id int not null,
    type_name varchar(50)
);
insert into account_type values(1,'google'),(2,'non google');
select * from account_type;

# Account info
-- server_id
-- type_id
-- account_id
-- account_name
-- folder_location_backup
-- folder_location_latest
-- folder_location_rollback
-- file_size_reference
-- record_count_reference
create table account_info(
	server_id int not null,
    type_id int not null,
    account_id int not null auto_increment,
    account_name varchar(50),
    account_description varchar(250),
    folder_location_backup varchar(250),
    folder_location_latest varchar(250),
    folder_location_rollback varchar(250),
    file_size_reference varchar(50),
    record_count_reference varchar(50),
    primary key(account_id)
);
insert into account_info(
	server_id,
    type_id,
    account_name,
    account_description,
    folder_location_backup,
    folder_location_latest,
    folder_location_rollback,
    file_size_reference,
    record_count_reference
)
values(
	3,
    2,
    'dam_ci_details',
    'discount auto mirror channel inteligence details',
    'data/aopi/feeds_longbow/output/dam_ci_details/backup',
    'data/aopi/feeds_longbow/output/dam_ci_details/latest',
    'data/aopi/feeds_longbow/output/dam_ci_details/rollback',
    '1.GB',
    '1000000'
);
select * from account_info;