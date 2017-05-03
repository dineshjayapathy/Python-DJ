
select
replace(replace(replace(cast(a.id as varchar(max)),char(10),''),char(13),''),'"','') as id
,replace(replace(replace(cast(a.patientid as varchar(max)),char(10),''),char(13),''),'"','') as patientid
,replace(replace(replace(cast(a.truserid as varchar(max)),char(10),''),char(13),''),'"','') as truserid
,convert(varchar, cast(a.modified_date as datetime), 20) as modified_date
,convert(varchar, cast(a.modified_time as datetime), 20) as modified_time
,convert(varchar, cast(a.timestamp as datetime), 20) as timestamp
,replace(replace(replace(cast(a.status as varchar(max)),char(10),''),char(13),''),'"','') as status
,replace(replace(replace(cast(a.truser_name as varchar(max)),char(10),''),char(13),''),'"','') as truser_name
,replace(replace(replace(cast(a.action as varchar(max)),char(10),''),char(13),''),'"','') as action
,replace(replace(replace(cast(a.dataelementid as varchar(max)),char(10),''),char(13),''),'"','') as dataelementid
,replace(replace(replace(cast(a.logptspecificid as varchar(max)),char(10),''),char(13),''),'"','') as logptspecificid
,replace(replace(replace(cast(a.itemid as varchar(max)),char(10),''),char(13),''),'"','') as itemid
,replace(replace(replace(cast(a.encounterid as varchar(max)),char(10),''),char(13),''),'"','') as encounterid
,replace(replace(replace(cast(a.data as varchar(max)),char(10),''),char(13),''),'"','') as data


from logptspecificdata a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
