
create table smsmsglogs

	(
	ID varchar(255) not null
	,ToSMSName varchar(255) null
	,ToSMSNumber varchar(255) null
	,ToSMSProvider varchar(255) null
	,Retry varchar(255) null
	,SMSMessageID varchar(255) null
	,SMSMESSAGEBODY varchar(255) null
	,SmsMessageStatus varchar(255) null
	,smsMessageType varchar(255) null
	,SMSSubject varchar(255) null
	,sentdate varchar(255) not null
	,SentTime varchar(255) null
	,ScheduledDate varchar(255) null
	,ScheduledTime varchar(255) null
	,FromSMSName varchar(255) null
	,FromSMSNumber varchar(255) null
	,FromSMSProvider varchar(255) null
	,ClientId varchar(255) null
	,Priority varchar(255) null
	,EcwWebSMSUser varchar(255) null
	,ErrorId varchar(255) null
	,ErrorMsg varchar(255) null
	,DateCreated varchar(255) not null
	,isDeleted varchar(255) null
	,EncounterID varchar(255) null
	,LabID varchar(255) null
	,PatientId varchar(255) null
	,FacilityId varchar(255) null
	,PtStatementId varchar(255) null
	,Language varchar(255) null
	,SMSMsgUser varchar(255) null
	,SMSMsgPwd varchar(255) null
	,AppServMachineName varchar(255) null
	,AppServMachineIP varchar(255) null
	,AppServMacAddr varchar(255) null
	,SentByLastName varchar(255) null
	,SentByFirstName varchar(255) not null
	,SentBy varchar(255) null
	,VendorMsgId varchar(255) null
	,VendorSMSresponse varchar(255) null
	,TemplateId varchar(255) null
	,uploadlocation varchar(255) null
	,DoctorId varchar(255) null
	,RequiredConfirm varchar(255) null
	,ConfirmNumber varchar(255) null
	,smsmsgreply varchar(255) null
	,smsmsgreply_id varchar(255) null
	,parentid varchar(255) not null
	,ActualMessage varchar(255) null
	,ResourceId varchar(255) not null
	,msgSource varchar(255) null
	,ecwversion varchar(255) null
	,ecmversion varchar(255) null
	,AutoUpgradeKey varchar(255) null
	,FaxLogId varchar(255) null
	,eRxReqID varchar(255) null
	,eRxReFillReqID varchar(255) null
	,campaignid varchar(255) not null
	,campaign varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_smsmsglogs] primary key ([ID])

	)

------------------------------
