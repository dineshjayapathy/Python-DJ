
select
replace(replace(replace(cast(a.Name as varchar(max)),char(10),''),char(13),''),'"','') as Name
,replace(replace(replace(cast(a.Favorite as varchar(max)),char(10),''),char(13),''),'"','') as Favorite
,replace(replace(replace(cast(a.Code as varchar(max)),char(10),''),char(13),''),'"','') as Code
,replace(replace(replace(cast(a.LangID as varchar(max)),char(10),''),char(13),''),'"','') as LangID
,replace(replace(replace(cast(a.isocode1 as varchar(max)),char(10),''),char(13),''),'"','') as isocode1
,replace(replace(replace(cast(a.isocode2 as varchar(max)),char(10),''),char(13),''),'"','') as isocode2
,replace(replace(replace(cast(a.isoname as varchar(max)),char(10),''),char(13),''),'"','') as isoname


from language_codes a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
