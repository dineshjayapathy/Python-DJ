
create table ref_attachments

	(
	id varchar(255) not null
	,RefId varchar(255) null
	,doctype varchar(255) not null
	,docId varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_ref_attachments] primary key ([id])

	)

------------------------------
