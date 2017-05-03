
select
replace(replace(replace(cast(a.encounterId as varchar(max)),char(10),''),char(13),''),'"','') as encounterId
,replace(replace(replace(cast(a.itemId as varchar(max)),char(10),''),char(13),''),'"','') as itemId
,replace(replace(replace(cast(a.icdItemid as varchar(max)),char(10),''),char(13),''),'"','') as icdItemid
,replace(replace(replace(cast(a.icdCode as varchar(max)),char(10),''),char(13),''),'"','') as icdCode
,replace(replace(replace(cast(a.icdDesc as varchar(max)),char(10),''),char(13),''),'"','') as icdDesc
,replace(replace(replace(cast(a.snomedCode as varchar(max)),char(10),''),char(13),''),'"','') as snomedCode
,replace(replace(replace(cast(a.diagnosedYear as varchar(max)),char(10),''),char(13),''),'"','') as diagnosedYear
,replace(replace(replace(cast(a.diagnosedAge as varchar(max)),char(10),''),char(13),''),'"','') as diagnosedAge
,replace(replace(replace(cast(a.name as varchar(max)),char(10),''),char(13),''),'"','') as name


from familyhxdetails a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
