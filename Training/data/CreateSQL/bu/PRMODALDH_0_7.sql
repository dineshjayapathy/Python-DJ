
create table edi_employmentstatus

	(
	Code varchar(255) not null
	,Name varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_edi_employmentstatus] primary key ([doctorID])

	)

------------------------------
