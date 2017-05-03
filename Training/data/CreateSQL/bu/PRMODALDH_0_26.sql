
create table insurancedetail

	(
	Id varchar(255) not null
	,pid varchar(255) not null
	,insid varchar(255) not null
	,startDate varchar(255) null
	,endDate varchar(255) null
	,groupNo varchar(255) not null
	,subscriberNo varchar(255) null
	,copays varchar(255) null
	,copayType varchar(255) not null
	,insOrder varchar(255) null
	,DeleteFlag varchar(255) not null
	,GrId varchar(255) not null
	,GrRel varchar(255) not null
	,IsGrPt varchar(255) not null
	,PaymentSource varchar(255) not null
	,groupName varchar(255) not null
	,InsType varchar(255) not null
	,AssignBenefits varchar(255) not null
	,SeqNo varchar(255) not null
	,PtSigSource varchar(255) not null
	,PPOIndex varchar(255) not null
	,PPOId varchar(255) not null
	,PayerClaimOfficeNo varchar(255) not null
	,SuppInsInd varchar(255) not null
	,MedicaidId varchar(255) not null
	,patSubscriberNo varchar(255) null
	,KenPAC varchar(255) not null
	,InsuranceClass varchar(255) not null
	,MedicaidSeqNo varchar(255) null
	,EncEligibilityStatus varchar(255) not null
	,EligibilityMessage varchar(255) not null
	,InsuredAltLName varchar(255) null
	,InsuredAltFName varchar(255) null
	,InsuredAltMiddleInitial varchar(255) null
	,notes varchar(255) null
	,PatientAltLName varchar(255) null
	,PatientAltFName varchar(255) null
	,PatientAltMiddleInitial varchar(255) null
	,SubscriberSecondaryIdentifier varchar(255) null
	,SubscriberIdentificationQualifier varchar(255) null
	,DentalIns varchar(255) not null
	,MedicaidSubId varchar(255) not null
	,SubscriberSecondaryInvRef varchar(255) null
	,SubscriberSecondaryInvRefQualifier varchar(255) null
	,InsuranceImgName varchar(255) null
	,MultipleCoPay varchar(255) not null
	,PCPCoPay varchar(255) not null
	,SpecialistCoPay varchar(255) not null
	,OtherCoPay varchar(255) not null
	,CoInsurance varchar(255) not null
	,hl7id varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_insurancedetail] primary key ([Id])

	)

------------------------------
