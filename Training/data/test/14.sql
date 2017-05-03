
select
replace(replace(replace(cast(a.encounterID as varchar(max)),char(10),''),char(13),''),'"','') as encounterID
,replace(replace(replace(cast(a.patientID as varchar(max)),char(10),''),char(13),''),'"','') as patientID
,replace(replace(replace(cast(a.doctorID as varchar(max)),char(10),''),char(13),''),'"','') as doctorID
,convert(varchar, cast(a.date as datetime), 20) as date
,replace(replace(replace(cast(a.time as varchar(max)),char(10),''),char(13),''),'"','') as time
,convert(varchar, cast(a.startTime as datetime), 20) as startTime
,convert(varchar, cast(a.endTime as datetime), 20) as endTime
,replace(replace(replace(cast(a.reason as varchar(max)),char(10),''),char(13),''),'"','') as reason
,replace(replace(replace(cast(a.VisitType as varchar(max)),char(10),''),char(13),''),'"','') as VisitType
,replace(replace(replace(cast(a.roomNo as varchar(max)),char(10),''),char(13),''),'"','') as roomNo
,replace(replace(replace(cast(a.STATUS as varchar(max)),char(10),''),char(13),''),'"','') as STATUS
,replace(replace(replace(cast(a.deleteFlag as varchar(max)),char(10),''),char(13),''),'"','') as deleteFlag
,replace(replace(replace(cast(a.encType as varchar(max)),char(10),''),char(13),''),'"','') as encType
,replace(replace(replace(cast(a.encLock as varchar(max)),char(10),''),char(13),''),'"','') as encLock
,replace(replace(replace(cast(a.Notes as varchar(max)),char(10),''),char(13),''),'"','') as Notes
,replace(replace(replace(cast(a.generalNotes as varchar(max)),char(10),''),char(13),''),'"','') as generalNotes
,replace(replace(replace(cast(a.vmid as varchar(max)),char(10),''),char(13),''),'"','') as vmid
,replace(replace(replace(cast(a.facilityId as varchar(max)),char(10),''),char(13),''),'"','') as facilityId
,replace(replace(replace(cast(a.POS as varchar(max)),char(10),''),char(13),''),'"','') as POS
,convert(varchar, cast(a.arrivedTime as datetime), 20) as arrivedTime
,convert(varchar, cast(a.timeIn as datetime), 20) as timeIn
,convert(varchar, cast(a.timeOut as datetime), 20) as timeOut
,replace(replace(replace(cast(a.stsAfterArr as varchar(max)),char(10),''),char(13),''),'"','') as stsAfterArr
,convert(varchar, cast(a.depTime as datetime), 20) as depTime
,replace(replace(replace(cast(a.stsAfterChkIn as varchar(max)),char(10),''),char(13),''),'"','') as stsAfterChkIn
,replace(replace(replace(cast(a.HL7Id as varchar(max)),char(10),''),char(13),''),'"','') as HL7Id
,replace(replace(replace(cast(a.newPt as varchar(max)),char(10),''),char(13),''),'"','') as newPt
,replace(replace(replace(cast(a.Dx as varchar(max)),char(10),''),char(13),''),'"','') as Dx
,replace(replace(replace(cast(a.reminded as varchar(max)),char(10),''),char(13),''),'"','') as reminded
,convert(varchar, cast(a.remindedDate as datetime), 20) as remindedDate
,replace(replace(replace(cast(a.VisitCopay as varchar(max)),char(10),''),char(13),''),'"','') as VisitCopay
,replace(replace(replace(cast(a.CopayChanged as varchar(max)),char(10),''),char(13),''),'"','') as CopayChanged
,replace(replace(replace(cast(a.ClaimRequired as varchar(max)),char(10),''),char(13),''),'"','') as ClaimRequired
,replace(replace(replace(cast(a.ClaimReq as varchar(max)),char(10),''),char(13),''),'"','') as ClaimReq
,replace(replace(replace(cast(a.VisitTypeOverriden as varchar(max)),char(10),''),char(13),''),'"','') as VisitTypeOverriden
,replace(replace(replace(cast(a.refPrName as varchar(max)),char(10),''),char(13),''),'"','') as refPrName
,replace(replace(replace(cast(a.refPrId as varchar(max)),char(10),''),char(13),''),'"','') as refPrId
,replace(replace(replace(cast(a.PSACGroup as varchar(max)),char(10),''),char(13),''),'"','') as PSACGroup
,replace(replace(replace(cast(a.deptid as varchar(max)),char(10),''),char(13),''),'"','') as deptid
,replace(replace(replace(cast(a.ResourceId as varchar(max)),char(10),''),char(13),''),'"','') as ResourceId
,replace(replace(replace(cast(a.EncEligibilityStatus as varchar(max)),char(10),''),char(13),''),'"','') as EncEligibilityStatus
,replace(replace(replace(cast(a.EligibilityMessage as varchar(max)),char(10),''),char(13),''),'"','') as EligibilityMessage
,replace(replace(replace(cast(a.InvoiceId as varchar(max)),char(10),''),char(13),''),'"','') as InvoiceId
,replace(replace(replace(cast(a.EligSubId as varchar(max)),char(10),''),char(13),''),'"','') as EligSubId
,replace(replace(replace(cast(a.EncEligibilityStatus2 as varchar(max)),char(10),''),char(13),''),'"','') as EncEligibilityStatus2
,replace(replace(replace(cast(a.EligibilityMessage2 as varchar(max)),char(10),''),char(13),''),'"','') as EligibilityMessage2
,replace(replace(replace(cast(a.EncEligibilityStatus3 as varchar(max)),char(10),''),char(13),''),'"','') as EncEligibilityStatus3
,replace(replace(replace(cast(a.EligibilityMessage3 as varchar(max)),char(10),''),char(13),''),'"','') as EligibilityMessage3
,replace(replace(replace(cast(a.trans_dictation as varchar(max)),char(10),''),char(13),''),'"','') as trans_dictation
,convert(varchar, cast(a.waitTime as datetime), 20) as waitTime
,replace(replace(replace(cast(a.websync as varchar(max)),char(10),''),char(13),''),'"','') as websync
,convert(varchar, cast(a.dateIn as datetime), 20) as dateIn
,convert(varchar, cast(a.dateOut as datetime), 20) as dateOut
,convert(varchar, cast(a.notesDoneTime as datetime), 20) as notesDoneTime
,replace(replace(replace(cast(a.notesLoginId as varchar(max)),char(10),''),char(13),''),'"','') as notesLoginId
,replace(replace(replace(cast(a.notesLogOutId as varchar(max)),char(10),''),char(13),''),'"','') as notesLogOutId
,replace(replace(replace(cast(a.visittypeid as varchar(max)),char(10),''),char(13),''),'"','') as visittypeid
,convert(varchar, cast(a.UTCStartTime as datetime), 20) as UTCStartTime
,convert(varchar, cast(a.UTCEndTime as datetime), 20) as UTCEndTime
,replace(replace(replace(cast(a.visitstscodeid as varchar(max)),char(10),''),char(13),''),'"','') as visitstscodeid
,replace(replace(replace(cast(a.practiceId as varchar(max)),char(10),''),char(13),''),'"','') as practiceId
,replace(replace(replace(cast(a.immnotessendstatus as varchar(max)),char(10),''),char(13),''),'"','') as immnotessendstatus
,replace(replace(replace(cast(a.transitionofcare as varchar(max)),char(10),''),char(13),''),'"','') as transitionofcare
,replace(replace(replace(cast(a.prNotesSendStatus as varchar(max)),char(10),''),char(13),''),'"','') as prNotesSendStatus
,replace(replace(replace(cast(a.readytobill as varchar(max)),char(10),''),char(13),''),'"','') as readytobill
,replace(replace(replace(cast(a.reviewbeforebill as varchar(max)),char(10),''),char(13),''),'"','') as reviewbeforebill
,replace(replace(replace(cast(a.EncEligibilityStatus4 as varchar(max)),char(10),''),char(13),''),'"','') as EncEligibilityStatus4
,replace(replace(replace(cast(a.EligibilityMessage4 as varchar(max)),char(10),''),char(13),''),'"','') as EligibilityMessage4


from enc a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
