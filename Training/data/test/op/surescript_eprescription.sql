
select
replace(replace(replace(cast(a.ID as varchar(max)),char(10),''),char(13),''),'"','') as ID
,replace(replace(replace(cast(a.ToName as varchar(max)),char(10),''),char(13),''),'"','') as ToName
,replace(replace(replace(cast(a.ContactType as varchar(max)),char(10),''),char(13),''),'"','') as ContactType
,replace(replace(replace(cast(a.ToPhone as varchar(max)),char(10),''),char(13),''),'"','') as ToPhone
,replace(replace(replace(cast(a.Retry as varchar(max)),char(10),''),char(13),''),'"','') as Retry
,replace(replace(replace(cast(a.voiceMessageStatus as varchar(max)),char(10),''),char(13),''),'"','') as voiceMessageStatus
,replace(replace(replace(cast(a.SentDate as varchar(max)),char(10),''),char(13),''),'"','') as SentDate
,replace(replace(replace(cast(a.Priority as varchar(max)),char(10),''),char(13),''),'"','') as Priority
,replace(replace(replace(cast(a.VoiceMessageType as varchar(max)),char(10),''),char(13),''),'"','') as VoiceMessageType
,replace(replace(replace(cast(a.VoiceMessageLiveText as varchar(max)),char(10),''),char(13),''),'"','') as VoiceMessageLiveText
,replace(replace(replace(cast(a.VoiceMessageLiveAudio as varchar(max)),char(10),''),char(13),''),'"','') as VoiceMessageLiveAudio
,replace(replace(replace(cast(a.VoiceMessageMachineText as varchar(max)),char(10),''),char(13),''),'"','') as VoiceMessageMachineText
,replace(replace(replace(cast(a.VoiceMessageMachineAudio as varchar(max)),char(10),''),char(13),''),'"','') as VoiceMessageMachineAudio
,replace(replace(replace(cast(a.InitialGreetingAudio as varchar(max)),char(10),''),char(13),''),'"','') as InitialGreetingAudio
,replace(replace(replace(cast(a.VoiceMessageId as varchar(max)),char(10),''),char(13),''),'"','') as VoiceMessageId
,convert(varchar, cast(a.Date_Created as datetime), 20) as Date_Created
,replace(replace(replace(cast(a.Date_Modified as varchar(max)),char(10),''),char(13),''),'"','') as Date_Modified
,replace(replace(replace(cast(a.isDeleted as varchar(max)),char(10),''),char(13),''),'"','') as isDeleted
,replace(replace(replace(cast(a.StatusMsg as varchar(max)),char(10),''),char(13),''),'"','') as StatusMsg
,replace(replace(replace(cast(a.CallerIDNumber as varchar(max)),char(10),''),char(13),''),'"','') as CallerIDNumber
,replace(replace(replace(cast(a.InitialGreetingAudioText as varchar(max)),char(10),''),char(13),''),'"','') as InitialGreetingAudioText
,replace(replace(replace(cast(a.OtherContactType as varchar(max)),char(10),''),char(13),''),'"','') as OtherContactType
,replace(replace(replace(cast(a.EncounterID as varchar(max)),char(10),''),char(13),''),'"','') as EncounterID
,replace(replace(replace(cast(a.MaxLiveReplays as varchar(max)),char(10),''),char(13),''),'"','') as MaxLiveReplays
,replace(replace(replace(cast(a.OperatorNumber as varchar(max)),char(10),''),char(13),''),'"','') as OperatorNumber
,replace(replace(replace(cast(a.ConfirmationStatus as varchar(max)),char(10),''),char(13),''),'"','') as ConfirmationStatus
,replace(replace(replace(cast(a.DeliveryType as varchar(max)),char(10),''),char(13),''),'"','') as DeliveryType
,replace(replace(replace(cast(a.ErrorMsg as varchar(max)),char(10),''),char(13),''),'"','') as ErrorMsg
,replace(replace(replace(cast(a.LabID as varchar(max)),char(10),''),char(13),''),'"','') as LabID
,replace(replace(replace(cast(a.ConfirmCancelEnabled as varchar(max)),char(10),''),char(13),''),'"','') as ConfirmCancelEnabled
,replace(replace(replace(cast(a.PatientId as varchar(max)),char(10),''),char(13),''),'"','') as PatientId
,replace(replace(replace(cast(a.PtStatementId as varchar(max)),char(10),''),char(13),''),'"','') as PtStatementId
,replace(replace(replace(cast(a.Language as varchar(max)),char(10),''),char(13),''),'"','') as Language
,convert(varchar, cast(a.ScheduledDate as datetime), 20) as ScheduledDate
,convert(varchar, cast(a.ScheduledTime as datetime), 20) as ScheduledTime
,replace(replace(replace(cast(a.SentByLastName as varchar(max)),char(10),''),char(13),''),'"','') as SentByLastName
,replace(replace(replace(cast(a.SentByFirstName as varchar(max)),char(10),''),char(13),''),'"','') as SentByFirstName
,replace(replace(replace(cast(a.SentBy as varchar(max)),char(10),''),char(13),''),'"','') as SentBy
,replace(replace(replace(cast(a.FacilityId as varchar(max)),char(10),''),char(13),''),'"','') as FacilityId
,convert(varchar, cast(a.SentTime as datetime), 20) as SentTime
,replace(replace(replace(cast(a.uploadLocation as varchar(max)),char(10),''),char(13),''),'"','') as uploadLocation
,replace(replace(replace(cast(a.TTSVoice as varchar(max)),char(10),''),char(13),''),'"','') as TTSVoice
,replace(replace(replace(cast(a.VMsgUser as varchar(max)),char(10),''),char(13),''),'"','') as VMsgUser
,replace(replace(replace(cast(a.VMsgPwd as varchar(max)),char(10),''),char(13),''),'"','') as VMsgPwd
,replace(replace(replace(cast(a.AppServMachineName as varchar(max)),char(10),''),char(13),''),'"','') as AppServMachineName
,replace(replace(replace(cast(a.AppServMachineIP as varchar(max)),char(10),''),char(13),''),'"','') as AppServMachineIP
,replace(replace(replace(cast(a.parentid as varchar(max)),char(10),''),char(13),''),'"','') as parentid
,replace(replace(replace(cast(a.recordurl as varchar(max)),char(10),''),char(13),''),'"','') as recordurl
,replace(replace(replace(cast(a.StatusDetail as varchar(max)),char(10),''),char(13),''),'"','') as StatusDetail
,replace(replace(replace(cast(a.ResourceId as varchar(max)),char(10),''),char(13),''),'"','') as ResourceId
,replace(replace(replace(cast(a.recordedMessageId as varchar(max)),char(10),''),char(13),''),'"','') as recordedMessageId
,replace(replace(replace(cast(a.ecwVersion as varchar(max)),char(10),''),char(13),''),'"','') as ecwVersion
,replace(replace(replace(cast(a.ecmVersion as varchar(max)),char(10),''),char(13),''),'"','') as ecmVersion
,replace(replace(replace(cast(a.timeZone as varchar(max)),char(10),''),char(13),''),'"','') as timeZone
,replace(replace(replace(cast(a.retryfailedmsg as varchar(max)),char(10),''),char(13),''),'"','') as retryfailedmsg
,replace(replace(replace(cast(a.ApptStatus as varchar(max)),char(10),''),char(13),''),'"','') as ApptStatus
,replace(replace(replace(cast(a.ivrvalue as varchar(max)),char(10),''),char(13),''),'"','') as ivrvalue
,replace(replace(replace(cast(a.AutoUpgradeKey as varchar(max)),char(10),''),char(13),''),'"','') as AutoUpgradeKey
,replace(replace(replace(cast(a.OtherContactNumbers as varchar(max)),char(10),''),char(13),''),'"','') as OtherContactNumbers
,replace(replace(replace(cast(a.ErrorCode as varchar(max)),char(10),''),char(13),''),'"','') as ErrorCode
,convert(varchar, cast(a.MsgExpireTime as datetime), 20) as MsgExpireTime
,replace(replace(replace(cast(a.PtPin as varchar(max)),char(10),''),char(13),''),'"','') as PtPin
,replace(replace(replace(cast(a.PtPinType as varchar(max)),char(10),''),char(13),''),'"','') as PtPinType
,replace(replace(replace(cast(a.isMsgSecured as varchar(max)),char(10),''),char(13),''),'"','') as isMsgSecured
,replace(replace(replace(cast(a.msgSource as varchar(max)),char(10),''),char(13),''),'"','') as msgSource
,replace(replace(replace(cast(a.providerGreetingsUid as varchar(max)),char(10),''),char(13),''),'"','') as providerGreetingsUid
,replace(replace(replace(cast(a.ClientResponse as varchar(max)),char(10),''),char(13),''),'"','') as ClientResponse
,replace(replace(replace(cast(a.messageJobType as varchar(max)),char(10),''),char(13),''),'"','') as messageJobType
,replace(replace(replace(cast(a.FaxLogId as varchar(max)),char(10),''),char(13),''),'"','') as FaxLogId
,replace(replace(replace(cast(a.eRxReqID as varchar(max)),char(10),''),char(13),''),'"','') as eRxReqID
,replace(replace(replace(cast(a.eRxReFillReqID as varchar(max)),char(10),''),char(13),''),'"','') as eRxReFillReqID
,replace(replace(replace(cast(a.providerid as varchar(max)),char(10),''),char(13),''),'"','') as providerid
,replace(replace(replace(cast(a.campaignid as varchar(max)),char(10),''),char(13),''),'"','') as campaignid
,replace(replace(replace(cast(a.campaign as varchar(max)),char(10),''),char(13),''),'"','') as campaign


from voicemsglogs a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
