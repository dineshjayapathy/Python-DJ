
create table enc

	(
	encounterID varchar(255) not null
	,patientID varchar(255) not null
	,doctorID varchar(255) not null
	,date varchar(255) null
	,time varchar(255) null
	,startTime varchar(255) null
	,endTime varchar(255) null
	,reason varchar(255) null
	,VisitType varchar(255) null
	,roomNo varchar(255) null
	,STATUS varchar(255) not null
	,deleteFlag varchar(255) null
	,encType varchar(255) null
	,encLock varchar(255) null
	,Notes varchar(255) null
	,generalNotes varchar(255) not null
	,vmid varchar(255) not null
	,facilityId varchar(255) null
	,POS varchar(255) not null
	,arrivedTime varchar(255) not null
	,timeIn varchar(255) not null
	,timeOut varchar(255) not null
	,stsAfterArr varchar(255) not null
	,depTime varchar(255) not null
	,stsAfterChkIn varchar(255) not null
	,HL7Id varchar(255) not null
	,newPt varchar(255) not null
	,Dx varchar(255) not null
	,reminded varchar(255) null
	,remindedDate varchar(255) null
	,VisitCopay varchar(255) not null
	,CopayChanged varchar(255) not null
	,ClaimRequired varchar(255) not null
	,ClaimReq varchar(255) not null
	,VisitTypeOverriden varchar(255) null
	,refPrName varchar(255) null
	,refPrId varchar(255) null
	,PSACGroup varchar(255) null
	,deptid varchar(255) null
	,ResourceId varchar(255) not null
	,EncEligibilityStatus varchar(255) not null
	,EligibilityMessage varchar(255) not null
	,InvoiceId varchar(255) not null
	,EligSubId varchar(255) not null
	,EncEligibilityStatus2 varchar(255) not null
	,EligibilityMessage2 varchar(255) not null
	,EncEligibilityStatus3 varchar(255) not null
	,EligibilityMessage3 varchar(255) not null
	,trans_dictation varchar(255) null
	,waitTime varchar(255) null
	,websync varchar(255) null
	,dateIn varchar(255) null
	,dateOut varchar(255) null
	,notesDoneTime varchar(255) null
	,notesLoginId varchar(255) null
	,notesLogOutId varchar(255) null
	,visittypeid varchar(255) null
	,UTCStartTime varchar(255) null
	,UTCEndTime varchar(255) null
	,visitstscodeid varchar(255) not null
	,practiceId varchar(255) not null
	,immnotessendstatus varchar(255) null
	,transitionofcare varchar(255) null
	,prNotesSendStatus varchar(255) not null
	,readytobill varchar(255) not null
	,reviewbeforebill varchar(255) not null
	,EncEligibilityStatus4 varchar(255) not null
	,EligibilityMessage4 varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_enc] primary key ([encounterID])

	)

------------------------------
