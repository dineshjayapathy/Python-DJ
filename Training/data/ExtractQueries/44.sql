
select
replace(replace(replace(cast(a.encounterID as varchar(max)),char(10),''),char(13),''),'"','') as encounterID
,replace(replace(replace(cast(a.summary as varchar(max)),char(10),''),char(13),''),'"','') as summary
,replace(replace(replace(cast(a.xslId as varchar(max)),char(10),''),char(13),''),'"','') as xslId
,replace(replace(replace(cast(a.unlocked as varchar(max)),char(10),''),char(13),''),'"','') as unlocked
,convert(varchar, cast(a.ModifyDate as datetime), 20) as ModifyDate


from progressnotes a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
