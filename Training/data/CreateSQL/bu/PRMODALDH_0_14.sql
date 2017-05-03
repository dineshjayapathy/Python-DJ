
create table labcptmap

	(
	labCode varchar(255) null
	,cptCode varchar(255) null
	,Id varchar(255) not null
	,CptItemId varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labcptmap] primary key ([Id])

	)

------------------------------
