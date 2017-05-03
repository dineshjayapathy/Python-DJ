create table alertdata

	(
	Id varchar(255) not null
	,PatientId varchar(255) not null
	,MeasureId varchar(255) not null
	,MeasureName varchar(255) not null
	,ItemId varchar(255) not null
	,Frequency varchar(255) not null
	,LastDone varchar(255) not null
	,DueDate varchar(255) not null
	,Value varchar(255) not null
	,controlstatus varchar(255) not null
	,RegistryAlert varchar(255) not null
	,labReceived varchar(255) not null
	,mdate varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_alertdata] primary key ([Id])

	)

------------------------------
