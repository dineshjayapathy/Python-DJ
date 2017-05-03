
select
replace(replace(replace(cast(a.UsrLogID as varchar(max)),char(10),''),char(13),''),'"','') as UsrLogID
,replace(replace(replace(cast(a.UsrID as varchar(max)),char(10),''),char(13),''),'"','') as UsrID
,replace(replace(replace(cast(a.UsrName as varchar(max)),char(10),''),char(13),''),'"','') as UsrName
,replace(replace(replace(cast(a.HostMac as varchar(max)),char(10),''),char(13),''),'"','') as HostMac
,replace(replace(replace(cast(a.HostOS as varchar(max)),char(10),''),char(13),''),'"','') as HostOS
,replace(replace(replace(cast(a.HostOSUsr as varchar(max)),char(10),''),char(13),''),'"','') as HostOSUsr
,replace(replace(replace(cast(a.HostOSDomain as varchar(max)),char(10),''),char(13),''),'"','') as HostOSDomain
,replace(replace(replace(cast(a.HostIP as varchar(max)),char(10),''),char(13),''),'"','') as HostIP
,replace(replace(replace(cast(a.HostName as varchar(max)),char(10),''),char(13),''),'"','') as HostName
,replace(replace(replace(cast(a.HostLoginTime as varchar(max)),char(10),''),char(13),''),'"','') as HostLoginTime
,replace(replace(replace(cast(a.HostLogoutTime as varchar(max)),char(10),''),char(13),''),'"','') as HostLogoutTime
,replace(replace(replace(cast(a.HostECWVersion as varchar(max)),char(10),''),char(13),''),'"','') as HostECWVersion
,replace(replace(replace(cast(a.ServerLoginTime as varchar(max)),char(10),''),char(13),''),'"','') as ServerLoginTime
,replace(replace(replace(cast(a.ServerLogoutTime as varchar(max)),char(10),''),char(13),''),'"','') as ServerLogoutTime
,replace(replace(replace(cast(a.UsrStatus as varchar(max)),char(10),''),char(13),''),'"','') as UsrStatus


from usrlogs a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
