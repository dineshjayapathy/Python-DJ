
create table problemlist

	(
	patientId varchar(255) not null
	,encounterId varchar(255) not null
	,asmtId varchar(255) not null
	,specify varchar(255) not null
	,notes varchar(255) not null
	,deleteFlag varchar(255) not null
	,onsetdate varchar(255) null
	,userid varchar(255) not null
	,logdate varchar(255) not null
	,inactiveFlag varchar(255) not null
	,WUStatus varchar(255) not null
	,condition varchar(255) not null
	,SlNo varchar(255) not null
	,displayIndex varchar(255) not null
	,Risk varchar(255) not null
	,AddedDate varchar(255) not null
	,ProblemType varchar(255) not null
	,Resolved varchar(255) not null
	,resolvedon varchar(255) not null
	,SNOMED varchar(255) not null
	,SNOMEDDesc varchar(255) null
	,SNOMEDDescID varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_problemlist] primary key ([SlNo])

	)

------------------------------
