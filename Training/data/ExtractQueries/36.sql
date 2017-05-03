
select
replace(replace(replace(cast(a.Id as varchar(max)),char(10),''),char(13),''),'"','') as Id
,replace(replace(replace(cast(a.UserId as varchar(max)),char(10),''),char(13),''),'"','') as UserId
,replace(replace(replace(cast(a.Msg as varchar(max)),char(10),''),char(13),''),'"','') as Msg
,replace(replace(replace(cast(a.Comments as varchar(max)),char(10),''),char(13),''),'"','') as Comments
,replace(replace(replace(cast(a.Discussion as varchar(max)),char(10),''),char(13),''),'"','') as Discussion
,replace(replace(replace(cast(a.StatusFlag as varchar(max)),char(10),''),char(13),''),'"','') as StatusFlag
,replace(replace(replace(cast(a.Status as varchar(max)),char(10),''),char(13),''),'"','') as Status
,convert(varchar, cast(a.CreateDate as datetime), 20) as CreateDate
,convert(varchar, cast(a.ModifyDate as datetime), 20) as ModifyDate


from maintenance a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
