
select
replace(replace(replace(cast(a.Id as varchar(max)),char(10),''),char(13),''),'"','') as Id
,replace(replace(replace(cast(a.EncounterId as varchar(max)),char(10),''),char(13),''),'"','') as EncounterId
,replace(replace(replace(cast(a.itemID as varchar(max)),char(10),''),char(13),''),'"','') as itemID
,convert(varchar, cast(a.date as datetime), 20) as date
,convert(varchar, cast(a.endDate as datetime), 20) as endDate
,convert(varchar, cast(a.endData as datetime), 20) as endData
,replace(replace(replace(cast(a.providerId as varchar(max)),char(10),''),char(13),''),'"','') as providerId
,replace(replace(replace(cast(a.Notes as varchar(max)),char(10),''),char(13),''),'"','') as Notes
,replace(replace(replace(cast(a.displayIndex as varchar(max)),char(10),''),char(13),''),'"','') as displayIndex
,replace(replace(replace(cast(a.deleteFlag as varchar(max)),char(10),''),char(13),''),'"','') as deleteFlag
,replace(replace(replace(cast(a.Mod1 as varchar(max)),char(10),''),char(13),''),'"','') as Mod1
,replace(replace(replace(cast(a.Mod2 as varchar(max)),char(10),''),char(13),''),'"','') as Mod2
,replace(replace(replace(cast(a.Mod3 as varchar(max)),char(10),''),char(13),''),'"','') as Mod3
,replace(replace(replace(cast(a.units as varchar(max)),char(10),''),char(13),''),'"','') as units
,replace(replace(replace(cast(a.codeFlag as varchar(max)),char(10),''),char(13),''),'"','') as codeFlag
,replace(replace(replace(cast(a.Icd1 as varchar(max)),char(10),''),char(13),''),'"','') as Icd1
,replace(replace(replace(cast(a.Icd2 as varchar(max)),char(10),''),char(13),''),'"','') as Icd2
,replace(replace(replace(cast(a.Icd3 as varchar(max)),char(10),''),char(13),''),'"','') as Icd3
,replace(replace(replace(cast(a.Icd4 as varchar(max)),char(10),''),char(13),''),'"','') as Icd4
,replace(replace(replace(cast(a.icdcode1 as varchar(max)),char(10),''),char(13),''),'"','') as icdcode1
,replace(replace(replace(cast(a.icdcode2 as varchar(max)),char(10),''),char(13),''),'"','') as icdcode2
,replace(replace(replace(cast(a.icdcode3 as varchar(max)),char(10),''),char(13),''),'"','') as icdcode3
,replace(replace(replace(cast(a.icdcode4 as varchar(max)),char(10),''),char(13),''),'"','') as icdcode4
,replace(replace(replace(cast(a.vitalCpt as varchar(max)),char(10),''),char(13),''),'"','') as vitalCpt
,replace(replace(replace(cast(a.Mod4 as varchar(max)),char(10),''),char(13),''),'"','') as Mod4
,replace(replace(replace(cast(a.ToothNumber as varchar(max)),char(10),''),char(13),''),'"','') as ToothNumber
,replace(replace(replace(cast(a.Surface as varchar(max)),char(10),''),char(13),''),'"','') as Surface
,replace(replace(replace(cast(a.documentedTime as varchar(max)),char(10),''),char(13),''),'"','') as documentedTime
,replace(replace(replace(cast(a.ndccode as varchar(max)),char(10),''),char(13),''),'"','') as ndccode


from billingdata a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
