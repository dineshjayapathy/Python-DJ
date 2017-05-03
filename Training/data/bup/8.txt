
select
replace(replace(replace(cast(a.Id as varchar(max)),char(10),''),char(13),''),'"','') as Id
,replace(replace(replace(cast(a.Speciality as varchar(max)),char(10),''),char(13),''),'"','') as Speciality
,replace(replace(replace(cast(a.Code as varchar(max)),char(10),''),char(13),''),'"','') as Code
,replace(replace(replace(cast(a.deleteFlag as varchar(max)),char(10),''),char(13),''),'"','') as deleteFlag


from edi_speciality a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
