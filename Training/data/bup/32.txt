
select
replace(replace(replace(cast(a.ReportId as varchar(max)),char(10),''),char(13),''),'"','') as ReportId
,replace(replace(replace(cast(a.EncounterId as varchar(max)),char(10),''),char(13),''),'"','') as EncounterId
,replace(replace(replace(cast(a.ItemId as varchar(max)),char(10),''),char(13),''),'"','') as ItemId
,replace(replace(replace(cast(a.reason as varchar(max)),char(10),''),char(13),''),'"','') as reason
,replace(replace(replace(cast(a.received as varchar(max)),char(10),''),char(13),''),'"','') as received
,replace(replace(replace(cast(a.result as varchar(max)),char(10),''),char(13),''),'"','') as result
,convert(varchar, cast(a.ResultDate as datetime), 20) as ResultDate
,replace(replace(replace(cast(a.Notes as varchar(max)),char(10),''),char(13),''),'"','') as Notes
,replace(replace(replace(cast(a.status as varchar(max)),char(10),''),char(13),''),'"','') as status
,replace(replace(replace(cast(a.Addendum as varchar(max)),char(10),''),char(13),''),'"','') as Addendum
,replace(replace(replace(cast(a.priority as varchar(max)),char(10),''),char(13),''),'"','') as priority
,replace(replace(replace(cast(a.assignedToId as varchar(max)),char(10),''),char(13),''),'"','') as assignedToId
,replace(replace(replace(cast(a.deleteFlag as varchar(max)),char(10),''),char(13),''),'"','') as deleteFlag
,replace(replace(replace(cast(a.vmid as varchar(max)),char(10),''),char(13),''),'"','') as vmid
,replace(replace(replace(cast(a.Type as varchar(max)),char(10),''),char(13),''),'"','') as Type
,replace(replace(replace(cast(a.Billable as varchar(max)),char(10),''),char(13),''),'"','') as Billable
,replace(replace(replace(cast(a.displayIndex as varchar(max)),char(10),''),char(13),''),'"','') as displayIndex
,replace(replace(replace(cast(a.fromLabId as varchar(max)),char(10),''),char(13),''),'"','') as fromLabId
,convert(varchar, cast(a.collDate as datetime), 20) as collDate
,convert(varchar, cast(a.collTime as datetime), 20) as collTime
,replace(replace(replace(cast(a.tolabid as varchar(max)),char(10),''),char(13),''),'"','') as tolabid
,replace(replace(replace(cast(a.billClient as varchar(max)),char(10),''),char(13),''),'"','') as billClient
,replace(replace(replace(cast(a.collSource as varchar(max)),char(10),''),char(13),''),'"','') as collSource
,replace(replace(replace(cast(a.collVolume as varchar(max)),char(10),''),char(13),''),'"','') as collVolume
,replace(replace(replace(cast(a.collUnits as varchar(max)),char(10),''),char(13),''),'"','') as collUnits
,replace(replace(replace(cast(a.clinicalInfo as varchar(max)),char(10),''),char(13),''),'"','') as clinicalInfo
,replace(replace(replace(cast(a.fasting as varchar(max)),char(10),''),char(13),''),'"','') as fasting
,replace(replace(replace(cast(a.billType as varchar(max)),char(10),''),char(13),''),'"','') as billType
,replace(replace(replace(cast(a.PregId as varchar(max)),char(10),''),char(13),''),'"','') as PregId
,replace(replace(replace(cast(a.OBFLabType as varchar(max)),char(10),''),char(13),''),'"','') as OBFLabType
,replace(replace(replace(cast(a.publishToPortal as varchar(max)),char(10),''),char(13),''),'"','') as publishToPortal
,replace(replace(replace(cast(a.commonNotesFlag as varchar(max)),char(10),''),char(13),''),'"','') as commonNotesFlag
,replace(replace(replace(cast(a.futureflag as varchar(max)),char(10),''),char(13),''),'"','') as futureflag
,replace(replace(replace(cast(a.prevencounterid as varchar(max)),char(10),''),char(13),''),'"','') as prevencounterid
,replace(replace(replace(cast(a.ordencounterid as varchar(max)),char(10),''),char(13),''),'"','') as ordencounterid
,convert(varchar, cast(a.FutureOrderDate as datetime), 20) as FutureOrderDate
,replace(replace(replace(cast(a.ReviewedBy as varchar(max)),char(10),''),char(13),''),'"','') as ReviewedBy
,convert(varchar, cast(a.ReviewedDate as datetime), 20) as ReviewedDate
,convert(varchar, cast(a.ReviewedTime as datetime), 20) as ReviewedTime
,convert(varchar, cast(a.transDate as datetime), 20) as transDate
,convert(varchar, cast(a.transTime as datetime), 20) as transTime
,replace(replace(replace(cast(a.profileID as varchar(max)),char(10),''),char(13),''),'"','') as profileID
,replace(replace(replace(cast(a.IntNotes as varchar(max)),char(10),''),char(13),''),'"','') as IntNotes
,replace(replace(replace(cast(a.HMFlag as varchar(max)),char(10),''),char(13),''),'"','') as HMFlag
,replace(replace(replace(cast(a.ccResultToList as varchar(max)),char(10),''),char(13),''),'"','') as ccResultToList
,replace(replace(replace(cast(a.ccResultToListIds as varchar(max)),char(10),''),char(13),''),'"','') as ccResultToListIds
,replace(replace(replace(cast(a.HasACopy as varchar(max)),char(10),''),char(13),''),'"','') as HasACopy
,replace(replace(replace(cast(a.ResultStatus as varchar(max)),char(10),''),char(13),''),'"','') as ResultStatus
,replace(replace(replace(cast(a.collDescription as varchar(max)),char(10),''),char(13),''),'"','') as collDescription
,replace(replace(replace(cast(a.ordPhyName as varchar(max)),char(10),''),char(13),''),'"','') as ordPhyName
,replace(replace(replace(cast(a.ordPhyId as varchar(max)),char(10),''),char(13),''),'"','') as ordPhyId
,replace(replace(replace(cast(a.refPhyFlag as varchar(max)),char(10),''),char(13),''),'"','') as refPhyFlag
,replace(replace(replace(cast(a.labrefid as varchar(max)),char(10),''),char(13),''),'"','') as labrefid
,convert(varchar, cast(a.resultime as datetime), 20) as resultime
,replace(replace(replace(cast(a.PSEHold as varchar(max)),char(10),''),char(13),''),'"','') as PSEHold
,replace(replace(replace(cast(a.emailSent as varchar(max)),char(10),''),char(13),''),'"','') as emailSent
,convert(varchar, cast(a.dtEmailSent as datetime), 20) as dtEmailSent
,replace(replace(replace(cast(a.ActualFasting as varchar(max)),char(10),''),char(13),''),'"','') as ActualFasting
,replace(replace(replace(cast(a.OrderInstructions as varchar(max)),char(10),''),char(13),''),'"','') as OrderInstructions
,replace(replace(replace(cast(a.hl7id1 as varchar(max)),char(10),''),char(13),''),'"','') as hl7id1
,replace(replace(replace(cast(a.hl7id2 as varchar(max)),char(10),''),char(13),''),'"','') as hl7id2
,replace(replace(replace(cast(a.hl7id3 as varchar(max)),char(10),''),char(13),''),'"','') as hl7id3
,replace(replace(replace(cast(a.newcol as varchar(max)),char(10),''),char(13),''),'"','') as newcol
,replace(replace(replace(cast(a.cancelled as varchar(max)),char(10),''),char(13),''),'"','') as cancelled
,replace(replace(replace(cast(a.resultSentStatus as varchar(max)),char(10),''),char(13),''),'"','') as resultSentStatus
,replace(replace(replace(cast(a.performedby as varchar(max)),char(10),''),char(13),''),'"','') as performedby
,replace(replace(replace(cast(a.approvalstatus as varchar(max)),char(10),''),char(13),''),'"','') as approvalstatus
,replace(replace(replace(cast(a.SendVmsg as varchar(max)),char(10),''),char(13),''),'"','') as SendVmsg


from labdata a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
