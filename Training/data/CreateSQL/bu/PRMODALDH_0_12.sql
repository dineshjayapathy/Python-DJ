
create table immunizationstatus

	(
	Id varchar(255) not null
	,ImmStatusId varchar(255) not null
	,CODE varchar(255) null
	,Description varchar(255) not null
	,TYPE varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_immunizationstatus] primary key ([Id])

	)

------------------------------
