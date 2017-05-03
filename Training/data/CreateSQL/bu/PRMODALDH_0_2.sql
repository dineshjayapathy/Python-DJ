
create table alertoverride

	(
	Id varchar(255) not null
	,PatientId varchar(255) not null
	,MeasureId varchar(255) not null
	,DueDate varchar(255) null
	,NeverRemind varchar(255) not null
	,Reason varchar(255) null
	,status varchar(255) not null
	,statusLabel varchar(255) not null
	,reset varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_alertoverride] primary key ([Id])

	)

------------------------------
