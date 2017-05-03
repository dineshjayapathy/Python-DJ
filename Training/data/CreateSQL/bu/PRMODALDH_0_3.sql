
create table allergies

	(
	patientID varchar(255) not null
	,drug varchar(255) null
	,allergy varchar(255) not null
	,encounterId varchar(255) null
	,itemID varchar(255) null
	,displayIndex varchar(255) null
	,SMDamConceptID varchar(255) null
	,SMDamConceptIDDesc varchar(255) null
	,ndc_code varchar(255) null
	,allergytype varchar(255) not null
	,type varchar(255) not null
	,status varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_allergies] primary key ([Id])

	)

------------------------------
