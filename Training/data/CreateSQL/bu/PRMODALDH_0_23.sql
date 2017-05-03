
create table oldrxmain

	(
	OldRxId varchar(255) not null
	,ItemId varchar(255) null
	,MedicineName varchar(255) null
	,encounterId varchar(255) null
	,PatientsFlag varchar(255) null
	,DoctorsFlag varchar(255) null
	,Refill varchar(255) null
	,AssessId varchar(255) null
	,ndc_code varchar(255) null
	,FollowUpId varchar(255) not null
	,StartDate varchar(255) null
	,PreparedBy varchar(255) null
	,DaysLeftAdjustNumber varchar(255) not null
	,awp varchar(255) not null
	,awup varchar(255) not null
	,RightPane_DLAN varchar(255) not null
	,StopDate varchar(255) null
	,rxNotes varchar(255) null
	,rxSource varchar(255) null
	,rxSourceId varchar(255) null
	,rxkop varchar(255) not null
	,rxDrugSource varchar(255) not null
	,RxOrderNo varchar(255) null
	,PreparedById varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_oldrxmain] primary key ([OldRxId])

	)

------------------------------
