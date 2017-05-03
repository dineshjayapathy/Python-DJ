
select
replace(replace(replace(cast(a.contactId as varchar(max)),char(10),''),char(13),''),'"','') as contactId
,replace(replace(replace(cast(a.pid as varchar(max)),char(10),''),char(13),''),'"','') as pid
,replace(replace(replace(cast(a.name as varchar(max)),char(10),''),char(13),''),'"','') as name
,replace(replace(replace(cast(a.relation as varchar(max)),char(10),''),char(13),''),'"','') as relation
,replace(replace(replace(cast(a.address as varchar(max)),char(10),''),char(13),''),'"','') as address
,replace(replace(replace(cast(a.address2 as varchar(max)),char(10),''),char(13),''),'"','') as address2
,replace(replace(replace(cast(a.city as varchar(max)),char(10),''),char(13),''),'"','') as city
,replace(replace(replace(cast(a.state as varchar(max)),char(10),''),char(13),''),'"','') as state
,replace(replace(replace(cast(a.zipcode as varchar(max)),char(10),''),char(13),''),'"','') as zipcode
,replace(replace(replace(cast(a.homePhone as varchar(max)),char(10),''),char(13),''),'"','') as homePhone
,replace(replace(replace(cast(a.workPhone as varchar(max)),char(10),''),char(13),''),'"','') as workPhone
,replace(replace(replace(cast(a.vmid as varchar(max)),char(10),''),char(13),''),'"','') as vmid
,replace(replace(replace(cast(a.delflag as varchar(max)),char(10),''),char(13),''),'"','') as delflag
,replace(replace(replace(cast(a.Lname as varchar(max)),char(10),''),char(13),''),'"','') as Lname
,replace(replace(replace(cast(a.Fname as varchar(max)),char(10),''),char(13),''),'"','') as Fname
,replace(replace(replace(cast(a.MI as varchar(max)),char(10),''),char(13),''),'"','') as MI
,replace(replace(replace(cast(a.Guardian as varchar(max)),char(10),''),char(13),''),'"','') as Guardian
,replace(replace(replace(cast(a.RelatedPtId as varchar(max)),char(10),''),char(13),''),'"','') as RelatedPtId
,replace(replace(replace(cast(a.HExt as varchar(max)),char(10),''),char(13),''),'"','') as HExt
,replace(replace(replace(cast(a.WExt as varchar(max)),char(10),''),char(13),''),'"','') as WExt
,replace(replace(replace(cast(a.Type1 as varchar(max)),char(10),''),char(13),''),'"','') as Type1
,replace(replace(replace(cast(a.Type2 as varchar(max)),char(10),''),char(13),''),'"','') as Type2
,replace(replace(replace(cast(a.Fax as varchar(max)),char(10),''),char(13),''),'"','') as Fax
,replace(replace(replace(cast(a.Email as varchar(max)),char(10),''),char(13),''),'"','') as Email
,replace(replace(replace(cast(a.Notes as varchar(max)),char(10),''),char(13),''),'"','') as Notes
,replace(replace(replace(cast(a.Hippa as varchar(max)),char(10),''),char(13),''),'"','') as Hippa
,replace(replace(replace(cast(a.displayorder as varchar(max)),char(10),''),char(13),''),'"','') as displayorder
,replace(replace(replace(cast(a.maidenname as varchar(max)),char(10),''),char(13),''),'"','') as maidenname


from contacts a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
