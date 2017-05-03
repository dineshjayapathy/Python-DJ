
select
replace(replace(replace(cast(a.Id as varchar(max)),char(10),''),char(13),''),'"','') as Id
,replace(replace(replace(cast(a.patientId as varchar(max)),char(10),''),char(13),''),'"','') as patientId
,replace(replace(replace(cast(a.letterId as varchar(max)),char(10),''),char(13),''),'"','') as letterId
,replace(replace(replace(cast(a.letterName as varchar(max)),char(10),''),char(13),''),'"','') as letterName
,replace(replace(replace(cast(a.printedBy as varchar(max)),char(10),''),char(13),''),'"','') as printedBy
,convert(varchar, cast(a.date as datetime), 20) as date
,convert(varchar, cast(a.time as datetime), 20) as time
,replace(replace(replace(cast(a.categoryID as varchar(max)),char(10),''),char(13),''),'"','') as categoryID


from letterlogs a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
