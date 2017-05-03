
select
replace(replace(replace(cast(a.Id as varchar(max)),char(10),''),char(13),''),'"','') as Id
,replace(replace(replace(cast(a.PtId as varchar(max)),char(10),''),char(13),''),'"','') as PtId
,replace(replace(replace(cast(a.Code as varchar(max)),char(10),''),char(13),''),'"','') as Code
,replace(replace(replace(cast(a.Name as varchar(max)),char(10),''),char(13),''),'"','') as Name
,replace(replace(replace(cast(a.MDate as varchar(max)),char(10),''),char(13),''),'"','') as MDate
,replace(replace(replace(cast(a.delflag as varchar(max)),char(10),''),char(13),''),'"','') as delflag
,replace(replace(replace(cast(a.displayindex as varchar(max)),char(10),''),char(13),''),'"','') as displayindex


from pt_adv_directives a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
