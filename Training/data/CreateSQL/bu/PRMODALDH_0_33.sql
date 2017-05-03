
create table lablist

	(
	ID varchar(255) not null
	,name varchar(255) not null
	,deleteFlag varchar(255) not null
	,LabId varchar(255) not null
	,labaddress varchar(255) not null
	,labaddress2 varchar(255) not null
	,labcity varchar(255) not null
	,labstate varchar(255) not null
	,labzip varchar(255) not null
	,labphone varchar(255) not null
	,labfax varchar(255) not null
	,labemail varchar(255) null
	,interfaceConfigured varchar(255) not null
	,sendoutboundresult varchar(255) null
	,labcompanyType varchar(255) not null
	,inHouseLab varchar(255) not null
	,ResultLabId varchar(255) not null
	,labCode varchar(255) not null
	,superhubInterfaceID varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_lablist] primary key ([ID])

	)

------------------------------
