
select
replace(replace(replace(cast(a.itemID as varchar(max)),char(10),''),char(13),''),'"','') as itemID
,replace(replace(replace(cast(a.propID as varchar(max)),char(10),''),char(13),''),'"','') as propID
,replace(replace(replace(cast(a.value as varchar(max)),char(10),''),char(13),''),'"','') as value


from itemdetail a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
