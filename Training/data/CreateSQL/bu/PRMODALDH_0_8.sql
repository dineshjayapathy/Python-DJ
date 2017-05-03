
create table edi_speciality

	(
	Id varchar(255) not null
	,Speciality varchar(255) not null
	,Code varchar(255) not null
	,deleteFlag varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_edi_speciality] primary key ([Id])

	)

------------------------------
