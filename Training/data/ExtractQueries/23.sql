
select
replace(replace(replace(cast(a.ReportId as varchar(max)),char(10),''),char(13),''),'"','') as ReportId
,replace(replace(replace(cast(a.PropId as varchar(max)),char(10),''),char(13),''),'"','') as PropId
,replace(replace(replace(cast(a.Value as varchar(max)),char(10),''),char(13),''),'"','') as Value
,replace(replace(replace(cast(a.importFlag as varchar(max)),char(10),''),char(13),''),'"','') as importFlag
,replace(replace(replace(cast(a.Id as varchar(max)),char(10),''),char(13),''),'"','') as Id
,replace(replace(replace(cast(a.UpdatedBy as varchar(max)),char(10),''),char(13),''),'"','') as UpdatedBy
,convert(varchar, cast(a.UpdatedTime as datetime), 20) as UpdatedTime
,replace(replace(replace(cast(a.TestID as varchar(max)),char(10),''),char(13),''),'"','') as TestID


from labdatadetail a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
