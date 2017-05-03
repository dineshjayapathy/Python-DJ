
create table faxlogs

	(
	LogID varchar(255) not null
	,LoginID varchar(255) not null
	,DoctorID varchar(255) not null
	,PatientID varchar(255) not null
	,ToID varchar(255) null
	,ToName varchar(255) not null
	,ToFax varchar(255) not null
	,ToCompany varchar(255) not null
	,EncounterID varchar(255) null
	,FaxInitTime varchar(255) not null
	,Retry varchar(255) null
	,Status varchar(255) not null
	,faxdata varchar(255) not null
	,FaxStatus varchar(255) not null
	,SendDate varchar(255) null
	,FaxType varchar(255) null
	,FaxManLogID varchar(255) not null
	,FaxPrefix varchar(255) not null
	,FaxFile varchar(255) null
	,FaxTransaction varchar(255) null
	,RxIds varchar(255) null
	,FaxLogStatus varchar(255) not null
	,FaxLogBatch varchar(255) null
	,FacilityID varchar(255) not null
	,FacilityName varchar(255) not null
	,reminded varchar(255) null
	,remindedDate varchar(255) null
	,FaxCoverPage varchar(255) not null
	,FaxCoverPageID varchar(255) not null
	,FaxStatusMsg varchar(255) not null
	,FaxSubject varchar(255) not null
	,LoginName varchar(255) not null
	,scheduledDate varchar(255) null
	,sentnotification varchar(255) not null
	,OriginalFaxDoc varchar(255) null
	,FromName varchar(255) null
	,FromVoice varchar(255) null
	,fromcompany varchar(255) not null
	,FaxInitTime2 varchar(255) not null
	,isMsgSent varchar(255) not null
	,isTextMsgSent varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_faxlogs] primary key ([LogID])

	)

------------------------------
