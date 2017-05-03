
select
replace(replace(replace(cast(a.patientId as varchar(max)),char(10),''),char(13),''),'"','') as patientId
,replace(replace(replace(cast(a.encounterId as varchar(max)),char(10),''),char(13),''),'"','') as encounterId
,replace(replace(replace(cast(a.asmtId as varchar(max)),char(10),''),char(13),''),'"','') as asmtId
,replace(replace(replace(cast(a.specify as varchar(max)),char(10),''),char(13),''),'"','') as specify
,replace(replace(replace(cast(a.notes as varchar(max)),char(10),''),char(13),''),'"','') as notes
,replace(replace(replace(cast(a.deleteFlag as varchar(max)),char(10),''),char(13),''),'"','') as deleteFlag
,replace(replace(replace(cast(a.onsetdate as varchar(max)),char(10),''),char(13),''),'"','') as onsetdate
,replace(replace(replace(cast(a.userid as varchar(max)),char(10),''),char(13),''),'"','') as userid
,replace(replace(replace(cast(a.logdate as varchar(max)),char(10),''),char(13),''),'"','') as logdate
,replace(replace(replace(cast(a.inactiveFlag as varchar(max)),char(10),''),char(13),''),'"','') as inactiveFlag
,replace(replace(replace(cast(a.WUStatus as varchar(max)),char(10),''),char(13),''),'"','') as WUStatus
,replace(replace(replace(cast(a.condition as varchar(max)),char(10),''),char(13),''),'"','') as condition
,replace(replace(replace(cast(a.SlNo as varchar(max)),char(10),''),char(13),''),'"','') as SlNo
,replace(replace(replace(cast(a.displayIndex as varchar(max)),char(10),''),char(13),''),'"','') as displayIndex
,replace(replace(replace(cast(a.Risk as varchar(max)),char(10),''),char(13),''),'"','') as Risk
,replace(replace(replace(cast(a.AddedDate as varchar(max)),char(10),''),char(13),''),'"','') as AddedDate
,replace(replace(replace(cast(a.ProblemType as varchar(max)),char(10),''),char(13),''),'"','') as ProblemType
,replace(replace(replace(cast(a.Resolved as varchar(max)),char(10),''),char(13),''),'"','') as Resolved
,replace(replace(replace(cast(a.resolvedon as varchar(max)),char(10),''),char(13),''),'"','') as resolvedon
,replace(replace(replace(cast(a.SNOMED as varchar(max)),char(10),''),char(13),''),'"','') as SNOMED
,replace(replace(replace(cast(a.SNOMEDDesc as varchar(max)),char(10),''),char(13),''),'"','') as SNOMEDDesc
,replace(replace(replace(cast(a.SNOMEDDescID as varchar(max)),char(10),''),char(13),''),'"','') as SNOMEDDescID


from problemlist a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
