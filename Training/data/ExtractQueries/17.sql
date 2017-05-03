
select
replace(replace(replace(cast(a.encounterID as varchar(max)),char(10),''),char(13),''),'"','') as encounterID
,replace(replace(replace(cast(a.itemID as varchar(max)),char(10),''),char(13),''),'"','') as itemID
,replace(replace(replace(cast(a.name as varchar(max)),char(10),''),char(13),''),'"','') as name
,replace(replace(replace(cast(a.status as varchar(max)),char(10),''),char(13),''),'"','') as status
,replace(replace(replace(cast(a.age as varchar(max)),char(10),''),char(13),''),'"','') as age
,replace(replace(replace(cast(a.dob as varchar(max)),char(10),''),char(13),''),'"','') as dob


from familydata a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
