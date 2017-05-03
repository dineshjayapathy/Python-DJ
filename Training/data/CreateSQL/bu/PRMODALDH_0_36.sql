
create table letterlogs

	(
	Id varchar(255) not null
	,patientId varchar(255) not null
	,letterId varchar(255) not null
	,letterName varchar(255) not null
	,printedBy varchar(255) not null
	,date varchar(255) not null
	,time varchar(255) not null
	,categoryID varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_letterlogs] primary key ([Id])

	)

------------------------------
