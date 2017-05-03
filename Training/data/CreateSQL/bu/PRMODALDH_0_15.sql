
create table doctors

	(
	doctorID varchar(255) not null
	,deaNo varchar(255) null
	,FaxNo varchar(255) null
	,speciality varchar(255) not null
	,SpecialityCode varchar(255) not null
	,PrintName varchar(255) not null
	,providerCode varchar(255) not null
	,LicenseKey varchar(255) not null
	,TaxID varchar(255) not null
	,TaxIDType varchar(255) not null
	,TaxIDSuffix varchar(255) not null
	,EMCProviderID varchar(255) not null
	,OrgType varchar(255) not null
	,FacilityId varchar(255) not null
	,NPI varchar(255) not null
	,UPIN varchar(255) not null
	,MamoCerNo varchar(255) not null
	,MedicareNo varchar(255) not null
	,MedicaidNo varchar(255) not null
	,ChampusNo varchar(255) not null
	,BlueShieldNo varchar(255) not null
	,SpLicNo varchar(255) not null
	,StLicNo varchar(255) not null
	,AneLicNo varchar(255) not null
	,inactive varchar(255) not null
	,TaxonomyCode varchar(255) not null
	,HPSAFlag varchar(255) not null
	,hl7id varchar(255) not null
	,SuprPrId varchar(255) not null
	,DefStaffID varchar(255) not null
	,ClaimPrefix varchar(255) null
	,CarolinaAccessNo varchar(255) not null
	,KenPAC varchar(255) not null
	,ProfCode varchar(255) not null
	,SPI varchar(255) null
	,ActiveStartDate varchar(255) null
	,ActiveEndDate varchar(255) null
	,PostURL varchar(255) null
	,VisitTypeSearch varchar(255) null
	,VisitTypeIndicator varchar(255) null
	,DefRefillRxAssignedTo varchar(255) null
	,doctorType varchar(255) not null
	,PhotoMedicId varchar(255) null
	,TakeNewAppts varchar(255) null
	,AHCAID varchar(255) null
	,DefaultRefAssignedTo varchar(255) not null
	,ucpid varchar(255) null
	,GrpNPI varchar(255) not null
	,DefaultFaxRxStyleId varchar(255) not null
	,DefaultPrintRxStyleId varchar(255) not null
	,SeqNoExempted varchar(255) null
	,EntityType varchar(255) not null
	,ProviderType varchar(255) not null
	,DPSNo varchar(255) null
	,RxhubId varchar(255) null
	,ProvRoleType varchar(255) not null
	,DefStaffIDForProcedure varchar(255) not null
	,DefStaffIDForDI varchar(255) not null
	,isResident varchar(255) not null
	,PrescriptiveAuthNo varchar(255) not null
	,isNurseAncProv varchar(255) not null
	,DefRefillRxAssignedTo2 varchar(255) not null
	,DefRefillRxAssignedTo3 varchar(255) not null
	,regNHX varchar(255) not null
	,p2pimport varchar(255) not null
	,regp2pnpi varchar(255) not null
	,DefaultIncomingRefAssignedTo varchar(255) not null
	,NetAffId varchar(255) null
	,SS_Deactivated varchar(255) null
	,CoPayType varchar(255) not null
	,takenewportalmsg varchar(255) null
	,DefaultPRAssignedTo varchar(255) not null
	,regOA varchar(255) not null
	,diwapptprotectiontype varchar(255) null
	,defaultstate varchar(255) not null
	,regTV varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_doctors] primary key ([doctorID])

	)

------------------------------
