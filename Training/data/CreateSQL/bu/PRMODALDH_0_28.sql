
create table printlogs

	(
	LogID varchar(255) not null
	,LoginID varchar(255) not null
	,DoctorID varchar(255) not null
	,PatientID varchar(255) not null
	,EncounterID varchar(255) null
	,PrintData varchar(255) not null
	,PrintDate varchar(255) not null
	,PrintType varchar(255) null
	,PrintTransaction varchar(255) null
	,RxList varchar(255) null
	,PrintLogStatus varchar(255) not null
	,PrintLogBatch varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_printlogs] primary key ([LogID])

	)

------------------------------
