
create table vitals

	(
	encounterID varchar(255) not null
	,vitalID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) not null
	,Id varchar(255) not null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,defaultValue varchar(255) not null
	,valueHtm varchar(255) not null
	,value2 varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_vitals] primary key ([Id])

	)

------------------------------
