
select
replace(replace(replace(cast(a.ID as varchar(max)),char(10),''),char(13),''),'"','') as ID
,replace(replace(replace(cast(a.ToSMSName as varchar(max)),char(10),''),char(13),''),'"','') as ToSMSName
,replace(replace(replace(cast(a.ToSMSNumber as varchar(max)),char(10),''),char(13),''),'"','') as ToSMSNumber
,replace(replace(replace(cast(a.ToSMSProvider as varchar(max)),char(10),''),char(13),''),'"','') as ToSMSProvider
,replace(replace(replace(cast(a.Retry as varchar(max)),char(10),''),char(13),''),'"','') as Retry
,replace(replace(replace(cast(a.SMSMessageID as varchar(max)),char(10),''),char(13),''),'"','') as SMSMessageID
,replace(replace(replace(cast(a.SMSMESSAGEBODY as varchar(max)),char(10),''),char(13),''),'"','') as SMSMESSAGEBODY
,replace(replace(replace(cast(a.SmsMessageStatus as varchar(max)),char(10),''),char(13),''),'"','') as SmsMessageStatus
,replace(replace(replace(cast(a.smsMessageType as varchar(max)),char(10),''),char(13),''),'"','') as smsMessageType
,replace(replace(replace(cast(a.SMSSubject as varchar(max)),char(10),''),char(13),''),'"','') as SMSSubject
,replace(replace(replace(cast(a.sentdate as varchar(max)),char(10),''),char(13),''),'"','') as sentdate
,convert(varchar, cast(a.SentTime as datetime), 20) as SentTime
,convert(varchar, cast(a.ScheduledDate as datetime), 20) as ScheduledDate
,convert(varchar, cast(a.ScheduledTime as datetime), 20) as ScheduledTime
,replace(replace(replace(cast(a.FromSMSName as varchar(max)),char(10),''),char(13),''),'"','') as FromSMSName
,replace(replace(replace(cast(a.FromSMSNumber as varchar(max)),char(10),''),char(13),''),'"','') as FromSMSNumber
,replace(replace(replace(cast(a.FromSMSProvider as varchar(max)),char(10),''),char(13),''),'"','') as FromSMSProvider
,replace(replace(replace(cast(a.ClientId as varchar(max)),char(10),''),char(13),''),'"','') as ClientId
,replace(replace(replace(cast(a.Priority as varchar(max)),char(10),''),char(13),''),'"','') as Priority
,replace(replace(replace(cast(a.EcwWebSMSUser as varchar(max)),char(10),''),char(13),''),'"','') as EcwWebSMSUser
,replace(replace(replace(cast(a.ErrorId as varchar(max)),char(10),''),char(13),''),'"','') as ErrorId
,replace(replace(replace(cast(a.ErrorMsg as varchar(max)),char(10),''),char(13),''),'"','') as ErrorMsg
,convert(varchar, cast(a.DateCreated as datetime), 20) as DateCreated
,replace(replace(replace(cast(a.isDeleted as varchar(max)),char(10),''),char(13),''),'"','') as isDeleted
,replace(replace(replace(cast(a.EncounterID as varchar(max)),char(10),''),char(13),''),'"','') as EncounterID
,replace(replace(replace(cast(a.LabID as varchar(max)),char(10),''),char(13),''),'"','') as LabID
,replace(replace(replace(cast(a.PatientId as varchar(max)),char(10),''),char(13),''),'"','') as PatientId
,replace(replace(replace(cast(a.FacilityId as varchar(max)),char(10),''),char(13),''),'"','') as FacilityId
,replace(replace(replace(cast(a.PtStatementId as varchar(max)),char(10),''),char(13),''),'"','') as PtStatementId
,replace(replace(replace(cast(a.Language as varchar(max)),char(10),''),char(13),''),'"','') as Language
,replace(replace(replace(cast(a.SMSMsgUser as varchar(max)),char(10),''),char(13),''),'"','') as SMSMsgUser
,replace(replace(replace(cast(a.SMSMsgPwd as varchar(max)),char(10),''),char(13),''),'"','') as SMSMsgPwd
,replace(replace(replace(cast(a.AppServMachineName as varchar(max)),char(10),''),char(13),''),'"','') as AppServMachineName
,replace(replace(replace(cast(a.AppServMachineIP as varchar(max)),char(10),''),char(13),''),'"','') as AppServMachineIP
,replace(replace(replace(cast(a.AppServMacAddr as varchar(max)),char(10),''),char(13),''),'"','') as AppServMacAddr
,replace(replace(replace(cast(a.SentByLastName as varchar(max)),char(10),''),char(13),''),'"','') as SentByLastName
,replace(replace(replace(cast(a.SentByFirstName as varchar(max)),char(10),''),char(13),''),'"','') as SentByFirstName
,replace(replace(replace(cast(a.SentBy as varchar(max)),char(10),''),char(13),''),'"','') as SentBy
,replace(replace(replace(cast(a.VendorMsgId as varchar(max)),char(10),''),char(13),''),'"','') as VendorMsgId
,replace(replace(replace(cast(a.VendorSMSresponse as varchar(max)),char(10),''),char(13),''),'"','') as VendorSMSresponse
,replace(replace(replace(cast(a.TemplateId as varchar(max)),char(10),''),char(13),''),'"','') as TemplateId
,replace(replace(replace(cast(a.uploadlocation as varchar(max)),char(10),''),char(13),''),'"','') as uploadlocation
,replace(replace(replace(cast(a.DoctorId as varchar(max)),char(10),''),char(13),''),'"','') as DoctorId
,replace(replace(replace(cast(a.RequiredConfirm as varchar(max)),char(10),''),char(13),''),'"','') as RequiredConfirm
,replace(replace(replace(cast(a.ConfirmNumber as varchar(max)),char(10),''),char(13),''),'"','') as ConfirmNumber
,replace(replace(replace(cast(a.smsmsgreply as varchar(max)),char(10),''),char(13),''),'"','') as smsmsgreply
,replace(replace(replace(cast(a.smsmsgreply_id as varchar(max)),char(10),''),char(13),''),'"','') as smsmsgreply_id
,replace(replace(replace(cast(a.parentid as varchar(max)),char(10),''),char(13),''),'"','') as parentid
,replace(replace(replace(cast(a.ActualMessage as varchar(max)),char(10),''),char(13),''),'"','') as ActualMessage
,replace(replace(replace(cast(a.ResourceId as varchar(max)),char(10),''),char(13),''),'"','') as ResourceId
,replace(replace(replace(cast(a.msgSource as varchar(max)),char(10),''),char(13),''),'"','') as msgSource
,replace(replace(replace(cast(a.ecwversion as varchar(max)),char(10),''),char(13),''),'"','') as ecwversion
,replace(replace(replace(cast(a.ecmversion as varchar(max)),char(10),''),char(13),''),'"','') as ecmversion
,replace(replace(replace(cast(a.AutoUpgradeKey as varchar(max)),char(10),''),char(13),''),'"','') as AutoUpgradeKey
,replace(replace(replace(cast(a.FaxLogId as varchar(max)),char(10),''),char(13),''),'"','') as FaxLogId
,replace(replace(replace(cast(a.eRxReqID as varchar(max)),char(10),''),char(13),''),'"','') as eRxReqID
,replace(replace(replace(cast(a.eRxReFillReqID as varchar(max)),char(10),''),char(13),''),'"','') as eRxReFillReqID
,replace(replace(replace(cast(a.campaignid as varchar(max)),char(10),''),char(13),''),'"','') as campaignid
,replace(replace(replace(cast(a.campaign as varchar(max)),char(10),''),char(13),''),'"','') as campaign


from smsmsglogs a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
