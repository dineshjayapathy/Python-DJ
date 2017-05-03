
create table contacts

	(
	contactId varchar(255) not null
	,pid varchar(255) not null
	,name varchar(255) not null
	,relation varchar(255) not null
	,address varchar(255) not null
	,address2 varchar(255) not null
	,city varchar(255) not null
	,state varchar(255) not null
	,zipcode varchar(255) not null
	,homePhone varchar(255) not null
	,workPhone varchar(255) not null
	,vmid varchar(255) not null
	,delflag varchar(255) not null
	,Lname varchar(255) not null
	,Fname varchar(255) not null
	,MI varchar(255) null
	,Guardian varchar(255) null
	,RelatedPtId varchar(255) not null
	,HExt varchar(255) not null
	,WExt varchar(255) not null
	,Type1 varchar(255) not null
	,Type2 varchar(255) not null
	,Fax varchar(255) not null
	,Email varchar(255) not null
	,Notes varchar(255) not null
	,Hippa varchar(255) null
	,displayorder varchar(255) null
	,maidenname varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_contacts] primary key ([contactId])

	)

------------------------------
