
select
replace(replace(replace(cast(a.patientID as varchar(max)),char(10),''),char(13),''),'"','') as patientID
,replace(replace(replace(cast(a.drug as varchar(max)),char(10),''),char(13),''),'"','') as drug
,replace(replace(replace(cast(a.allergy as varchar(max)),char(10),''),char(13),''),'"','') as allergy
,replace(replace(replace(cast(a.encounterId as varchar(max)),char(10),''),char(13),''),'"','') as encounterId
,replace(replace(replace(cast(a.itemID as varchar(max)),char(10),''),char(13),''),'"','') as itemID
,replace(replace(replace(cast(a.displayIndex as varchar(max)),char(10),''),char(13),''),'"','') as displayIndex
,replace(replace(replace(cast(a.SMDamConceptID as varchar(max)),char(10),''),char(13),''),'"','') as SMDamConceptID
,replace(replace(replace(cast(a.SMDamConceptIDDesc as varchar(max)),char(10),''),char(13),''),'"','') as SMDamConceptIDDesc
,replace(replace(replace(cast(a.ndc_code as varchar(max)),char(10),''),char(13),''),'"','') as ndc_code
,replace(replace(replace(cast(a.allergytype as varchar(max)),char(10),''),char(13),''),'"','') as allergytype
,replace(replace(replace(cast(a.type as varchar(max)),char(10),''),char(13),''),'"','') as type
,replace(replace(replace(cast(a.status as varchar(max)),char(10),''),char(13),''),'"','') as status


from allergies a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
