
select
replace(replace(replace(cast(a.LogID as varchar(max)),char(10),''),char(13),''),'"','') as LogID
,replace(replace(replace(cast(a.LoginID as varchar(max)),char(10),''),char(13),''),'"','') as LoginID
,replace(replace(replace(cast(a.DoctorID as varchar(max)),char(10),''),char(13),''),'"','') as DoctorID
,replace(replace(replace(cast(a.PatientID as varchar(max)),char(10),''),char(13),''),'"','') as PatientID
,replace(replace(replace(cast(a.EncounterID as varchar(max)),char(10),''),char(13),''),'"','') as EncounterID
,replace(replace(replace(cast(a.PrintData as varchar(max)),char(10),''),char(13),''),'"','') as PrintData
,convert(varchar, cast(a.PrintDate as datetime), 20) as PrintDate
,replace(replace(replace(cast(a.PrintType as varchar(max)),char(10),''),char(13),''),'"','') as PrintType
,replace(replace(replace(cast(a.PrintTransaction as varchar(max)),char(10),''),char(13),''),'"','') as PrintTransaction
,replace(replace(replace(cast(a.RxList as varchar(max)),char(10),''),char(13),''),'"','') as RxList
,replace(replace(replace(cast(a.PrintLogStatus as varchar(max)),char(10),''),char(13),''),'"','') as PrintLogStatus
,replace(replace(replace(cast(a.PrintLogBatch as varchar(max)),char(10),''),char(13),''),'"','') as PrintLogBatch


from printlogs a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
