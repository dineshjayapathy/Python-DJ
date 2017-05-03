
select
replace(replace(replace(cast(a.id as varchar(max)),char(10),''),char(13),''),'"','') as id
,replace(replace(replace(cast(a.RefId as varchar(max)),char(10),''),char(13),''),'"','') as RefId
,replace(replace(replace(cast(a.doctype as varchar(max)),char(10),''),char(13),''),'"','') as doctype
,replace(replace(replace(cast(a.docId as varchar(max)),char(10),''),char(13),''),'"','') as docId


from ref_attachments a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
