
select
replace(replace(replace(cast(a.labCode as varchar(max)),char(10),''),char(13),''),'"','') as labCode
,replace(replace(replace(cast(a.cptCode as varchar(max)),char(10),''),char(13),''),'"','') as cptCode
,replace(replace(replace(cast(a.Id as varchar(max)),char(10),''),char(13),''),'"','') as Id
,replace(replace(replace(cast(a.CptItemId as varchar(max)),char(10),''),char(13),''),'"','') as CptItemId


from labcptmap a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
