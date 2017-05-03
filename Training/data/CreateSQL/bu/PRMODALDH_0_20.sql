
create table encounterdata

	(
	encounterID varchar(255) not null
	,chiefComplaint varchar(255) not null
	,currentMedication varchar(255) null
	,HPINotes varchar(255) null
	,ExamNotes varchar(255) null
	,AsmtNotes varchar(255) null
	,TreatNotes varchar(255) null
	,NextAppt varchar(255) null
	,NextApptOpt varchar(255) null
	,LockEnc varchar(255) null
	,AddtlNotes varchar(255) null
	,pastHistory varchar(255) null
	,AllergiesFlag varchar(255) null
	,complaintsFlag varchar(255) null
	,historyFlag varchar(255) null
	,vitalsFlag varchar(255) null
	,medicationFlag varchar(255) null
	,copay varchar(255) null
	,paymentType varchar(255) not null
	,checkNo varchar(255) not null
	,notesstatus varchar(255) null
	,displayIndex varchar(255) null
	,HospitalizationFlag varchar(255) null
	,SurgicalFlag varchar(255) null
	,PregnantFlag varchar(255) null
	,BreastFeedingFlag varchar(255) null
	,NonContributoryFlag varchar(255) null
	,SurgicalHistoryFlag varchar(255) null
	,HospitalizationHistoryFlag varchar(255) null
	,chieficds varchar(255) null
	,historyicds varchar(255) null
	,AsmtNotesHeader varchar(255) null
	,NextApptReason varchar(255) not null
	,FollowUpNA varchar(255) not null
	,LockOrDoneDate varchar(255) null
	,SocialHistoryFlag varchar(255) null
	,FamilyHistoryFlag varchar(255) null
	,doneBy varchar(255) null
	,doneDate varchar(255) null
	,ImmunizationsVerified varchar(255) null
	,medreconciliationinternalflag varchar(255) null
	,historyicdids varchar(255) not null
	,mddatelastseen varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_encounterdata] primary key ([encounterID])

	)

------------------------------
