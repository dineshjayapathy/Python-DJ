
create table structdatadetail

	(
	Id varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,name varchar(255) not null
	,type varchar(255) not null
	,mandatory varchar(255) not null
	,displayIndex varchar(255) not null
	,deleteFlag varchar(255) not null
	,parentId varchar(255) not null
	,triggerflag varchar(255) not null
	,itemType varchar(255) not null
	,nodeLevel varchar(255) not null
	,tblName varchar(255) not null
	,chartDisplay varchar(255) null
	,multiSelect varchar(255) not null
	,IsSearchable varchar(255) null
	,defaultValue varchar(255) null
	,defaultValueId varchar(255) null
	,modifynotes varchar(255) null
	,readonly varchar(255) null
	,dropdown varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structdatadetail] primary key ([Id])

	)

------------------------------
