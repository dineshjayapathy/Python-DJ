
select
replace(replace(replace(cast(a.id as varchar(max)),char(10),''),char(13),''),'"','') as id
,replace(replace(replace(cast(a.encId as varchar(max)),char(10),''),char(13),''),'"','') as encId
,replace(replace(replace(cast(a.uid as varchar(max)),char(10),''),char(13),''),'"','') as uid
,convert(varchar, cast(a.requestDate as datetime), 20) as requestDate
,replace(replace(replace(cast(a.requestedBy as varchar(max)),char(10),''),char(13),''),'"','') as requestedBy
,replace(replace(replace(cast(a.vsdata as varchar(max)),char(10),''),char(13),''),'"','') as vsdata
,replace(replace(replace(cast(a.status as varchar(max)),char(10),''),char(13),''),'"','') as status
,replace(replace(replace(cast(a.loggedfrom as varchar(max)),char(10),''),char(13),''),'"','') as loggedfrom
,replace(replace(replace(cast(a.ccddata as varchar(max)),char(10),''),char(13),''),'"','') as ccddata


from visitsummarylog a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
