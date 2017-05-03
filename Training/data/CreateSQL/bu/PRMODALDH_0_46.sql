
create table pt_adv_directives

	(
	Id varchar(255) not null
	,PtId varchar(255) not null
	,Code varchar(255) not null
	,Name varchar(255) not null
	,MDate varchar(255) not null
	,delflag varchar(255) null
	,displayindex varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_pt_adv_directives] primary key ([Id])

	)

------------------------------
