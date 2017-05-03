
create table logptspecificdata

	(
	id varchar(255) not null
	,patientid varchar(255) not null
	,truserid varchar(255) not null
	,modified_date varchar(255) not null
	,modified_time varchar(255) not null
	,timestamp varchar(255) not null
	,status varchar(255) not null
	,truser_name varchar(255) not null
	,action varchar(255) not null
	,dataelementid varchar(255) not null
	,logptspecificid varchar(255) not null
	,itemid varchar(255) not null
	,encounterid varchar(255) not null
	,data varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_logptspecificdata] primary key ([id])

	)

------------------------------
