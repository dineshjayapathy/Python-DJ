
select
replace(replace(replace(cast(a.MsgId as varchar(max)),char(10),''),char(13),''),'"','') as MsgId
,replace(replace(replace(cast(a.uid as varchar(max)),char(10),''),char(13),''),'"','') as uid
,replace(replace(replace(cast(a.RefMsgId as varchar(max)),char(10),''),char(13),''),'"','') as RefMsgId
,replace(replace(replace(cast(a.MsgFrom as varchar(max)),char(10),''),char(13),''),'"','') as MsgFrom
,replace(replace(replace(cast(a.MsgTo as varchar(max)),char(10),''),char(13),''),'"','') as MsgTo
,replace(replace(replace(cast(a.MsgType as varchar(max)),char(10),''),char(13),''),'"','') as MsgType
,replace(replace(replace(cast(a.Priority as varchar(max)),char(10),''),char(13),''),'"','') as Priority
,replace(replace(replace(cast(a.FolderId as varchar(max)),char(10),''),char(13),''),'"','') as FolderId
,replace(replace(replace(cast(a.Subject as varchar(max)),char(10),''),char(13),''),'"','') as Subject
,replace(replace(replace(cast(a.Body as varchar(max)),char(10),''),char(13),''),'"','') as Body
,convert(varchar, cast(a.dtSent as datetime), 20) as dtSent
,convert(varchar, cast(a.dtReceived as datetime), 20) as dtReceived
,convert(varchar, cast(a.dtRead as datetime), 20) as dtRead
,convert(varchar, cast(a.dtArchived as datetime), 20) as dtArchived
,convert(varchar, cast(a.dtDeleted as datetime), 20) as dtDeleted
,replace(replace(replace(cast(a.encounterId as varchar(max)),char(10),''),char(13),''),'"','') as encounterId
,replace(replace(replace(cast(a.delflag as varchar(max)),char(10),''),char(13),''),'"','') as delflag
,replace(replace(replace(cast(a.healthMaintainenceMsg as varchar(max)),char(10),''),char(13),''),'"','') as healthMaintainenceMsg
,replace(replace(replace(cast(a.facilityid as varchar(max)),char(10),''),char(13),''),'"','') as facilityid
,replace(replace(replace(cast(a.hasAttachment as varchar(max)),char(10),''),char(13),''),'"','') as hasAttachment


from tblwebmsg a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
