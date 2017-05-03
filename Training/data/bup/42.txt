
select
replace(replace(replace(cast(a.Id as varchar(max)),char(10),''),char(13),''),'"','') as Id
,replace(replace(replace(cast(a.PatientId as varchar(max)),char(10),''),char(13),''),'"','') as PatientId
,replace(replace(replace(cast(a.NKPFlag as varchar(max)),char(10),''),char(13),''),'"','') as NKPFlag
,convert(varchar, cast(a.NKPDate as datetime), 20) as NKPDate
,replace(replace(replace(cast(a.deleteFlag as varchar(max)),char(10),''),char(13),''),'"','') as deleteFlag


from problemlist_ext a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
