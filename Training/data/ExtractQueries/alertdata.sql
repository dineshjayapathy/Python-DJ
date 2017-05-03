scriptline
select
replace(replace(replace(cast(a.Id as varchar(max)),char(10),''),char(13),''),'"','') as Id
,replace(replace(replace(cast(a.PatientId as varchar(max)),char(10),''),char(13),''),'"','') as PatientId
,replace(replace(replace(cast(a.MeasureId as varchar(max)),char(10),''),char(13),''),'"','') as MeasureId
,replace(replace(replace(cast(a.MeasureName as varchar(max)),char(10),''),char(13),''),'"','') as MeasureName
,replace(replace(replace(cast(a.ItemId as varchar(max)),char(10),''),char(13),''),'"','') as ItemId
,replace(replace(replace(cast(a.Frequency as varchar(max)),char(10),''),char(13),''),'"','') as Frequency
,replace(replace(replace(cast(a.LastDone as varchar(max)),char(10),''),char(13),''),'"','') as LastDone
,replace(replace(replace(cast(a.DueDate as varchar(max)),char(10),''),char(13),''),'"','') as DueDate
,replace(replace(replace(cast(a.Value as varchar(max)),char(10),''),char(13),''),'"','') as Value
,replace(replace(replace(cast(a.controlstatus as varchar(max)),char(10),''),char(13),''),'"','') as controlstatus
,replace(replace(replace(cast(a.RegistryAlert as varchar(max)),char(10),''),char(13),''),'"','') as RegistryAlert
,replace(replace(replace(cast(a.labReceived as varchar(max)),char(10),''),char(13),''),'"','') as labReceived
,convert(varchar, cast(a.mdate as datetime), 20) as mdate


from alertdata a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
