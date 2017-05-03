
create table labdatadetail

	(
	ReportId varchar(255) not null
	,PropId varchar(255) not null
	,Value varchar(255) null
	,importFlag varchar(255) not null
	,Id varchar(255) not null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,TestID varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labdatadetail] primary key ([Id])

	)

------------------------------
