
create table properties

	(
	propID varchar(255) not null
	,name varchar(255) not null
	,description varchar(255) null
	,type varchar(255) null
	,viewtype varchar(255) null
	,size varchar(255) null
	,displayName varchar(255) null
	,pdetailID varchar(255) null
	,displayIndex varchar(255) null
	,delPropFlag varchar(255) not null
	,vmid varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_properties] primary key ([propID])

	)

------------------------------
