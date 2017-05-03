
create table familydata

	(
	encounterID varchar(255) not null
	,itemID varchar(255) not null
	,name varchar(255) null
	,status varchar(255) null
	,age varchar(255) null
	,dob varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_familydata] primary key ([EthId])

	)

------------------------------
