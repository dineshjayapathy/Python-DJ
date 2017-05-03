
create table progressnotes

	(
	encounterID varchar(255) not null
	,summary varchar(255) not null
	,xslId varchar(255) not null
	,unlocked varchar(255) not null
	,ModifyDate varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_progressnotes] primary key ([Id])

	)

------------------------------
