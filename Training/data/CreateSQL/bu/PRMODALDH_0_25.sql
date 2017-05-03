
create table immunizations

	(
	ImmunizationId varchar(255) not null
	,patientId varchar(255) not null
	,ItemId varchar(255) null
	,location varchar(255) null
	,givenDate varchar(255) null
	,givenBy varchar(255) null
	,lotNumber varchar(255) null
	,Dose varchar(255) null
	,VaccineManufacturer varchar(255) null
	,dueDate varchar(255) null
	,dateVISgiven varchar(255) null
	,DateonVIS varchar(255) null
	,Notes varchar(255) null
	,deleteFlag varchar(255) null
	,billable varchar(255) not null
	,ImmtracDispatchStatus varchar(255) not null
	,Selected varchar(255) not null
	,HistoryFlag varchar(255) not null
	,DoseNumber varchar(255) not null
	,Facility varchar(255) null
	,race_code varchar(255) null
	,contactId varchar(255) null
	,relation_code varchar(255) null
	,glname varchar(255) null
	,gfname varchar(255) null
	,gminitial varchar(255) null
	,cptcvx varchar(255) null
	,vaccinename varchar(255) null
	,mvx_code varchar(255) null
	,cvx_code varchar(255) null
	,vfc_code varchar(255) null
	,encounterid varchar(255) not null
	,action varchar(255) null
	,lotId varchar(255) null
	,decDoses varchar(255) not null
	,Route varchar(255) null
	,ExportedDate varchar(255) not null
	,medicaidno varchar(255) not null
	,GivenTime varchar(255) null
	,ReadBy varchar(255) null
	,ReadDate varchar(255) null
	,MMInduration varchar(255) null
	,Impression varchar(255) null
	,GivenById varchar(255) null
	,logBatchId varchar(255) null
	,logStatus varchar(255) null
	,immsendstatus varchar(255) null
	,immprocessed varchar(255) null
	,fromImmRegistry varchar(255) null
	,immstatus varchar(255) not null
	,notAdminReasonCode varchar(255) not null
	,notAdminotherReason varchar(255) not null
	,sourceOfHistory varchar(255) not null
	,docfacilityId varchar(255) not null
	,counselling varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_immunizations] primary key ([ImmunizationId])

	)

------------------------------
