
select
replace(replace(replace(cast(a.itemid as varchar(max)),char(10),''),char(13),''),'"','') as itemid
,replace(replace(replace(cast(a.code as varchar(max)),char(10),''),char(13),''),'"','') as code
,replace(replace(replace(cast(a.UpdatedBy as varchar(max)),char(10),''),char(13),''),'"','') as UpdatedBy
,convert(varchar, cast(a.UpdatedTime as datetime), 20) as UpdatedTime
,replace(replace(replace(cast(a.deleteflag as varchar(max)),char(10),''),char(13),''),'"','') as deleteflag


from labloinccodes a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
