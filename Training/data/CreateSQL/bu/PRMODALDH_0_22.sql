
create table maintenance

	(
	Id varchar(255) not null
	,UserId varchar(255) not null
	,Msg varchar(255) null
	,Comments varchar(255) null
	,Discussion varchar(255) null
	,StatusFlag varchar(255) not null
	,Status varchar(255) null
	,CreateDate varchar(255) null
	,ModifyDate varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_maintenance] primary key ([Id])

	)

------------------------------
