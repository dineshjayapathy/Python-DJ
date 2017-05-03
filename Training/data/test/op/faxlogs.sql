
select
replace(replace(replace(cast(a.Id as varchar(max)),char(10),''),char(13),''),'"','') as Id
,replace(replace(replace(cast(a.ImmStatusId as varchar(max)),char(10),''),char(13),''),'"','') as ImmStatusId
,replace(replace(replace(cast(a.CODE as varchar(max)),char(10),''),char(13),''),'"','') as CODE
,replace(replace(replace(cast(a.Description as varchar(max)),char(10),''),char(13),''),'"','') as Description
,replace(replace(replace(cast(a.TYPE as varchar(max)),char(10),''),char(13),''),'"','') as TYPE


from immunizationstatus a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
