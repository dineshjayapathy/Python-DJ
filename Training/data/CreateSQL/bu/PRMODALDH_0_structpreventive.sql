
create table structpreventive

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,chartdisplay varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structpreventive] primary key ([Id])

	)

------------------------------
