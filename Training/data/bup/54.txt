
select
replace(replace(replace(cast(a.ReferralId as varchar(max)),char(10),''),char(13),''),'"','') as ReferralId
,replace(replace(replace(cast(a.patientID as varchar(max)),char(10),''),char(13),''),'"','') as patientID
,replace(replace(replace(cast(a.insId as varchar(max)),char(10),''),char(13),''),'"','') as insId
,replace(replace(replace(cast(a.refFrom as varchar(max)),char(10),''),char(13),''),'"','') as refFrom
,replace(replace(replace(cast(a.authNo as varchar(max)),char(10),''),char(13),''),'"','') as authNo
,convert(varchar, cast(a.date as datetime), 20) as date
,replace(replace(replace(cast(a.reason as varchar(max)),char(10),''),char(13),''),'"','') as reason
,replace(replace(replace(cast(a.diagnosis as varchar(max)),char(10),''),char(13),''),'"','') as diagnosis
,convert(varchar, cast(a.refStDate as datetime), 20) as refStDate
,convert(varchar, cast(a.refEnddate as datetime), 20) as refEnddate
,replace(replace(replace(cast(a.visitsAllowed as varchar(max)),char(10),''),char(13),''),'"','') as visitsAllowed
,replace(replace(replace(cast(a.visitsUsed as varchar(max)),char(10),''),char(13),''),'"','') as visitsUsed
,replace(replace(replace(cast(a.RefTo as varchar(max)),char(10),''),char(13),''),'"','') as RefTo
,replace(replace(replace(cast(a.notes as varchar(max)),char(10),''),char(13),''),'"','') as notes
,replace(replace(replace(cast(a.deleteFlag as varchar(max)),char(10),''),char(13),''),'"','') as deleteFlag
,replace(replace(replace(cast(a.referralType as varchar(max)),char(10),''),char(13),''),'"','') as referralType
,replace(replace(replace(cast(a.priority as varchar(max)),char(10),''),char(13),''),'"','') as priority
,replace(replace(replace(cast(a.assignedTo as varchar(max)),char(10),''),char(13),''),'"','') as assignedTo
,replace(replace(replace(cast(a.assignedToId as varchar(max)),char(10),''),char(13),''),'"','') as assignedToId
,replace(replace(replace(cast(a.status as varchar(max)),char(10),''),char(13),''),'"','') as status
,replace(replace(replace(cast(a.authtype as varchar(max)),char(10),''),char(13),''),'"','') as authtype
,replace(replace(replace(cast(a.procedures as varchar(max)),char(10),''),char(13),''),'"','') as procedures
,replace(replace(replace(cast(a.fromfacility as varchar(max)),char(10),''),char(13),''),'"','') as fromfacility
,replace(replace(replace(cast(a.ToFacility as varchar(max)),char(10),''),char(13),''),'"','') as ToFacility
,replace(replace(replace(cast(a.speciality as varchar(max)),char(10),''),char(13),''),'"','') as speciality
,replace(replace(replace(cast(a.POS as varchar(max)),char(10),''),char(13),''),'"','') as POS
,replace(replace(replace(cast(a.UnitType as varchar(max)),char(10),''),char(13),''),'"','') as UnitType
,replace(replace(replace(cast(a.FrontOfficeAuth as varchar(max)),char(10),''),char(13),''),'"','') as FrontOfficeAuth
,replace(replace(replace(cast(a.ReferralNumber as varchar(max)),char(10),''),char(13),''),'"','') as ReferralNumber
,convert(varchar, cast(a.apptDate as datetime), 20) as apptDate
,replace(replace(replace(cast(a.clinicalNotes as varchar(max)),char(10),''),char(13),''),'"','') as clinicalNotes
,convert(varchar, cast(a.ReceivedDate as datetime), 20) as ReceivedDate
,replace(replace(replace(cast(a.refEncId as varchar(max)),char(10),''),char(13),''),'"','') as refEncId
,replace(replace(replace(cast(a.ApptTime as varchar(max)),char(10),''),char(13),''),'"','') as ApptTime
,replace(replace(replace(cast(a.extNHXApptBlockId as varchar(max)),char(10),''),char(13),''),'"','') as extNHXApptBlockId
,replace(replace(replace(cast(a.extNHXRefTxId as varchar(max)),char(10),''),char(13),''),'"','') as extNHXRefTxId
,replace(replace(replace(cast(a.refReqId as varchar(max)),char(10),''),char(13),''),'"','') as refReqId
,replace(replace(replace(cast(a.refFromP2pNPI as varchar(max)),char(10),''),char(13),''),'"','') as refFromP2pNPI
,replace(replace(replace(cast(a.refFromName as varchar(max)),char(10),''),char(13),''),'"','') as refFromName
,replace(replace(replace(cast(a.refToP2pNPI as varchar(max)),char(10),''),char(13),''),'"','') as refToP2pNPI
,replace(replace(replace(cast(a.refToName as varchar(max)),char(10),''),char(13),''),'"','') as refToName
,replace(replace(replace(cast(a.uploadedToPtDocs as varchar(max)),char(10),''),char(13),''),'"','') as uploadedToPtDocs
,convert(varchar, cast(a.modifiedDate as datetime), 20) as modifiedDate
,replace(replace(replace(cast(a.refToCCNameList as varchar(max)),char(10),''),char(13),''),'"','') as refToCCNameList
,replace(replace(replace(cast(a.refToCCNPIList as varchar(max)),char(10),''),char(13),''),'"','') as refToCCNPIList
,replace(replace(replace(cast(a.p2pDeliveryStatus as varchar(max)),char(10),''),char(13),''),'"','') as p2pDeliveryStatus
,convert(varchar, cast(a.statusUpdateDate as datetime), 20) as statusUpdateDate
,replace(replace(replace(cast(a.ccdaValidationStatus as varchar(max)),char(10),''),char(13),''),'"','') as ccdaValidationStatus
,replace(replace(replace(cast(a.fromDirectAddress as varchar(max)),char(10),''),char(13),''),'"','') as fromDirectAddress
,replace(replace(replace(cast(a.toDirectAddress as varchar(max)),char(10),''),char(13),''),'"','') as toDirectAddress
,replace(replace(replace(cast(a.toDirectAddress1 as varchar(max)),char(10),''),char(13),''),'"','') as toDirectAddress1


from referral a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
