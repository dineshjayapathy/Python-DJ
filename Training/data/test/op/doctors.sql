
select
replace(replace(replace(cast(a.Code as varchar(max)),char(10),''),char(13),''),'"','') as Code
,replace(replace(replace(cast(a.Name as varchar(max)),char(10),''),char(13),''),'"','') as Name


from edi_employmentstatus a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
