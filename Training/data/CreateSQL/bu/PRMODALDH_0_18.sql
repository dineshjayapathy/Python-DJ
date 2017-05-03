
create table hl7labdatadetail

	(
	ReportId varchar(255) not null
	,NAME varchar(255) not null
	,value varchar(255) not null
	,units varchar(255) not null
	,range varchar(255) not null
	,flag varchar(255) not null
	,notes varchar(255) not null
	,resultStatus varchar(255) not null
	,labId varchar(255) not null
	,hl7id varchar(255) null
	,profileid varchar(255) not null
	,serialno varchar(255) not null
	,obrcode varchar(255) not null
	,corrreportno varchar(255) not null
	,performingSiteId varchar(255) not null
	,prevvalue varchar(255) null
	,AttrResultDate varchar(255) null
	,AttrResultTime varchar(255) null
	,obsubid varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_hl7labdatadetail] primary key ([LogID])

	)

------------------------------
