
select
replace(replace(replace(cast(a.Id as varchar(max)),char(10),''),char(13),''),'"','') as Id
,replace(replace(replace(cast(a.PatientId as varchar(max)),char(10),''),char(13),''),'"','') as PatientId
,replace(replace(replace(cast(a.MeasureId as varchar(max)),char(10),''),char(13),''),'"','') as MeasureId
,convert(varchar, cast(a.DueDate as datetime), 20) as DueDate
,replace(replace(replace(cast(a.NeverRemind as varchar(max)),char(10),''),char(13),''),'"','') as NeverRemind
,replace(replace(replace(cast(a.Reason as varchar(max)),char(10),''),char(13),''),'"','') as Reason
,replace(replace(replace(cast(a.status as varchar(max)),char(10),''),char(13),''),'"','') as status
,replace(replace(replace(cast(a.statusLabel as varchar(max)),char(10),''),char(13),''),'"','') as statusLabel
,replace(replace(replace(cast(a.reset as varchar(max)),char(10),''),char(13),''),'"','') as reset


from alertoverride a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
