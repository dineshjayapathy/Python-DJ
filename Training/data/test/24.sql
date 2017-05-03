
select
replace(replace(replace(cast(a.ReportId as varchar(max)),char(10),''),char(13),''),'"','') as ReportId
,replace(replace(replace(cast(a.NAME as varchar(max)),char(10),''),char(13),''),'"','') as NAME
,replace(replace(replace(cast(a.value as varchar(max)),char(10),''),char(13),''),'"','') as value
,replace(replace(replace(cast(a.units as varchar(max)),char(10),''),char(13),''),'"','') as units
,replace(replace(replace(cast(a.range as varchar(max)),char(10),''),char(13),''),'"','') as range
,replace(replace(replace(cast(a.flag as varchar(max)),char(10),''),char(13),''),'"','') as flag
,replace(replace(replace(cast(a.notes as varchar(max)),char(10),''),char(13),''),'"','') as notes
,replace(replace(replace(cast(a.resultStatus as varchar(max)),char(10),''),char(13),''),'"','') as resultStatus
,replace(replace(replace(cast(a.labId as varchar(max)),char(10),''),char(13),''),'"','') as labId
,replace(replace(replace(cast(a.hl7id as varchar(max)),char(10),''),char(13),''),'"','') as hl7id
,replace(replace(replace(cast(a.profileid as varchar(max)),char(10),''),char(13),''),'"','') as profileid
,replace(replace(replace(cast(a.serialno as varchar(max)),char(10),''),char(13),''),'"','') as serialno
,replace(replace(replace(cast(a.obrcode as varchar(max)),char(10),''),char(13),''),'"','') as obrcode
,replace(replace(replace(cast(a.corrreportno as varchar(max)),char(10),''),char(13),''),'"','') as corrreportno
,replace(replace(replace(cast(a.performingSiteId as varchar(max)),char(10),''),char(13),''),'"','') as performingSiteId
,replace(replace(replace(cast(a.prevvalue as varchar(max)),char(10),''),char(13),''),'"','') as prevvalue
,convert(varchar, cast(a.AttrResultDate as datetime), 20) as AttrResultDate
,convert(varchar, cast(a.AttrResultTime as datetime), 20) as AttrResultTime
,replace(replace(replace(cast(a.obsubid as varchar(max)),char(10),''),char(13),''),'"','') as obsubid


from hl7labdatadetail a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
