
create table voicemsglogs

	(
	ID varchar(255) not null
	,ToName varchar(255) null
	,ContactType varchar(255) null
	,ToPhone varchar(255) null
	,Retry varchar(255) null
	,voiceMessageStatus varchar(255) null
	,SentDate varchar(255) null
	,Priority varchar(255) null
	,VoiceMessageType varchar(255) null
	,VoiceMessageLiveText varchar(255) null
	,VoiceMessageLiveAudio varchar(255) null
	,VoiceMessageMachineText varchar(255) null
	,VoiceMessageMachineAudio varchar(255) null
	,InitialGreetingAudio varchar(255) null
	,VoiceMessageId varchar(255) null
	,Date_Created varchar(255) not null
	,Date_Modified varchar(255) null
	,isDeleted varchar(255) null
	,StatusMsg varchar(255) null
	,CallerIDNumber varchar(255) null
	,InitialGreetingAudioText varchar(255) null
	,OtherContactType varchar(255) null
	,EncounterID varchar(255) null
	,MaxLiveReplays varchar(255) null
	,OperatorNumber varchar(255) null
	,ConfirmationStatus varchar(255) null
	,DeliveryType varchar(255) null
	,ErrorMsg varchar(255) null
	,LabID varchar(255) not null
	,ConfirmCancelEnabled varchar(255) null
	,PatientId varchar(255) null
	,PtStatementId varchar(255) null
	,Language varchar(255) null
	,ScheduledDate varchar(255) not null
	,ScheduledTime varchar(255) not null
	,SentByLastName varchar(255) not null
	,SentByFirstName varchar(255) not null
	,SentBy varchar(255) not null
	,FacilityId varchar(255) not null
	,SentTime varchar(255) not null
	,uploadLocation varchar(255) null
	,TTSVoice varchar(255) null
	,VMsgUser varchar(255) null
	,VMsgPwd varchar(255) null
	,AppServMachineName varchar(255) null
	,AppServMachineIP varchar(255) null
	,parentid varchar(255) null
	,recordurl varchar(255) null
	,StatusDetail varchar(255) null
	,ResourceId varchar(255) not null
	,recordedMessageId varchar(255) null
	,ecwVersion varchar(255) null
	,ecmVersion varchar(255) null
	,timeZone varchar(255) null
	,retryfailedmsg varchar(255) not null
	,ApptStatus varchar(255) null
	,ivrvalue varchar(255) not null
	,AutoUpgradeKey varchar(255) null
	,OtherContactNumbers varchar(255) null
	,ErrorCode varchar(255) not null
	,MsgExpireTime varchar(255) null
	,PtPin varchar(255) not null
	,PtPinType varchar(255) null
	,isMsgSecured varchar(255) not null
	,msgSource varchar(255) null
	,providerGreetingsUid varchar(255) null
	,ClientResponse varchar(255) not null
	,messageJobType varchar(255) not null
	,FaxLogId varchar(255) not null
	,eRxReqID varchar(255) not null
	,eRxReFillReqID varchar(255) not null
	,providerid varchar(255) not null
	,campaignid varchar(255) not null
	,campaign varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_voicemsglogs] primary key ([ID])

	)

------------------------------
