
select
replace(replace(replace(cast(a.encounterID as varchar(max)),char(10),''),char(13),''),'"','') as encounterID
,replace(replace(replace(cast(a.doctorID as varchar(max)),char(10),''),char(13),''),'"','') as doctorID
,replace(replace(replace(cast(a.patientID as varchar(max)),char(10),''),char(13),''),'"','') as patientID
,convert(varchar, cast(a.date as datetime), 20) as date
,replace(replace(replace(cast(a.time as varchar(max)),char(10),''),char(13),''),'"','') as time
,replace(replace(replace(cast(a.reason as varchar(max)),char(10),''),char(13),''),'"','') as reason
,replace(replace(replace(cast(a.visitType as varchar(max)),char(10),''),char(13),''),'"','') as visitType
,replace(replace(replace(cast(a.roomno as varchar(max)),char(10),''),char(13),''),'"','') as roomno
,replace(replace(replace(cast(a.status as varchar(max)),char(10),''),char(13),''),'"','') as status


from encounter a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
