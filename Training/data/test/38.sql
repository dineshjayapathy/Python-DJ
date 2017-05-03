
select
replace(replace(replace(cast(a.OldRxId as varchar(max)),char(10),''),char(13),''),'"','') as OldRxId
,replace(replace(replace(cast(a.ItemId as varchar(max)),char(10),''),char(13),''),'"','') as ItemId
,replace(replace(replace(cast(a.MedicineName as varchar(max)),char(10),''),char(13),''),'"','') as MedicineName
,replace(replace(replace(cast(a.encounterId as varchar(max)),char(10),''),char(13),''),'"','') as encounterId
,replace(replace(replace(cast(a.PatientsFlag as varchar(max)),char(10),''),char(13),''),'"','') as PatientsFlag
,replace(replace(replace(cast(a.DoctorsFlag as varchar(max)),char(10),''),char(13),''),'"','') as DoctorsFlag
,replace(replace(replace(cast(a.Refill as varchar(max)),char(10),''),char(13),''),'"','') as Refill
,replace(replace(replace(cast(a.AssessId as varchar(max)),char(10),''),char(13),''),'"','') as AssessId
,replace(replace(replace(cast(a.ndc_code as varchar(max)),char(10),''),char(13),''),'"','') as ndc_code
,replace(replace(replace(cast(a.FollowUpId as varchar(max)),char(10),''),char(13),''),'"','') as FollowUpId
,convert(varchar, cast(a.StartDate as datetime), 20) as StartDate
,replace(replace(replace(cast(a.PreparedBy as varchar(max)),char(10),''),char(13),''),'"','') as PreparedBy
,replace(replace(replace(cast(a.DaysLeftAdjustNumber as varchar(max)),char(10),''),char(13),''),'"','') as DaysLeftAdjustNumber
,replace(replace(replace(cast(a.awp as varchar(max)),char(10),''),char(13),''),'"','') as awp
,replace(replace(replace(cast(a.awup as varchar(max)),char(10),''),char(13),''),'"','') as awup
,replace(replace(replace(cast(a.RightPane_DLAN as varchar(max)),char(10),''),char(13),''),'"','') as RightPane_DLAN
,convert(varchar, cast(a.StopDate as datetime), 20) as StopDate
,replace(replace(replace(cast(a.rxNotes as varchar(max)),char(10),''),char(13),''),'"','') as rxNotes
,replace(replace(replace(cast(a.rxSource as varchar(max)),char(10),''),char(13),''),'"','') as rxSource
,replace(replace(replace(cast(a.rxSourceId as varchar(max)),char(10),''),char(13),''),'"','') as rxSourceId
,replace(replace(replace(cast(a.rxkop as varchar(max)),char(10),''),char(13),''),'"','') as rxkop
,replace(replace(replace(cast(a.rxDrugSource as varchar(max)),char(10),''),char(13),''),'"','') as rxDrugSource
,replace(replace(replace(cast(a.RxOrderNo as varchar(max)),char(10),''),char(13),''),'"','') as RxOrderNo
,replace(replace(replace(cast(a.PreparedById as varchar(max)),char(10),''),char(13),''),'"','') as PreparedById


from oldrxmain a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
