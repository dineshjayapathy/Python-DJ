
select
replace(replace(replace(cast(a.OldRxId as varchar(max)),char(10),''),char(13),''),'"','') as OldRxId
,replace(replace(replace(cast(a.Prop as varchar(max)),char(10),''),char(13),''),'"','') as Prop
,replace(replace(replace(cast(a.value as varchar(max)),char(10),''),char(13),''),'"','') as value


from oldrxdetail a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
