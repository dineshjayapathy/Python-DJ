
select
replace(replace(replace(cast(a.ID as varchar(max)),char(10),''),char(13),''),'"','') as ID
,replace(replace(replace(cast(a.name as varchar(max)),char(10),''),char(13),''),'"','') as name
,replace(replace(replace(cast(a.deleteFlag as varchar(max)),char(10),''),char(13),''),'"','') as deleteFlag
,replace(replace(replace(cast(a.LabId as varchar(max)),char(10),''),char(13),''),'"','') as LabId
,replace(replace(replace(cast(a.labaddress as varchar(max)),char(10),''),char(13),''),'"','') as labaddress
,replace(replace(replace(cast(a.labaddress2 as varchar(max)),char(10),''),char(13),''),'"','') as labaddress2
,replace(replace(replace(cast(a.labcity as varchar(max)),char(10),''),char(13),''),'"','') as labcity
,replace(replace(replace(cast(a.labstate as varchar(max)),char(10),''),char(13),''),'"','') as labstate
,replace(replace(replace(cast(a.labzip as varchar(max)),char(10),''),char(13),''),'"','') as labzip
,replace(replace(replace(cast(a.labphone as varchar(max)),char(10),''),char(13),''),'"','') as labphone
,replace(replace(replace(cast(a.labfax as varchar(max)),char(10),''),char(13),''),'"','') as labfax
,replace(replace(replace(cast(a.labemail as varchar(max)),char(10),''),char(13),''),'"','') as labemail
,replace(replace(replace(cast(a.interfaceConfigured as varchar(max)),char(10),''),char(13),''),'"','') as interfaceConfigured
,replace(replace(replace(cast(a.sendoutboundresult as varchar(max)),char(10),''),char(13),''),'"','') as sendoutboundresult
,replace(replace(replace(cast(a.labcompanyType as varchar(max)),char(10),''),char(13),''),'"','') as labcompanyType
,replace(replace(replace(cast(a.inHouseLab as varchar(max)),char(10),''),char(13),''),'"','') as inHouseLab
,replace(replace(replace(cast(a.ResultLabId as varchar(max)),char(10),''),char(13),''),'"','') as ResultLabId
,replace(replace(replace(cast(a.labCode as varchar(max)),char(10),''),char(13),''),'"','') as labCode
,replace(replace(replace(cast(a.superhubInterfaceID as varchar(max)),char(10),''),char(13),''),'"','') as superhubInterfaceID


from lablist a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
