
create table referral

	(
	ReferralId varchar(255) not null
	,patientID varchar(255) not null
	,insId varchar(255) not null
	,refFrom varchar(255) not null
	,authNo varchar(255) not null
	,date varchar(255) not null
	,reason varchar(255) not null
	,diagnosis varchar(255) not null
	,refStDate varchar(255) not null
	,refEnddate varchar(255) not null
	,visitsAllowed varchar(255) not null
	,visitsUsed varchar(255) not null
	,RefTo varchar(255) not null
	,notes varchar(255) not null
	,deleteFlag varchar(255) not null
	,referralType varchar(255) not null
	,priority varchar(255) not null
	,assignedTo varchar(255) not null
	,assignedToId varchar(255) not null
	,status varchar(255) not null
	,authtype varchar(255) not null
	,procedures varchar(255) not null
	,fromfacility varchar(255) not null
	,ToFacility varchar(255) not null
	,speciality varchar(255) not null
	,POS varchar(255) not null
	,UnitType varchar(255) not null
	,FrontOfficeAuth varchar(255) null
	,ReferralNumber varchar(255) not null
	,apptDate varchar(255) not null
	,clinicalNotes varchar(255) null
	,ReceivedDate varchar(255) not null
	,refEncId varchar(255) not null
	,ApptTime varchar(255) not null
	,extNHXApptBlockId varchar(255) not null
	,extNHXRefTxId varchar(255) not null
	,refReqId varchar(255) not null
	,refFromP2pNPI varchar(255) not null
	,refFromName varchar(255) not null
	,refToP2pNPI varchar(255) not null
	,refToName varchar(255) not null
	,uploadedToPtDocs varchar(255) not null
	,modifiedDate varchar(255) not null
	,refToCCNameList varchar(255) null
	,refToCCNPIList varchar(255) null
	,p2pDeliveryStatus varchar(255) null
	,statusUpdateDate varchar(255) not null
	,ccdaValidationStatus varchar(255) null
	,fromDirectAddress varchar(255) not null
	,toDirectAddress varchar(255) not null
	,toDirectAddress1 varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_referral] primary key ([ReferralId])

	)

------------------------------
