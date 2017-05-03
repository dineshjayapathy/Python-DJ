
create table usrlogs

	(
	UsrLogID varchar(255) not null
	,UsrID varchar(255) null
	,UsrName varchar(255) null
	,HostMac varchar(255) null
	,HostOS varchar(255) null
	,HostOSUsr varchar(255) null
	,HostOSDomain varchar(255) null
	,HostIP varchar(255) null
	,HostName varchar(255) null
	,HostLoginTime varchar(255) null
	,HostLogoutTime varchar(255) null
	,HostECWVersion varchar(255) null
	,ServerLoginTime varchar(255) null
	,ServerLogoutTime varchar(255) null
	,UsrStatus varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_usrlogs] primary key ([UsrLogID])

	)

------------------------------
