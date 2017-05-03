
select
replace(replace(replace(cast(a.encounterId as varchar(max)),char(10),''),char(13),''),'"','') as encounterId
,replace(replace(replace(cast(a.catID as varchar(max)),char(10),''),char(13),''),'"','') as catID
,replace(replace(replace(cast(a.itemID as varchar(max)),char(10),''),char(13),''),'"','') as itemID
,replace(replace(replace(cast(a.propID as varchar(max)),char(10),''),char(13),''),'"','') as propID
,replace(replace(replace(cast(a.value as varchar(max)),char(10),''),char(13),''),'"','') as value
,replace(replace(replace(cast(a.displayIndex as varchar(max)),char(10),''),char(13),''),'"','') as displayIndex
,replace(replace(replace(cast(a.VALUE2 as varchar(max)),char(10),''),char(13),''),'"','') as VALUE2


from procedurespl a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
