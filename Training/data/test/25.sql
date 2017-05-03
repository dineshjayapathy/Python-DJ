
select
replace(replace(replace(cast(a.itemID as varchar(max)),char(10),''),char(13),''),'"','') as itemID
,replace(replace(replace(cast(a.itemName as varchar(max)),char(10),''),char(13),''),'"','') as itemName
,replace(replace(replace(cast(a.itemDesc as varchar(max)),char(10),''),char(13),''),'"','') as itemDesc
,replace(replace(replace(cast(a.parentID as varchar(max)),char(10),''),char(13),''),'"','') as parentID
,replace(replace(replace(cast(a.xmlPath as varchar(max)),char(10),''),char(13),''),'"','') as xmlPath
,replace(replace(replace(cast(a.xslPath as varchar(max)),char(10),''),char(13),''),'"','') as xslPath
,replace(replace(replace(cast(a.itemType as varchar(max)),char(10),''),char(13),''),'"','') as itemType
,replace(replace(replace(cast(a.supplierId as varchar(max)),char(10),''),char(13),''),'"','') as supplierId
,replace(replace(replace(cast(a.price as varchar(max)),char(10),''),char(13),''),'"','') as price
,replace(replace(replace(cast(a.discount as varchar(max)),char(10),''),char(13),''),'"','') as discount
,replace(replace(replace(cast(a.specialPrice as varchar(max)),char(10),''),char(13),''),'"','') as specialPrice
,convert(varchar, cast(a.startDate as datetime), 20) as startDate
,convert(varchar, cast(a.endDate as datetime), 20) as endDate
,convert(varchar, cast(a.createdDate as datetime), 20) as createdDate
,convert(varchar, cast(a.modifiedDate as datetime), 20) as modifiedDate
,replace(replace(replace(cast(a.viewType as varchar(max)),char(10),''),char(13),''),'"','') as viewType
,replace(replace(replace(cast(a.displayIndex as varchar(max)),char(10),''),char(13),''),'"','') as displayIndex
,replace(replace(replace(cast(a.deleteFlag as varchar(max)),char(10),''),char(13),''),'"','') as deleteFlag
,replace(replace(replace(cast(a.vmid as varchar(max)),char(10),''),char(13),''),'"','') as vmid
,replace(replace(replace(cast(a.keyName as varchar(max)),char(10),''),char(13),''),'"','') as keyName
,replace(replace(replace(cast(a.gender as varchar(max)),char(10),''),char(13),''),'"','') as gender
,replace(replace(replace(cast(a.overdue as varchar(max)),char(10),''),char(13),''),'"','') as overdue
,replace(replace(replace(cast(a.inactive as varchar(max)),char(10),''),char(13),''),'"','') as inactive
,replace(replace(replace(cast(a.DrugNameId as varchar(max)),char(10),''),char(13),''),'"','') as DrugNameId
,replace(replace(replace(cast(a.showPathologyDetail as varchar(max)),char(10),''),char(13),''),'"','') as showPathologyDetail
,replace(replace(replace(cast(a.vmsgexclude as varchar(max)),char(10),''),char(13),''),'"','') as vmsgexclude


from items a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
