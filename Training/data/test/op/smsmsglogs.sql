
select
replace(replace(replace(cast(a.encounterId as varchar(max)),char(10),''),char(13),''),'"','') as encounterId
,replace(replace(replace(cast(a.catId as varchar(max)),char(10),''),char(13),''),'"','') as catId
,replace(replace(replace(cast(a.itemId as varchar(max)),char(10),''),char(13),''),'"','') as itemId
,replace(replace(replace(cast(a.detailId as varchar(max)),char(10),''),char(13),''),'"','') as detailId
,replace(replace(replace(cast(a.value as varchar(max)),char(10),''),char(13),''),'"','') as value
,replace(replace(replace(cast(a.valueId as varchar(max)),char(10),''),char(13),''),'"','') as valueId
,replace(replace(replace(cast(a.notes as varchar(max)),char(10),''),char(13),''),'"','') as notes
,replace(replace(replace(cast(a.chartdisplay as varchar(max)),char(10),''),char(13),''),'"','') as chartdisplay
,replace(replace(replace(cast(a.displayIndex as varchar(max)),char(10),''),char(13),''),'"','') as displayIndex


from structsocialhistory a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
