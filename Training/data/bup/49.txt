
select
replace(replace(replace(cast(a.Id as varchar(max)),char(10),''),char(13),''),'"','') as Id
,replace(replace(replace(cast(a.catId as varchar(max)),char(10),''),char(13),''),'"','') as catId
,replace(replace(replace(cast(a.itemId as varchar(max)),char(10),''),char(13),''),'"','') as itemId
,replace(replace(replace(cast(a.name as varchar(max)),char(10),''),char(13),''),'"','') as name
,replace(replace(replace(cast(a.type as varchar(max)),char(10),''),char(13),''),'"','') as type
,replace(replace(replace(cast(a.mandatory as varchar(max)),char(10),''),char(13),''),'"','') as mandatory
,replace(replace(replace(cast(a.displayIndex as varchar(max)),char(10),''),char(13),''),'"','') as displayIndex
,replace(replace(replace(cast(a.deleteFlag as varchar(max)),char(10),''),char(13),''),'"','') as deleteFlag
,replace(replace(replace(cast(a.parentId as varchar(max)),char(10),''),char(13),''),'"','') as parentId
,replace(replace(replace(cast(a.triggerflag as varchar(max)),char(10),''),char(13),''),'"','') as triggerflag
,replace(replace(replace(cast(a.itemType as varchar(max)),char(10),''),char(13),''),'"','') as itemType
,replace(replace(replace(cast(a.nodeLevel as varchar(max)),char(10),''),char(13),''),'"','') as nodeLevel
,replace(replace(replace(cast(a.tblName as varchar(max)),char(10),''),char(13),''),'"','') as tblName
,replace(replace(replace(cast(a.chartDisplay as varchar(max)),char(10),''),char(13),''),'"','') as chartDisplay
,replace(replace(replace(cast(a.multiSelect as varchar(max)),char(10),''),char(13),''),'"','') as multiSelect
,replace(replace(replace(cast(a.IsSearchable as varchar(max)),char(10),''),char(13),''),'"','') as IsSearchable
,replace(replace(replace(cast(a.defaultValue as varchar(max)),char(10),''),char(13),''),'"','') as defaultValue
,replace(replace(replace(cast(a.defaultValueId as varchar(max)),char(10),''),char(13),''),'"','') as defaultValueId
,replace(replace(replace(cast(a.modifynotes as varchar(max)),char(10),''),char(13),''),'"','') as modifynotes
,replace(replace(replace(cast(a.readonly as varchar(max)),char(10),''),char(13),''),'"','') as readonly
,replace(replace(replace(cast(a.dropdown as varchar(max)),char(10),''),char(13),''),'"','') as dropdown


from structdatadetail a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
