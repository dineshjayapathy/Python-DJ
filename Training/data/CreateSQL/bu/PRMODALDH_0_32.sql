
create table labdataex

	(
	reportId varchar(255) not null
	,HL7ResultDate varchar(255) null
	,HL7ResultTime varchar(255) null
	,urllink varchar(255) null
	,interfacestatus varchar(255) null
	,processedresult varchar(255) null
	,VisitType varchar(255) not null
	,DateReceived varchar(255) not null
	,resultrcvddatetime varchar(255) not null
	,MigrateFlag varchar(255) not null
	,SentOutReqNo varchar(255) not null
	,facilityId varchar(255) not null
	,specimenReceiveTime varchar(255) not null
	,specimenReceiveDate varchar(255) not null
	,isPACSLinkEnabled varchar(255) not null
	,observationDate varchar(255) not null
	,observationTime varchar(255) not null
	,SpecimenActionCode varchar(255) not null
	,PlacerGroupNumberID varchar(255) not null
	,PatientAltRace varchar(255) not null
	,bodysitecode varchar(255) not null
	,ABNPrompted varchar(255) not null
	,ABNOption varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labdataex] primary key ([reportId])

	)

------------------------------
