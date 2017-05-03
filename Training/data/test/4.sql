
select
replace(replace(replace(cast(a.EncounterId as varchar(max)),char(10),''),char(13),''),'"','') as EncounterId
,replace(replace(replace(cast(a.ItemId as varchar(max)),char(10),''),char(13),''),'"','') as ItemId
,replace(replace(replace(cast(a.PrimaryAsmt as varchar(max)),char(10),''),char(13),''),'"','') as PrimaryAsmt
,replace(replace(replace(cast(a.Specify as varchar(max)),char(10),''),char(13),''),'"','') as Specify
,replace(replace(replace(cast(a.Notes as varchar(max)),char(10),''),char(13),''),'"','') as Notes
,replace(replace(replace(cast(a.displayIndex as varchar(max)),char(10),''),char(13),''),'"','') as displayIndex
,replace(replace(replace(cast(a.axis as varchar(max)),char(10),''),char(13),''),'"','') as axis
,replace(replace(replace(cast(a.AsmtOnsetDate as varchar(max)),char(10),''),char(13),''),'"','') as AsmtOnsetDate
,replace(replace(replace(cast(a.SlNo as varchar(max)),char(10),''),char(13),''),'"','') as SlNo
,replace(replace(replace(cast(a.websync as varchar(max)),char(10),''),char(13),''),'"','') as websync
,replace(replace(replace(cast(a.Risk as varchar(max)),char(10),''),char(13),''),'"','') as Risk
,replace(replace(replace(cast(a.SNOMED as varchar(max)),char(10),''),char(13),''),'"','') as SNOMED


from diagnosis a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
