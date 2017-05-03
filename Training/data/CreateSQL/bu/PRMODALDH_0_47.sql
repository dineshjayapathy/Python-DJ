
create table pt_emailreason

	(
	id varchar(255) not null
	,description varchar(255) null
	,delflag varchar(255) null
	,displayindex varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_pt_emailreason] primary key ([id])

	)

------------------------------
