
select
replace(replace(replace(cast(a.propID as varchar(max)),char(10),''),char(13),''),'"','') as propID
,replace(replace(replace(cast(a.name as varchar(max)),char(10),''),char(13),''),'"','') as name
,replace(replace(replace(cast(a.description as varchar(max)),char(10),''),char(13),''),'"','') as description
,replace(replace(replace(cast(a.type as varchar(max)),char(10),''),char(13),''),'"','') as type
,replace(replace(replace(cast(a.viewtype as varchar(max)),char(10),''),char(13),''),'"','') as viewtype
,replace(replace(replace(cast(a.size as varchar(max)),char(10),''),char(13),''),'"','') as size
,replace(replace(replace(cast(a.displayName as varchar(max)),char(10),''),char(13),''),'"','') as displayName
,replace(replace(replace(cast(a.pdetailID as varchar(max)),char(10),''),char(13),''),'"','') as pdetailID
,replace(replace(replace(cast(a.displayIndex as varchar(max)),char(10),''),char(13),''),'"','') as displayIndex
,replace(replace(replace(cast(a.delPropFlag as varchar(max)),char(10),''),char(13),''),'"','') as delPropFlag
,replace(replace(replace(cast(a.vmid as varchar(max)),char(10),''),char(13),''),'"','') as vmid


from properties a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
