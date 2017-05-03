
create table oldrxdetail

	(
	OldRxId varchar(255) null
	,Prop varchar(255) not null
	,value varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_oldrxdetail] primary key ([Id])

	)

------------------------------
