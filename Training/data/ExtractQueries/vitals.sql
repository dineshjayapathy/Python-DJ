
select
replace(replace(replace(cast(a.encounterID as varchar(max)),char(10),''),char(13),''),'"','') as encounterID
,replace(replace(replace(cast(a.vitalID as varchar(max)),char(10),''),char(13),''),'"','') as vitalID
,replace(replace(replace(cast(a.propID as varchar(max)),char(10),''),char(13),''),'"','') as propID
,replace(replace(replace(cast(a.value as varchar(max)),char(10),''),char(13),''),'"','') as value
,replace(replace(replace(cast(a.Id as varchar(max)),char(10),''),char(13),''),'"','') as Id
,replace(replace(replace(cast(a.UpdatedBy as varchar(max)),char(10),''),char(13),''),'"','') as UpdatedBy
,convert(varchar, cast(a.UpdatedTime as datetime), 20) as UpdatedTime
,replace(replace(replace(cast(a.defaultValue as varchar(max)),char(10),''),char(13),''),'"','') as defaultValue
,replace(replace(replace(cast(a.valueHtm as varchar(max)),char(10),''),char(13),''),'"','') as valueHtm
,replace(replace(replace(cast(a.value2 as varchar(max)),char(10),''),char(13),''),'"','') as value2


from vitals a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
