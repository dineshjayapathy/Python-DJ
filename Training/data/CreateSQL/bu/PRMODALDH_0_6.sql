
create table diagnosis

	(
	EncounterId varchar(255) not null
	,ItemId varchar(255) null
	,PrimaryAsmt varchar(255) null
	,Specify varchar(255) null
	,Notes varchar(255) null
	,displayIndex varchar(255) null
	,axis varchar(255) not null
	,AsmtOnsetDate varchar(255) null
	,SlNo varchar(255) not null
	,websync varchar(255) null
	,Risk varchar(255) not null
	,SNOMED varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_diagnosis] primary key ([SlNo])

	)

------------------------------
