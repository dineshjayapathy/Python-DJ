
create table visitsummarylog

	(
	id varchar(255) not null
	,encId varchar(255) null
	,uid varchar(255) null
	,requestDate varchar(255) null
	,requestedBy varchar(255) null
	,vsdata varchar(255) null
	,status varchar(255) null
	,loggedfrom varchar(255) not null
	,ccddata varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_visitsummarylog] primary key ([id])

	)

------------------------------
