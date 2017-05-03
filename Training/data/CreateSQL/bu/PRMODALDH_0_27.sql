
create table preventive

	(
	encounterID varchar(255) not null
	,catID varchar(255) not null
	,itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_preventive] primary key ([pid])

	)

------------------------------
