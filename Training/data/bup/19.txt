
select
replace(replace(replace(cast(a.LogID as varchar(max)),char(10),''),char(13),''),'"','') as LogID
,replace(replace(replace(cast(a.LoginID as varchar(max)),char(10),''),char(13),''),'"','') as LoginID
,replace(replace(replace(cast(a.DoctorID as varchar(max)),char(10),''),char(13),''),'"','') as DoctorID
,replace(replace(replace(cast(a.PatientID as varchar(max)),char(10),''),char(13),''),'"','') as PatientID
,replace(replace(replace(cast(a.ToID as varchar(max)),char(10),''),char(13),''),'"','') as ToID
,replace(replace(replace(cast(a.ToName as varchar(max)),char(10),''),char(13),''),'"','') as ToName
,replace(replace(replace(cast(a.ToFax as varchar(max)),char(10),''),char(13),''),'"','') as ToFax
,replace(replace(replace(cast(a.ToCompany as varchar(max)),char(10),''),char(13),''),'"','') as ToCompany
,replace(replace(replace(cast(a.EncounterID as varchar(max)),char(10),''),char(13),''),'"','') as EncounterID
,replace(replace(replace(cast(a.FaxInitTime as varchar(max)),char(10),''),char(13),''),'"','') as FaxInitTime
,replace(replace(replace(cast(a.Retry as varchar(max)),char(10),''),char(13),''),'"','') as Retry
,replace(replace(replace(cast(a.Status as varchar(max)),char(10),''),char(13),''),'"','') as Status
,replace(replace(replace(cast(a.faxdata as varchar(max)),char(10),''),char(13),''),'"','') as faxdata
,replace(replace(replace(cast(a.FaxStatus as varchar(max)),char(10),''),char(13),''),'"','') as FaxStatus
,convert(varchar, cast(a.SendDate as datetime), 20) as SendDate
,replace(replace(replace(cast(a.FaxType as varchar(max)),char(10),''),char(13),''),'"','') as FaxType
,replace(replace(replace(cast(a.FaxManLogID as varchar(max)),char(10),''),char(13),''),'"','') as FaxManLogID
,replace(replace(replace(cast(a.FaxPrefix as varchar(max)),char(10),''),char(13),''),'"','') as FaxPrefix
,replace(replace(replace(cast(a.FaxFile as varchar(max)),char(10),''),char(13),''),'"','') as FaxFile
,replace(replace(replace(cast(a.FaxTransaction as varchar(max)),char(10),''),char(13),''),'"','') as FaxTransaction
,replace(replace(replace(cast(a.RxIds as varchar(max)),char(10),''),char(13),''),'"','') as RxIds
,replace(replace(replace(cast(a.FaxLogStatus as varchar(max)),char(10),''),char(13),''),'"','') as FaxLogStatus
,replace(replace(replace(cast(a.FaxLogBatch as varchar(max)),char(10),''),char(13),''),'"','') as FaxLogBatch
,replace(replace(replace(cast(a.FacilityID as varchar(max)),char(10),''),char(13),''),'"','') as FacilityID
,replace(replace(replace(cast(a.FacilityName as varchar(max)),char(10),''),char(13),''),'"','') as FacilityName
,replace(replace(replace(cast(a.reminded as varchar(max)),char(10),''),char(13),''),'"','') as reminded
,convert(varchar, cast(a.remindedDate as datetime), 20) as remindedDate
,replace(replace(replace(cast(a.FaxCoverPage as varchar(max)),char(10),''),char(13),''),'"','') as FaxCoverPage
,replace(replace(replace(cast(a.FaxCoverPageID as varchar(max)),char(10),''),char(13),''),'"','') as FaxCoverPageID
,replace(replace(replace(cast(a.FaxStatusMsg as varchar(max)),char(10),''),char(13),''),'"','') as FaxStatusMsg
,replace(replace(replace(cast(a.FaxSubject as varchar(max)),char(10),''),char(13),''),'"','') as FaxSubject
,replace(replace(replace(cast(a.LoginName as varchar(max)),char(10),''),char(13),''),'"','') as LoginName
,convert(varchar, cast(a.scheduledDate as datetime), 20) as scheduledDate
,replace(replace(replace(cast(a.sentnotification as varchar(max)),char(10),''),char(13),''),'"','') as sentnotification
,replace(replace(replace(cast(a.OriginalFaxDoc as varchar(max)),char(10),''),char(13),''),'"','') as OriginalFaxDoc
,replace(replace(replace(cast(a.FromName as varchar(max)),char(10),''),char(13),''),'"','') as FromName
,replace(replace(replace(cast(a.FromVoice as varchar(max)),char(10),''),char(13),''),'"','') as FromVoice
,replace(replace(replace(cast(a.fromcompany as varchar(max)),char(10),''),char(13),''),'"','') as fromcompany
,convert(varchar, cast(a.FaxInitTime2 as datetime), 20) as FaxInitTime2
,replace(replace(replace(cast(a.isMsgSent as varchar(max)),char(10),''),char(13),''),'"','') as isMsgSent
,replace(replace(replace(cast(a.isTextMsgSent as varchar(max)),char(10),''),char(13),''),'"','') as isTextMsgSent


from faxlogs a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
