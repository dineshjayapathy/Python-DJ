
create table labloinccodes

	(
	itemid varchar(255) not null
	,code varchar(255) not null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,deleteflag varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labloinccodes] primary key ([itemid])

	)

------------------------------
