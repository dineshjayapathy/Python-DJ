
create table patients

	(
	pid varchar(255) not null
	,ControlNo varchar(255) not null
	,employername varchar(255) not null
	,employeraddress varchar(255) null
	,employeraddress2 varchar(255) not null
	,employercity varchar(255) null
	,employerstate varchar(255) null
	,employerzip varchar(255) null
	,employerPhone varchar(255) null
	,msgflag varchar(255) null
	,insname varchar(255) null
	,insgroupno varchar(255) null
	,inssubscriberno varchar(255) null
	,inscopay varchar(255) null
	,pastHistory varchar(255) null
	,pharmacyname varchar(255) null
	,pharmacyno varchar(255) null
	,surgicalHistory varchar(255) null
	,hospitalization varchar(255) null
	,medications varchar(255) null
	,insname2 varchar(255) null
	,insgroupno2 varchar(255) null
	,inssubscriberno2 varchar(255) null
	,inscopay2 varchar(255) null
	,straddress varchar(255) null
	,city varchar(255) null
	,state varchar(255) null
	,zip varchar(255) null
	,doctorId varchar(255) not null
	,AttendingDoctorId varchar(255) not null
	,pharmacyFax varchar(255) null
	,pmcId varchar(255) null
	,insId varchar(255) null
	,insId2 varchar(255) null
	,maritalstatus varchar(255) not null
	,strAddress2 varchar(255) null
	,notes varchar(255) not null
	,deceased varchar(255) not null
	,deceasedDate varchar(255) not null
	,deceasedNotes varchar(255) not null
	,language varchar(255) not null
	,GrId varchar(255) not null
	,GrRel varchar(255) not null
	,IsGrPt varchar(255) not null
	,GrType varchar(255) not null
	,PrimIns varchar(255) not null
	,ResType varchar(255) not null
	,StudentStatus varchar(255) not null
	,EmpStatus varchar(255) not null
	,picFileName varchar(255) not null
	,RelInfo varchar(255) not null
	,RelInfoDate varchar(255) null
	,PayorType varchar(255) not null
	,SelfPay varchar(255) not null
	,hl7Id varchar(255) not null
	,BillingAlert varchar(255) not null
	,BillingAlertNotes varchar(255) not null
	,givenToColl varchar(255) not null
	,givenDate varchar(255) null
	,DefFeeSchId varchar(255) not null
	,race varchar(255) not null
	,PtStatus varchar(255) null
	,ptStmtDate varchar(255) null
	,refPrId varchar(255) null
	,rendPrId varchar(255) null
	,nostatements varchar(255) not null
	,CurrentCollectionStatus varchar(255) not null
	,CollectionTimestamp varchar(255) not null
	,interpretSvc varchar(255) null
	,GlobalAlert varchar(255) not null
	,characterestic varchar(255) not null
	,CollectionStageDate varchar(255) not null
	,regdate varchar(255) null
	,ethnicity varchar(255) null
	,vfc varchar(255) null
	,empId varchar(255) not null
	,irisenroll varchar(255) not null
	,CollectionAgencyStatus varchar(255) null
	,RxConsent varchar(255) null
	,acctbal varchar(255) null
	,CollStartStopDt varchar(255) null
	,MailOrderPharmacyId varchar(255) null
	,MOMemberId varchar(255) null
	,teamMember varchar(255) not null
	,bTranslator varchar(255) null
	,Address2Country varchar(255) not null
	,VoiceEnabled varchar(255) null
	,assignedtoId varchar(255) not null
	,assignedto varchar(255) not null
	,UseStreetAddressForRxFlag varchar(255) null
	,textenabled varchar(255) null
	,GrStmtDate varchar(255) null
	,msgCellflag varchar(255) null
	,enableEmail varchar(255) null
	,enableLetters varchar(255) null
	,webEnabledDate varchar(255) null
	,preset varchar(255) null
	,encpwd varchar(255) null
	,lognotes varchar(255) null
	,optout varchar(255) null
	,optreasonId varchar(255) null
	,IsMigratedRecord varchar(255) null
	,DefaultLab varchar(255) not null
	,DefaultDI varchar(255) not null
	,emailreasonId varchar(255) null
	,isKioskConsentReceived varchar(255) null
	,isPtOptsOut varchar(255) not null
	,secureMsgKey varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_patients] primary key ([pid])

	)

------------------------------
