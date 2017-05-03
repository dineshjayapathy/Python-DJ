
create table familyhxdetails

	(
	encounterId varchar(255) not null
	,itemId varchar(255) not null
	,icdItemid varchar(255) not null
	,icdCode varchar(255) not null
	,icdDesc varchar(255) not null
	,snomedCode varchar(255) not null
	,diagnosedYear varchar(255) not null
	,diagnosedAge varchar(255) not null
	,name varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_familyhxdetails] primary key ([EthId])

	)

------------------------------
