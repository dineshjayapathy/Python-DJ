
create table tblwebmsg

	(
	MsgId varchar(255) not null
	,uid varchar(255) not null
	,RefMsgId varchar(255) null
	,MsgFrom varchar(255) null
	,MsgTo varchar(255) null
	,MsgType varchar(255) null
	,Priority varchar(255) null
	,FolderId varchar(255) null
	,Subject varchar(255) null
	,Body varchar(255) null
	,dtSent varchar(255) null
	,dtReceived varchar(255) null
	,dtRead varchar(255) null
	,dtArchived varchar(255) null
	,dtDeleted varchar(255) null
	,encounterId varchar(255) null
	,delflag varchar(255) null
	,healthMaintainenceMsg varchar(255) null
	,facilityid varchar(255) null
	,hasAttachment varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_tblwebmsg] primary key ([MsgId])

	)

------------------------------
