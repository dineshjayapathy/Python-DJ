
create table labdata

	(
	ReportId varchar(255) not null
	,EncounterId varchar(255) not null
	,ItemId varchar(255) not null
	,reason varchar(255) not null
	,received varchar(255) not null
	,result varchar(255) not null
	,ResultDate varchar(255) null
	,Notes varchar(255) null
	,status varchar(255) not null
	,Addendum varchar(255) not null
	,priority varchar(255) not null
	,assignedToId varchar(255) not null
	,deleteFlag varchar(255) not null
	,vmid varchar(255) not null
	,Type varchar(255) not null
	,Billable varchar(255) null
	,displayIndex varchar(255) not null
	,fromLabId varchar(255) not null
	,collDate varchar(255) not null
	,collTime varchar(255) not null
	,tolabid varchar(255) null
	,billClient varchar(255) not null
	,collSource varchar(255) not null
	,collVolume varchar(255) not null
	,collUnits varchar(255) not null
	,clinicalInfo varchar(255) not null
	,fasting varchar(255) not null
	,billType varchar(255) not null
	,PregId varchar(255) not null
	,OBFLabType varchar(255) not null
	,publishToPortal varchar(255) not null
	,commonNotesFlag varchar(255) not null
	,futureflag varchar(255) not null
	,prevencounterid varchar(255) not null
	,ordencounterid varchar(255) not null
	,FutureOrderDate varchar(255) null
	,ReviewedBy varchar(255) not null
	,ReviewedDate varchar(255) not null
	,ReviewedTime varchar(255) not null
	,transDate varchar(255) not null
	,transTime varchar(255) not null
	,profileID varchar(255) not null
	,IntNotes varchar(255) not null
	,HMFlag varchar(255) not null
	,ccResultToList varchar(255) not null
	,ccResultToListIds varchar(255) not null
	,HasACopy varchar(255) not null
	,ResultStatus varchar(255) not null
	,collDescription varchar(255) not null
	,ordPhyName varchar(255) null
	,ordPhyId varchar(255) null
	,refPhyFlag varchar(255) null
	,labrefid varchar(255) null
	,resultime varchar(255) null
	,PSEHold varchar(255) null
	,emailSent varchar(255) null
	,dtEmailSent varchar(255) null
	,ActualFasting varchar(255) not null
	,OrderInstructions varchar(255) null
	,hl7id1 varchar(255) null
	,hl7id2 varchar(255) null
	,hl7id3 varchar(255) null
	,newcol varchar(255) not null
	,cancelled varchar(255) not null
	,resultSentStatus varchar(255) not null
	,performedby varchar(255) null
	,approvalstatus varchar(255) not null
	,SendVmsg varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labdata] primary key ([ReportId])

	)

------------------------------
