
create table problemlist_ext

	(
	Id varchar(255) not null
	,PatientId varchar(255) not null
	,NKPFlag varchar(255) not null
	,NKPDate varchar(255) null
	,deleteFlag varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_problemlist_ext] primary key ([Id])

	)

------------------------------
