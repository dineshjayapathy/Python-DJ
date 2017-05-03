
create table billingdata

	(
	Id varchar(255) not null
	,EncounterId varchar(255) not null
	,itemID varchar(255) not null
	,date varchar(255) null
	,endDate varchar(255) null
	,endData varchar(255) null
	,providerId varchar(255) not null
	,Notes varchar(255) null
	,displayIndex varchar(255) null
	,deleteFlag varchar(255) not null
	,Mod1 varchar(255) not null
	,Mod2 varchar(255) not null
	,Mod3 varchar(255) not null
	,units varchar(255) not null
	,codeFlag varchar(255) not null
	,Icd1 varchar(255) not null
	,Icd2 varchar(255) not null
	,Icd3 varchar(255) not null
	,Icd4 varchar(255) not null
	,icdcode1 varchar(255) not null
	,icdcode2 varchar(255) not null
	,icdcode3 varchar(255) not null
	,icdcode4 varchar(255) not null
	,vitalCpt varchar(255) not null
	,Mod4 varchar(255) not null
	,ToothNumber varchar(255) not null
	,Surface varchar(255) not null
	,documentedTime varchar(255) null
	,ndccode varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_billingdata] primary key ([Id])

	)

------------------------------
