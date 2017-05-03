
create table encounter

	(
	encounterID varchar(255) not null
	,doctorID varchar(255) not null
	,patientID varchar(255) not null
	,date varchar(255) null
	,time varchar(255) null
	,reason varchar(255) null
	,visitType varchar(255) null
	,roomno varchar(255) null
	,status varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_encounter] primary key ([encounterID])

	)

------------------------------
