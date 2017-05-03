
create table language_codes

	(
	Name varchar(255) not null
	,Favorite varchar(255) null
	,Code varchar(255) null
	,LangID varchar(255) not null
	,isocode1 varchar(255) null
	,isocode2 varchar(255) null
	,isoname varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_language_codes] primary key ([LangID])

	)

------------------------------
