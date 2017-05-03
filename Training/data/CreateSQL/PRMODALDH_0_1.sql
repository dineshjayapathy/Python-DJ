create table alertdata

	(
	Id varchar(255) not null
	,PatientId varchar(255) not null
	,MeasureId varchar(255) not null
	,MeasureName varchar(255) not null
	,ItemId varchar(255) not null
	,Frequency varchar(255) not null
	,LastDone varchar(255) not null
	,DueDate varchar(255) not null
	,Value varchar(255) not null
	,controlstatus varchar(255) not null
	,RegistryAlert varchar(255) not null
	,labReceived varchar(255) not null
	,mdate varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_alertdata] primary key ([Id])

	)

------------------------------

create table alertoverride

	(
	Id varchar(255) not null
	,PatientId varchar(255) not null
	,MeasureId varchar(255) not null
	,DueDate varchar(255) null
	,NeverRemind varchar(255) not null
	,Reason varchar(255) null
	,status varchar(255) not null
	,statusLabel varchar(255) not null
	,reset varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_alertoverride] primary key ([Id])

	)

------------------------------

create table allergies

	(
	patientID varchar(255) not null
	,drug varchar(255) null
	,allergy varchar(255) not null
	,encounterId varchar(255) null
	,itemID varchar(255) null
	,displayIndex varchar(255) null
	,SMDamConceptID varchar(255) null
	,SMDamConceptIDDesc varchar(255) null
	,ndc_code varchar(255) null
	,allergytype varchar(255) not null
	,type varchar(255) not null
	,status varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_allergies] primary key ([Id])

	)

------------------------------

create table billingdata

	(
	Id varchar(255) not null
	,EncounterId varchar(255) not null
	,itemID varchar(255) not null
	,date varchar(255) null
	,endDate varchar(255) null
	,endData varchar(255) null
	,providerId varchar(255) not null
	,Notes varchar(255) null
	,displayIndex varchar(255) null
	,deleteFlag varchar(255) not null
	,Mod1 varchar(255) not null
	,Mod2 varchar(255) not null
	,Mod3 varchar(255) not null
	,units varchar(255) not null
	,codeFlag varchar(255) not null
	,Icd1 varchar(255) not null
	,Icd2 varchar(255) not null
	,Icd3 varchar(255) not null
	,Icd4 varchar(255) not null
	,icdcode1 varchar(255) not null
	,icdcode2 varchar(255) not null
	,icdcode3 varchar(255) not null
	,icdcode4 varchar(255) not null
	,vitalCpt varchar(255) not null
	,Mod4 varchar(255) not null
	,ToothNumber varchar(255) not null
	,Surface varchar(255) not null
	,documentedTime varchar(255) null
	,ndccode varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_billingdata] primary key ([Id])

	)

------------------------------

create table contacts

	(
	contactId varchar(255) not null
	,pid varchar(255) not null
	,name varchar(255) not null
	,relation varchar(255) not null
	,address varchar(255) not null
	,address2 varchar(255) not null
	,city varchar(255) not null
	,state varchar(255) not null
	,zipcode varchar(255) not null
	,homePhone varchar(255) not null
	,workPhone varchar(255) not null
	,vmid varchar(255) not null
	,delflag varchar(255) not null
	,Lname varchar(255) not null
	,Fname varchar(255) not null
	,MI varchar(255) null
	,Guardian varchar(255) null
	,RelatedPtId varchar(255) not null
	,HExt varchar(255) not null
	,WExt varchar(255) not null
	,Type1 varchar(255) not null
	,Type2 varchar(255) not null
	,Fax varchar(255) not null
	,Email varchar(255) not null
	,Notes varchar(255) not null
	,Hippa varchar(255) null
	,displayorder varchar(255) null
	,maidenname varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_contacts] primary key ([contactId])

	)

------------------------------

create table diagnosis

	(
	EncounterId varchar(255) not null
	,ItemId varchar(255) null
	,PrimaryAsmt varchar(255) null
	,Specify varchar(255) null
	,Notes varchar(255) null
	,displayIndex varchar(255) null
	,axis varchar(255) not null
	,AsmtOnsetDate varchar(255) null
	,SlNo varchar(255) not null
	,websync varchar(255) null
	,Risk varchar(255) not null
	,SNOMED varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_diagnosis] primary key ([SlNo])

	)

------------------------------

create table edi_employmentstatus

	(
	Code varchar(255) not null
	,Name varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_edi_employmentstatus] primary key ([doctorID])

	)

------------------------------

create table edi_speciality

	(
	Id varchar(255) not null
	,Speciality varchar(255) not null
	,Code varchar(255) not null
	,deleteFlag varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_edi_speciality] primary key ([Id])

	)

------------------------------

create table encounter

	(
	encounterID varchar(255) not null
	,doctorID varchar(255) not null
	,patientID varchar(255) not null
	,date varchar(255) null
	,time varchar(255) null
	,reason varchar(255) null
	,visitType varchar(255) null
	,roomno varchar(255) null
	,status varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_encounter] primary key ([encounterID])

	)

------------------------------

create table ethnicity

	(
	Code varchar(255) null
	,Name varchar(255) null
	,EthId varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_ethnicity] primary key ([EthId])

	)

------------------------------

create table familydata

	(
	encounterID varchar(255) not null
	,itemID varchar(255) not null
	,name varchar(255) null
	,status varchar(255) null
	,age varchar(255) null
	,dob varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_familydata] primary key ([EthId])

	)

------------------------------

create table immunizationstatus

	(
	Id varchar(255) not null
	,ImmStatusId varchar(255) not null
	,CODE varchar(255) null
	,Description varchar(255) not null
	,TYPE varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_immunizationstatus] primary key ([Id])

	)

------------------------------

create table itemdetail

	(
	itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_itemdetail] primary key ([Id])

	)

------------------------------

create table labcptmap

	(
	labCode varchar(255) null
	,cptCode varchar(255) null
	,Id varchar(255) not null
	,CptItemId varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labcptmap] primary key ([Id])

	)

------------------------------

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

create table edi_facilities

	(
	Id varchar(255) not null
	,FacilityType varchar(255) not null
	,Name varchar(255) not null
	,AddressLine1 varchar(255) not null
	,AddressLine2 varchar(255) not null
	,City varchar(255) not null
	,State varchar(255) not null
	,Zip varchar(255) not null
	,Tel varchar(255) not null
	,Fax varchar(255) not null
	,EMail varchar(255) not null
	,BillingAddressLine1 varchar(255) not null
	,BillingAddressLine2 varchar(255) not null
	,BillingCity varchar(255) not null
	,BillingState varchar(255) not null
	,BillingZip varchar(255) not null
	,BillingTel varchar(255) not null
	,BillingFax varchar(255) not null
	,BillingEMail varchar(255) not null
	,PracticeType varchar(255) not null
	,PracticeOption varchar(255) not null
	,PayableTo varchar(255) not null
	,BankAccount varchar(255) not null
	,FederalTaxID varchar(255) not null
	,Notes varchar(255) not null
	,PrimaryFacility varchar(255) not null
	,CliaId varchar(255) not null
	,code varchar(255) not null
	,POS varchar(255) not null
	,MammoCertId varchar(255) not null
	,HPSAFlag varchar(255) not null
	,HPSAModifier varchar(255) not null
	,DeleteFlag varchar(255) not null
	,vmid varchar(255) not null
	,hl7id varchar(255) not null
	,Color varchar(255) null
	,FeeSchedule varchar(255) not null
	,FacilityIdType varchar(255) not null
	,PtStmtFacOption varchar(255) not null
	,PtStmtFacId varchar(255) not null
	,RestrictPrintAppts varchar(255) null
	,NPI varchar(255) not null
	,ImmStateId varchar(255) not null
	,TaxonomyCode varchar(255) not null
	,RestrictPrintStmts varchar(255) not null
	,startedOn varchar(255) null
	,RevenueCode varchar(255) null
	,Percent varchar(255) not null
	,OverrideSalesTax varchar(255) not null
	,MerchantID varchar(255) not null
	,ImmLocationId varchar(255) not null
	,TimeZoneCode varchar(255) null
	,MessCallerId varchar(255) null
	,MessOperNum varchar(255) null
	,CreditCardOption varchar(255) not null
	,CountryCode varchar(255) not null
	,BillingCountryCode varchar(255) not null
	,Immfacid varchar(255) null
	,BillType varchar(255) not null
	,takeNewPortalAppts varchar(255) null
	,portal_name varchar(255) null
	,takenewportalmsg varchar(255) null
	,showinpi varchar(255) null
	,modifiedDate varchar(255) not null
	,nsexclude varchar(255) not null
	,facilitysmsname varchar(255) not null
	,birthdayexclude varchar(255) not null
	,ASC_TN_FacilityType varchar(255) null
	,ASC_TN_FacilityId varchar(255) null
	,facilitynickname varchar(255) null
	,exclude varchar(255) not null
	,labexclude varchar(255) not null
	,ASC_WI_FacilityType varchar(255) null
	,rxexclude varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_edi_facilities] primary key ([Id])

	)

------------------------------

create table familyhxdetails

	(
	encounterId varchar(255) not null
	,itemId varchar(255) not null
	,icdItemid varchar(255) not null
	,icdCode varchar(255) not null
	,icdDesc varchar(255) not null
	,snomedCode varchar(255) not null
	,diagnosedYear varchar(255) not null
	,diagnosedAge varchar(255) not null
	,name varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_familyhxdetails] primary key ([EthId])

	)

------------------------------

create table hl7labdatadetail

	(
	ReportId varchar(255) not null
	,NAME varchar(255) not null
	,value varchar(255) not null
	,units varchar(255) not null
	,range varchar(255) not null
	,flag varchar(255) not null
	,notes varchar(255) not null
	,resultStatus varchar(255) not null
	,labId varchar(255) not null
	,hl7id varchar(255) null
	,profileid varchar(255) not null
	,serialno varchar(255) not null
	,obrcode varchar(255) not null
	,corrreportno varchar(255) not null
	,performingSiteId varchar(255) not null
	,prevvalue varchar(255) null
	,AttrResultDate varchar(255) null
	,AttrResultTime varchar(255) null
	,obsubid varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_hl7labdatadetail] primary key ([LogID])

	)

------------------------------

create table enc

	(
	encounterID varchar(255) not null
	,patientID varchar(255) not null
	,doctorID varchar(255) not null
	,date varchar(255) null
	,time varchar(255) null
	,startTime varchar(255) null
	,endTime varchar(255) null
	,reason varchar(255) null
	,VisitType varchar(255) null
	,roomNo varchar(255) null
	,STATUS varchar(255) not null
	,deleteFlag varchar(255) null
	,encType varchar(255) null
	,encLock varchar(255) null
	,Notes varchar(255) null
	,generalNotes varchar(255) not null
	,vmid varchar(255) not null
	,facilityId varchar(255) null
	,POS varchar(255) not null
	,arrivedTime varchar(255) not null
	,timeIn varchar(255) not null
	,timeOut varchar(255) not null
	,stsAfterArr varchar(255) not null
	,depTime varchar(255) not null
	,stsAfterChkIn varchar(255) not null
	,HL7Id varchar(255) not null
	,newPt varchar(255) not null
	,Dx varchar(255) not null
	,reminded varchar(255) null
	,remindedDate varchar(255) null
	,VisitCopay varchar(255) not null
	,CopayChanged varchar(255) not null
	,ClaimRequired varchar(255) not null
	,ClaimReq varchar(255) not null
	,VisitTypeOverriden varchar(255) null
	,refPrName varchar(255) null
	,refPrId varchar(255) null
	,PSACGroup varchar(255) null
	,deptid varchar(255) null
	,ResourceId varchar(255) not null
	,EncEligibilityStatus varchar(255) not null
	,EligibilityMessage varchar(255) not null
	,InvoiceId varchar(255) not null
	,EligSubId varchar(255) not null
	,EncEligibilityStatus2 varchar(255) not null
	,EligibilityMessage2 varchar(255) not null
	,EncEligibilityStatus3 varchar(255) not null
	,EligibilityMessage3 varchar(255) not null
	,trans_dictation varchar(255) null
	,waitTime varchar(255) null
	,websync varchar(255) null
	,dateIn varchar(255) null
	,dateOut varchar(255) null
	,notesDoneTime varchar(255) null
	,notesLoginId varchar(255) null
	,notesLogOutId varchar(255) null
	,visittypeid varchar(255) null
	,UTCStartTime varchar(255) null
	,UTCEndTime varchar(255) null
	,visitstscodeid varchar(255) not null
	,practiceId varchar(255) not null
	,immnotessendstatus varchar(255) null
	,transitionofcare varchar(255) null
	,prNotesSendStatus varchar(255) not null
	,readytobill varchar(255) not null
	,reviewbeforebill varchar(255) not null
	,EncEligibilityStatus4 varchar(255) not null
	,EligibilityMessage4 varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_enc] primary key ([encounterID])

	)

------------------------------

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

create table items

	(
	itemID varchar(255) not null
	,itemName varchar(255) not null
	,itemDesc varchar(255) not null
	,parentID varchar(255) not null
	,xmlPath varchar(255) not null
	,xslPath varchar(255) not null
	,itemType varchar(255) null
	,supplierId varchar(255) not null
	,price varchar(255) not null
	,discount varchar(255) not null
	,specialPrice varchar(255) not null
	,startDate varchar(255) not null
	,endDate varchar(255) not null
	,createdDate varchar(255) not null
	,modifiedDate varchar(255) not null
	,viewType varchar(255) not null
	,displayIndex varchar(255) null
	,deleteFlag varchar(255) not null
	,vmid varchar(255) not null
	,keyName varchar(255) not null
	,gender varchar(255) not null
	,overdue varchar(255) not null
	,inactive varchar(255) null
	,DrugNameId varchar(255) not null
	,showPathologyDetail varchar(255) not null
	,vmsgexclude varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_items] primary key ([itemID])

	)

------------------------------

create table maintenance

	(
	Id varchar(255) not null
	,UserId varchar(255) not null
	,Msg varchar(255) null
	,Comments varchar(255) null
	,Discussion varchar(255) null
	,StatusFlag varchar(255) not null
	,Status varchar(255) null
	,CreateDate varchar(255) null
	,ModifyDate varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_maintenance] primary key ([Id])

	)

------------------------------

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

create table faxlogs

	(
	LogID varchar(255) not null
	,LoginID varchar(255) not null
	,DoctorID varchar(255) not null
	,PatientID varchar(255) not null
	,ToID varchar(255) null
	,ToName varchar(255) not null
	,ToFax varchar(255) not null
	,ToCompany varchar(255) not null
	,EncounterID varchar(255) null
	,FaxInitTime varchar(255) not null
	,Retry varchar(255) null
	,Status varchar(255) not null
	,faxdata varchar(255) not null
	,FaxStatus varchar(255) not null
	,SendDate varchar(255) null
	,FaxType varchar(255) null
	,FaxManLogID varchar(255) not null
	,FaxPrefix varchar(255) not null
	,FaxFile varchar(255) null
	,FaxTransaction varchar(255) null
	,RxIds varchar(255) null
	,FaxLogStatus varchar(255) not null
	,FaxLogBatch varchar(255) null
	,FacilityID varchar(255) not null
	,FacilityName varchar(255) not null
	,reminded varchar(255) null
	,remindedDate varchar(255) null
	,FaxCoverPage varchar(255) not null
	,FaxCoverPageID varchar(255) not null
	,FaxStatusMsg varchar(255) not null
	,FaxSubject varchar(255) not null
	,LoginName varchar(255) not null
	,scheduledDate varchar(255) null
	,sentnotification varchar(255) not null
	,OriginalFaxDoc varchar(255) null
	,FromName varchar(255) null
	,FromVoice varchar(255) null
	,fromcompany varchar(255) not null
	,FaxInitTime2 varchar(255) not null
	,isMsgSent varchar(255) not null
	,isTextMsgSent varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_faxlogs] primary key ([LogID])

	)

------------------------------

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

create table preventive

	(
	encounterID varchar(255) not null
	,catID varchar(255) not null
	,itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_preventive] primary key ([pid])

	)

------------------------------

create table printlogs

	(
	LogID varchar(255) not null
	,LoginID varchar(255) not null
	,DoctorID varchar(255) not null
	,PatientID varchar(255) not null
	,EncounterID varchar(255) null
	,PrintData varchar(255) not null
	,PrintDate varchar(255) not null
	,PrintType varchar(255) null
	,PrintTransaction varchar(255) null
	,RxList varchar(255) null
	,PrintLogStatus varchar(255) not null
	,PrintLogBatch varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_printlogs] primary key ([LogID])

	)

------------------------------

create table insurance

	(
	insId varchar(255) not null
	,insuranceName varchar(255) null
	,insurancephone varchar(255) null
	,insurancefax varchar(255) null
	,insuranceemail varchar(255) null
	,insuranceaddress varchar(255) null
	,insuranceaddress2 varchar(255) not null
	,insurancecity varchar(255) null
	,insurancestate varchar(255) null
	,insurancezip varchar(255) null
	,PayorId varchar(255) not null
	,ClaimOfficeNumber varchar(255) not null
	,ClaimOfficeNumberType varchar(255) not null
	,MedigapID varchar(255) not null
	,carrierCode varchar(255) not null
	,ProviderIdRef varchar(255) not null
	,TestProdIndicator varchar(255) not null
	,ANSI varchar(255) null
	,SendSVT varchar(255) null
	,SendDecimalUnit varchar(255) null
	,PaymentSrc varchar(255) not null
	,capitationplan varchar(255) not null
	,capitationpayment varchar(255) not null
	,deleteFlag varchar(255) not null
	,vmid varchar(255) not null
	,labcorpid varchar(255) null
	,website varchar(255) not null
	,Send2310EAlways varchar(255) not null
	,ClaimSubmitType varchar(255) not null
	,ERAPayorId varchar(255) not null
	,Inactive varchar(255) not null
	,AllCodesCapitated varchar(255) not null
	,SelCodesCapitated varchar(255) not null
	,ReqOrdPrInfo varchar(255) not null
	,sendDupSubNoForPat varchar(255) null
	,prodDateAsCheckDate varchar(255) null
	,ReqUPINInEA021 varchar(255) not null
	,hl7id1 varchar(255) null
	,hl7id2 varchar(255) null
	,insuranceclass varchar(255) null
	,InsTypeMedicare varchar(255) not null
	,InsTypeOthers varchar(255) not null
	,FeeSchedId varchar(255) null
	,SecClaimsElectronic varchar(255) not null
	,PrAssignInd varchar(255) not null
	,Notes varchar(255) null
	,Box31Format varchar(255) not null
	,Box17ProviderType varchar(255) not null
	,Box17ProviderIdType varchar(255) not null
	,Box17ProviderRuleEnabled varchar(255) not null
	,SendInsPinForSupr varchar(255) not null
	,insurancephone2 varchar(255) null
	,InsuranceType varchar(255) null
	,ClaimType varchar(255) not null
	,Box31Line2Format varchar(255) not null
	,sendSubDemAlways varchar(255) not null
	,SplitClaimOnICD varchar(255) not null
	,EnableReferralNumber varchar(255) not null
	,DoNotPrintHcfa29 varchar(255) not null
	,DoNotPrintHcfa30 varchar(255) not null
	,Box17ProviderIdTypeMap varchar(255) not null
	,McaidNYPlanCode varchar(255) not null
	,PrintHcfa22 varchar(255) not null
	,EnableSympDate varchar(255) not null
	,EnableSimilarSympDate varchar(255) not null
	,SupressFacAddrForPOS11Enic varchar(255) not null
	,UseNpi varchar(255) not null
	,UseLegacy varchar(255) null
	,x270payorId varchar(255) not null
	,UseGroupNoForEligibility varchar(255) not null
	,CalculateAllowed varchar(255) not null
	,SupressFacAddrForPOS11Paper varchar(255) not null
	,x270LegacyNPI varchar(255) not null
	,FirstLinePost varchar(255) not null
	,SubscriberMask varchar(255) not null
	,subscriberLength varchar(255) not null
	,CO42MapCode varchar(255) not null
	,PrintEPSDTReferralCodeInHcfa24C varchar(255) not null
	,SendStrictDOS varchar(255) not null
	,UseFacilityPrvForRendProv varchar(255) not null
	,sendP2ProvPrvAlways varchar(255) not null
	,RequiredReferral varchar(255) not null
	,FPStringMandatory varchar(255) not null
	,SubNoMaxLen varchar(255) not null
	,SubNoMinLen varchar(255) not null
	,SendOTAFSeg varchar(255) not null
	,HCFA_Box19 varchar(255) not null
	,SendGrpNoin2310B varchar(255) not null
	,Send2420CAlways varchar(255) not null
	,Send2420CIf2310DOmited varchar(255) not null
	,UseLegacyForPrint varchar(255) not null
	,InsuranceAlert varchar(255) null
	,UseNPIForPrint varchar(255) not null
	,FeeSchedulesByLocation varchar(255) not null
	,InsurancePrimaryType varchar(255) null
	,ExcludeInPtStmts varchar(255) null
	,UseExtendedPrvOption varchar(255) not null
	,Send2000APrv varchar(255) not null
	,Send2310BPrv varchar(255) not null
	,Send2420APrv varchar(255) not null
	,SuppressRefProvUPIN varchar(255) not null
	,SuppressTaxIdInLoop2310A varchar(255) not null
	,SuppressTaxIdInLoop2310B varchar(255) not null
	,SuppressTaxIdInLoop2420A varchar(255) not null
	,SuppressTaxIdInLoop2310DAnd2420C varchar(255) not null
	,SubmitPtPmts varchar(255) not null
	,SuppressPrvInLoop2310A varchar(255) not null
	,SuppressRendProvUPIN varchar(255) not null
	,SuppressSuperProvUPIN varchar(255) not null
	,SuppressOrderProvUPIN varchar(255) not null
	,SuppressPurchasedProvUPIN varchar(255) not null
	,SuppressServiceFacilityUPIN varchar(255) not null
	,SuppressTaxIdInLoop2310C varchar(255) not null
	,SuppressTaxIdInLoop2310E varchar(255) not null
	,SuppressTaxIdInLoop2420E varchar(255) not null
	,X270SendTrnAlways varchar(255) not null
	,X270CustomMapLegacy varchar(255) not null
	,SendOtafInPrimary varchar(255) not null
	,x270SendEbDateRange varchar(255) not null
	,x270SendPrv varchar(255) not null
	,x270SendEbAddlInfo varchar(255) not null
	,BestMatchCpt varchar(255) not null
	,DoNotAddSalesTax varchar(255) not null
	,enrollmentReq varchar(255) not null
	,CountryCode varchar(255) not null
	,NDCFormat varchar(255) null
	,X270SendDoi varchar(255) not null
	,X270SendDosAsDoi varchar(255) not null
	,SendHyphenInTaxId varchar(255) not null
	,IsAnesthesiaMinutesInHCFA varchar(255) not null
	,PrimaryTimelyFiling varchar(255) not null
	,SecondaryTimelyFiling varchar(255) not null
	,IsServiceLocationAddressinLoop2010AA varchar(255) not null
	,NoPrimaryOtafIn2400 varchar(255) not null
	,StripLeadingZeroFromMoney varchar(255) not null
	,SendMedicalRecordNumber varchar(255) not null
	,x270SendGroupNo varchar(255) not null
	,x270SendRelationShip varchar(255) not null
	,x270SendSSN varchar(255) not null
	,x270SendInsuredN4 varchar(255) not null
	,StripTrailingZerosFromMoney varchar(255) not null
	,insuranceNameANSI varchar(255) not null
	,HPSAQualify varchar(255) not null
	,PrintEPSDTDataInHcfa10d varchar(255) not null
	,ConsiderToothNumberAsModifier varchar(255) not null
	,DoNotAddFinanceChrg varchar(255) not null
	,CapitationType varchar(255) null
	,LiabilityCarrierCode varchar(255) not null
	,ecwMasterId varchar(255) not null
	,EnterpriseId varchar(255) not null
	,DoNotChangeClmAssgnmntAfterCapAdj varchar(255) not null
	,modifiedDate varchar(255) not null
	,AdditionalMask varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_insurance] primary key ([insId])

	)

------------------------------

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

create table labdatadetail

	(
	ReportId varchar(255) not null
	,PropId varchar(255) not null
	,Value varchar(255) null
	,importFlag varchar(255) not null
	,Id varchar(255) not null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,TestID varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labdatadetail] primary key ([Id])

	)

------------------------------

create table labdataex

	(
	reportId varchar(255) not null
	,HL7ResultDate varchar(255) null
	,HL7ResultTime varchar(255) null
	,urllink varchar(255) null
	,interfacestatus varchar(255) null
	,processedresult varchar(255) null
	,VisitType varchar(255) not null
	,DateReceived varchar(255) not null
	,resultrcvddatetime varchar(255) not null
	,MigrateFlag varchar(255) not null
	,SentOutReqNo varchar(255) not null
	,facilityId varchar(255) not null
	,specimenReceiveTime varchar(255) not null
	,specimenReceiveDate varchar(255) not null
	,isPACSLinkEnabled varchar(255) not null
	,observationDate varchar(255) not null
	,observationTime varchar(255) not null
	,SpecimenActionCode varchar(255) not null
	,PlacerGroupNumberID varchar(255) not null
	,PatientAltRace varchar(255) not null
	,bodysitecode varchar(255) not null
	,ABNPrompted varchar(255) not null
	,ABNOption varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labdataex] primary key ([reportId])

	)

------------------------------

create table lablist

	(
	ID varchar(255) not null
	,name varchar(255) not null
	,deleteFlag varchar(255) not null
	,LabId varchar(255) not null
	,labaddress varchar(255) not null
	,labaddress2 varchar(255) not null
	,labcity varchar(255) not null
	,labstate varchar(255) not null
	,labzip varchar(255) not null
	,labphone varchar(255) not null
	,labfax varchar(255) not null
	,labemail varchar(255) null
	,interfaceConfigured varchar(255) not null
	,sendoutboundresult varchar(255) null
	,labcompanyType varchar(255) not null
	,inHouseLab varchar(255) not null
	,ResultLabId varchar(255) not null
	,labCode varchar(255) not null
	,superhubInterfaceID varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_lablist] primary key ([ID])

	)

------------------------------

create table labloinccodes

	(
	itemid varchar(255) not null
	,code varchar(255) not null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,deleteflag varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labloinccodes] primary key ([itemid])

	)

------------------------------

create table language_codes

	(
	Name varchar(255) not null
	,Favorite varchar(255) null
	,Code varchar(255) null
	,LangID varchar(255) not null
	,isocode1 varchar(255) null
	,isocode2 varchar(255) null
	,isoname varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_language_codes] primary key ([LangID])

	)

------------------------------

create table letterlogs

	(
	Id varchar(255) not null
	,patientId varchar(255) not null
	,letterId varchar(255) not null
	,letterName varchar(255) not null
	,printedBy varchar(255) not null
	,date varchar(255) not null
	,time varchar(255) not null
	,categoryID varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_letterlogs] primary key ([Id])

	)

------------------------------

create table logptspecificdata

	(
	id varchar(255) not null
	,patientid varchar(255) not null
	,truserid varchar(255) not null
	,modified_date varchar(255) not null
	,modified_time varchar(255) not null
	,timestamp varchar(255) not null
	,status varchar(255) not null
	,truser_name varchar(255) not null
	,action varchar(255) not null
	,dataelementid varchar(255) not null
	,logptspecificid varchar(255) not null
	,itemid varchar(255) not null
	,encounterid varchar(255) not null
	,data varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_logptspecificdata] primary key ([id])

	)

------------------------------

create table oldrxdetail

	(
	OldRxId varchar(255) null
	,Prop varchar(255) not null
	,value varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_oldrxdetail] primary key ([Id])

	)

------------------------------

create table problemlist_ext

	(
	Id varchar(255) not null
	,PatientId varchar(255) not null
	,NKPFlag varchar(255) not null
	,NKPDate varchar(255) null
	,deleteFlag varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_problemlist_ext] primary key ([Id])

	)

------------------------------

create table loincmaster

	(
	LOINC_NUM varchar(255) not null
	,COMPONENT varchar(255) null
	,PROPERTY varchar(255) null
	,TIME_ASPCT varchar(255) null
	,SYSTEM varchar(255) null
	,SCALE_TYP varchar(255) null
	,METHOD_TYP varchar(255) null
	,RELAT_NMS varchar(255) null
	,CLASS varchar(255) null
	,SOURCE varchar(255) null
	,DT_LAST_CH varchar(255) null
	,CHNG_TYPE varchar(255) null
	,COMMENTS varchar(255) null
	,ANSWERLIST varchar(255) null
	,STATUS varchar(255) null
	,MAP_TO varchar(255) null
	,SCOPE varchar(255) null
	,CONSUMER_NAME varchar(255) null
	,IPCC_UNITS varchar(255) null
	,REFERENCE varchar(255) null
	,EXACT_CMP_SY varchar(255) null
	,MOLAR_MASS varchar(255) null
	,CLASSTYPE varchar(255) null
	,FORMULA varchar(255) null
	,SPECIES varchar(255) null
	,EXMPL_ANSWERS varchar(255) null
	,ACSSYM varchar(255) null
	,BASE_NAME varchar(255) null
	,FINAL varchar(255) null
	,NAACCR_ID varchar(255) null
	,CODE_TABLE varchar(255) null
	,SETROOT varchar(255) null
	,PanelElements varchar(255) null
	,SURVEY_QUEST_TEXT varchar(255) null
	,SURVEY_QUEST_SRC varchar(255) null
	,UnitsRequired varchar(255) null
	,SUBMITTED_UNITS varchar(255) null
	,RelatedNames2 varchar(255) null
	,SHORTNAME varchar(255) null
	,ORDER_OBS varchar(255) null
	,CDISC_COMMON_TESTS varchar(255) null
	,HL7_FIELD_SUBFIELD_ID varchar(255) null
	,EXTERNAL_COPYRIGHT_NOTICE varchar(255) null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,deleteflag varchar(255) not null
	,EXAMPLE_UNITS varchar(255) null
	,INPC_PERCENTAGE varchar(255) null
	,LONG_COMMON_NAME varchar(255) null
	,HL7_V2_DATATYPE varchar(255) null
	,HL7_V3_DATATYPE varchar(255) null
	,CURATED_RANGE_AND_UNITS varchar(255) null
	,DOCUMENT_SECTION varchar(255) null
	,DEFINITION_DESCRIPTION_HELP varchar(255) null
	,EXAMPLE_UCUM_UNITS varchar(255) null
	,EXAMPLE_SI_UCUM_UNITS varchar(255) null
	,STATUS_REASON varchar(255) null
	,STATUS_TEXT varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_loincmaster] primary key ([LOINC_NUM])

	)

------------------------------

create table patients

	(
	pid varchar(255) not null
	,ControlNo varchar(255) not null
	,employername varchar(255) not null
	,employeraddress varchar(255) null
	,employeraddress2 varchar(255) not null
	,employercity varchar(255) null
	,employerstate varchar(255) null
	,employerzip varchar(255) null
	,employerPhone varchar(255) null
	,msgflag varchar(255) null
	,insname varchar(255) null
	,insgroupno varchar(255) null
	,inssubscriberno varchar(255) null
	,inscopay varchar(255) null
	,pastHistory varchar(255) null
	,pharmacyname varchar(255) null
	,pharmacyno varchar(255) null
	,surgicalHistory varchar(255) null
	,hospitalization varchar(255) null
	,medications varchar(255) null
	,insname2 varchar(255) null
	,insgroupno2 varchar(255) null
	,inssubscriberno2 varchar(255) null
	,inscopay2 varchar(255) null
	,straddress varchar(255) null
	,city varchar(255) null
	,state varchar(255) null
	,zip varchar(255) null
	,doctorId varchar(255) not null
	,AttendingDoctorId varchar(255) not null
	,pharmacyFax varchar(255) null
	,pmcId varchar(255) null
	,insId varchar(255) null
	,insId2 varchar(255) null
	,maritalstatus varchar(255) not null
	,strAddress2 varchar(255) null
	,notes varchar(255) not null
	,deceased varchar(255) not null
	,deceasedDate varchar(255) not null
	,deceasedNotes varchar(255) not null
	,language varchar(255) not null
	,GrId varchar(255) not null
	,GrRel varchar(255) not null
	,IsGrPt varchar(255) not null
	,GrType varchar(255) not null
	,PrimIns varchar(255) not null
	,ResType varchar(255) not null
	,StudentStatus varchar(255) not null
	,EmpStatus varchar(255) not null
	,picFileName varchar(255) not null
	,RelInfo varchar(255) not null
	,RelInfoDate varchar(255) null
	,PayorType varchar(255) not null
	,SelfPay varchar(255) not null
	,hl7Id varchar(255) not null
	,BillingAlert varchar(255) not null
	,BillingAlertNotes varchar(255) not null
	,givenToColl varchar(255) not null
	,givenDate varchar(255) null
	,DefFeeSchId varchar(255) not null
	,race varchar(255) not null
	,PtStatus varchar(255) null
	,ptStmtDate varchar(255) null
	,refPrId varchar(255) null
	,rendPrId varchar(255) null
	,nostatements varchar(255) not null
	,CurrentCollectionStatus varchar(255) not null
	,CollectionTimestamp varchar(255) not null
	,interpretSvc varchar(255) null
	,GlobalAlert varchar(255) not null
	,characterestic varchar(255) not null
	,CollectionStageDate varchar(255) not null
	,regdate varchar(255) null
	,ethnicity varchar(255) null
	,vfc varchar(255) null
	,empId varchar(255) not null
	,irisenroll varchar(255) not null
	,CollectionAgencyStatus varchar(255) null
	,RxConsent varchar(255) null
	,acctbal varchar(255) null
	,CollStartStopDt varchar(255) null
	,MailOrderPharmacyId varchar(255) null
	,MOMemberId varchar(255) null
	,teamMember varchar(255) not null
	,bTranslator varchar(255) null
	,Address2Country varchar(255) not null
	,VoiceEnabled varchar(255) null
	,assignedtoId varchar(255) not null
	,assignedto varchar(255) not null
	,UseStreetAddressForRxFlag varchar(255) null
	,textenabled varchar(255) null
	,GrStmtDate varchar(255) null
	,msgCellflag varchar(255) null
	,enableEmail varchar(255) null
	,enableLetters varchar(255) null
	,webEnabledDate varchar(255) null
	,preset varchar(255) null
	,encpwd varchar(255) null
	,lognotes varchar(255) null
	,optout varchar(255) null
	,optreasonId varchar(255) null
	,IsMigratedRecord varchar(255) null
	,DefaultLab varchar(255) not null
	,DefaultDI varchar(255) not null
	,emailreasonId varchar(255) null
	,isKioskConsentReceived varchar(255) null
	,isPtOptsOut varchar(255) not null
	,secureMsgKey varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_patients] primary key ([pid])

	)

------------------------------

create table problemlist

	(
	patientId varchar(255) not null
	,encounterId varchar(255) not null
	,asmtId varchar(255) not null
	,specify varchar(255) not null
	,notes varchar(255) not null
	,deleteFlag varchar(255) not null
	,onsetdate varchar(255) null
	,userid varchar(255) not null
	,logdate varchar(255) not null
	,inactiveFlag varchar(255) not null
	,WUStatus varchar(255) not null
	,condition varchar(255) not null
	,SlNo varchar(255) not null
	,displayIndex varchar(255) not null
	,Risk varchar(255) not null
	,AddedDate varchar(255) not null
	,ProblemType varchar(255) not null
	,Resolved varchar(255) not null
	,resolvedon varchar(255) not null
	,SNOMED varchar(255) not null
	,SNOMEDDesc varchar(255) null
	,SNOMEDDescID varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_problemlist] primary key ([SlNo])

	)

------------------------------

create table procedurespl

	(
	encounterId varchar(255) not null
	,catID varchar(255) not null
	,itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,displayIndex varchar(255) not null
	,VALUE2 varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_procedurespl] primary key ([Id])

	)

------------------------------

create table progressnotes

	(
	encounterID varchar(255) not null
	,summary varchar(255) not null
	,xslId varchar(255) not null
	,unlocked varchar(255) not null
	,ModifyDate varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_progressnotes] primary key ([Id])

	)

------------------------------

create table properties

	(
	propID varchar(255) not null
	,name varchar(255) not null
	,description varchar(255) null
	,type varchar(255) null
	,viewtype varchar(255) null
	,size varchar(255) null
	,displayName varchar(255) null
	,pdetailID varchar(255) null
	,displayIndex varchar(255) null
	,delPropFlag varchar(255) not null
	,vmid varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_properties] primary key ([propID])

	)

------------------------------

create table pt_adv_directives

	(
	Id varchar(255) not null
	,PtId varchar(255) not null
	,Code varchar(255) not null
	,Name varchar(255) not null
	,MDate varchar(255) not null
	,delflag varchar(255) null
	,displayindex varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_pt_adv_directives] primary key ([Id])

	)

------------------------------

create table pt_emailreason

	(
	id varchar(255) not null
	,description varchar(255) null
	,delflag varchar(255) null
	,displayindex varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_pt_emailreason] primary key ([id])

	)

------------------------------

create table ref_attachments

	(
	id varchar(255) not null
	,RefId varchar(255) null
	,doctype varchar(255) not null
	,docId varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_ref_attachments] primary key ([id])

	)

------------------------------

create table referral

	(
	ReferralId varchar(255) not null
	,patientID varchar(255) not null
	,insId varchar(255) not null
	,refFrom varchar(255) not null
	,authNo varchar(255) not null
	,date varchar(255) not null
	,reason varchar(255) not null
	,diagnosis varchar(255) not null
	,refStDate varchar(255) not null
	,refEnddate varchar(255) not null
	,visitsAllowed varchar(255) not null
	,visitsUsed varchar(255) not null
	,RefTo varchar(255) not null
	,notes varchar(255) not null
	,deleteFlag varchar(255) not null
	,referralType varchar(255) not null
	,priority varchar(255) not null
	,assignedTo varchar(255) not null
	,assignedToId varchar(255) not null
	,status varchar(255) not null
	,authtype varchar(255) not null
	,procedures varchar(255) not null
	,fromfacility varchar(255) not null
	,ToFacility varchar(255) not null
	,speciality varchar(255) not null
	,POS varchar(255) not null
	,UnitType varchar(255) not null
	,FrontOfficeAuth varchar(255) null
	,ReferralNumber varchar(255) not null
	,apptDate varchar(255) not null
	,clinicalNotes varchar(255) null
	,ReceivedDate varchar(255) not null
	,refEncId varchar(255) not null
	,ApptTime varchar(255) not null
	,extNHXApptBlockId varchar(255) not null
	,extNHXRefTxId varchar(255) not null
	,refReqId varchar(255) not null
	,refFromP2pNPI varchar(255) not null
	,refFromName varchar(255) not null
	,refToP2pNPI varchar(255) not null
	,refToName varchar(255) not null
	,uploadedToPtDocs varchar(255) not null
	,modifiedDate varchar(255) not null
	,refToCCNameList varchar(255) null
	,refToCCNPIList varchar(255) null
	,p2pDeliveryStatus varchar(255) null
	,statusUpdateDate varchar(255) not null
	,ccdaValidationStatus varchar(255) null
	,fromDirectAddress varchar(255) not null
	,toDirectAddress varchar(255) not null
	,toDirectAddress1 varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_referral] primary key ([ReferralId])

	)

------------------------------

create table social

	(
	encounterID varchar(255) not null
	,catID varchar(255) not null
	,itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_social] primary key ([ID])

	)

------------------------------

create table structdatadetail

	(
	Id varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,name varchar(255) not null
	,type varchar(255) not null
	,mandatory varchar(255) not null
	,displayIndex varchar(255) not null
	,deleteFlag varchar(255) not null
	,parentId varchar(255) not null
	,triggerflag varchar(255) not null
	,itemType varchar(255) not null
	,nodeLevel varchar(255) not null
	,tblName varchar(255) not null
	,chartDisplay varchar(255) null
	,multiSelect varchar(255) not null
	,IsSearchable varchar(255) null
	,defaultValue varchar(255) null
	,defaultValueId varchar(255) null
	,modifynotes varchar(255) null
	,readonly varchar(255) null
	,dropdown varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structdatadetail] primary key ([Id])

	)

------------------------------

create table structexam

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,displayIndex varchar(255) not null
	,chartdisplay varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structexam] primary key ([Id])

	)

------------------------------

create table smsmsglogs

	(
	ID varchar(255) not null
	,ToSMSName varchar(255) null
	,ToSMSNumber varchar(255) null
	,ToSMSProvider varchar(255) null
	,Retry varchar(255) null
	,SMSMessageID varchar(255) null
	,SMSMESSAGEBODY varchar(255) null
	,SmsMessageStatus varchar(255) null
	,smsMessageType varchar(255) null
	,SMSSubject varchar(255) null
	,sentdate varchar(255) not null
	,SentTime varchar(255) null
	,ScheduledDate varchar(255) null
	,ScheduledTime varchar(255) null
	,FromSMSName varchar(255) null
	,FromSMSNumber varchar(255) null
	,FromSMSProvider varchar(255) null
	,ClientId varchar(255) null
	,Priority varchar(255) null
	,EcwWebSMSUser varchar(255) null
	,ErrorId varchar(255) null
	,ErrorMsg varchar(255) null
	,DateCreated varchar(255) not null
	,isDeleted varchar(255) null
	,EncounterID varchar(255) null
	,LabID varchar(255) null
	,PatientId varchar(255) null
	,FacilityId varchar(255) null
	,PtStatementId varchar(255) null
	,Language varchar(255) null
	,SMSMsgUser varchar(255) null
	,SMSMsgPwd varchar(255) null
	,AppServMachineName varchar(255) null
	,AppServMachineIP varchar(255) null
	,AppServMacAddr varchar(255) null
	,SentByLastName varchar(255) null
	,SentByFirstName varchar(255) not null
	,SentBy varchar(255) null
	,VendorMsgId varchar(255) null
	,VendorSMSresponse varchar(255) null
	,TemplateId varchar(255) null
	,uploadlocation varchar(255) null
	,DoctorId varchar(255) null
	,RequiredConfirm varchar(255) null
	,ConfirmNumber varchar(255) null
	,smsmsgreply varchar(255) null
	,smsmsgreply_id varchar(255) null
	,parentid varchar(255) not null
	,ActualMessage varchar(255) null
	,ResourceId varchar(255) not null
	,msgSource varchar(255) null
	,ecwversion varchar(255) null
	,ecmversion varchar(255) null
	,AutoUpgradeKey varchar(255) null
	,FaxLogId varchar(255) null
	,eRxReqID varchar(255) null
	,eRxReFillReqID varchar(255) null
	,campaignid varchar(255) not null
	,campaign varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_smsmsglogs] primary key ([ID])

	)

------------------------------

create table structhpi

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) not null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,chartdisplay varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structhpi] primary key ([Id])

	)

------------------------------

create table structpreventive

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,chartdisplay varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structpreventive] primary key ([Id])

	)

------------------------------

create table structsocialhistory

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,chartdisplay varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structsocialhistory] primary key ([Id])

	)

------------------------------

create table surescript_eprescription

	(
	ReqID varchar(255) not null
	,RxType varchar(255) null
	,MessageID varchar(255) null
	,RelatedMessageID varchar(255) null
	,SentTo varchar(255) null
	,SentFrom varchar(255) null
	,SentTime varchar(255) null
	,MessageText varchar(255) null
	,StatusDesc varchar(255) null
	,AttemptNo varchar(255) null
	,LastAttemptTimeStamp varchar(255) null
	,PatientID varchar(255) not null
	,encounterID varchar(255) null
	,Patient_FName varchar(255) null
	,Patient_LName varchar(255) null
	,Patient_MName varchar(255) null
	,DateOfBirth varchar(255) null
	,Sex varchar(255) null
	,Ssn varchar(255) null
	,AddressLine1 varchar(255) null
	,AddressLine2 varchar(255) null
	,City varchar(255) null
	,State varchar(255) null
	,ZipCode varchar(255) null
	,Patient_PrimaryPhone varchar(255) null
	,Patient_CellPhone varchar(255) null
	,Patient_Fax varchar(255) null
	,Patient_Email varchar(255) null
	,DoctorID varchar(255) not null
	,SPI varchar(255) null
	,StateLicenseNumber varchar(255) null
	,doc_ssn varchar(255) null
	,DEANo varchar(255) null
	,doc_FName varchar(255) null
	,doc_LName varchar(255) null
	,doc_MName varchar(255) null
	,doc_suffix varchar(255) null
	,Speciality varchar(255) null
	,SpecialityCode varchar(255) null
	,doc_AddressLine1 varchar(255) null
	,doc_AddressLine2 varchar(255) null
	,doc_City varchar(255) null
	,doc_State varchar(255) null
	,doc_Zipcode varchar(255) null
	,doc_Primaryphone varchar(255) null
	,doc_Pagerno varchar(255) null
	,doc_Mobilephone varchar(255) null
	,PharmacyID varchar(255) not null
	,NCPDPID varchar(255) null
	,PharmacyName varchar(255) null
	,Pharmacy_AddressLine1 varchar(255) null
	,Pharmacy_City varchar(255) null
	,Pharmacy_State varchar(255) null
	,Pharmacy_Zipcode varchar(255) null
	,Pharmacy_Phone varchar(255) null
	,Pharmacy_Fax varchar(255) null
	,Pharmacy_Email varchar(255) null
	,DrugDescription varchar(255) null
	,ProductCode varchar(255) null
	,ProductCodeQualifier varchar(255) null
	,DosageForm varchar(255) null
	,Strength varchar(255) null
	,StrengthUnits varchar(255) null
	,DrugDBCode varchar(255) null
	,DrugDBCodeQualifier varchar(255) null
	,Frequency varchar(255) null
	,duration varchar(255) null
	,Quantity varchar(255) null
	,Take varchar(255) null
	,Refills varchar(255) null
	,SubsMedAllowed varchar(255) null
	,Comments varchar(255) null
	,XMLData varchar(255) null
	,XMLResponseData varchar(255) null
	,RefillsQualifier varchar(255) null
	,bAsynMsgPostedToDoc varchar(255) null
	,bVerified varchar(255) null
	,ScriptVersion varchar(255) null
	,SentBy varchar(255) null
	,RxhubId varchar(255) null
	,RouteSource varchar(255) not null
	,Addressed varchar(255) null
	,AddressedBy varchar(255) null
	,PrescriberOrderNo varchar(255) null
	,SentById varchar(255) null
	,IpAddress varchar(255) null
	,isVoiceMsgSent varchar(255) not null
	,isTextMsgSent varchar(255) null
	,rxOrderNo varchar(255) null
	,DEASchedule varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_surescript_eprescription] primary key ([ReqID])

	)

------------------------------

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

create table users

	(
	uid varchar(255) not null
	,uname varchar(255) not null
	,upwd varchar(255) null
	,udesc varchar(255) null
	,uroomno varchar(255) not null
	,umobileno varchar(255) not null
	,upagerno varchar(255) not null
	,ufname varchar(255) null
	,uminitial varchar(255) null
	,ulname varchar(255) null
	,uemail varchar(255) null
	,uwebpage varchar(255) null
	,upaddress varchar(255) null
	,upcity varchar(255) not null
	,upstate varchar(255) null
	,upPhone varchar(255) null
	,UserType varchar(255) null
	,zipcode varchar(255) null
	,dob varchar(255) null
	,ssn varchar(255) null
	,mflag varchar(255) null
	,updid varchar(255) null
	,cdate varchar(255) null
	,mdate varchar(255) not null
	,sex varchar(255) null
	,upaddress2 varchar(255) null
	,suffix varchar(255) null
	,prefix varchar(255) null
	,initials varchar(255) not null
	,ptDob varchar(255) not null
	,delFlag varchar(255) not null
	,vmid varchar(255) not null
	,status varchar(255) null
	,webenabled varchar(255) null
	,websync varchar(255) null
	,changePass varchar(255) null
	,primaryservicelocation varchar(255) not null
	,upreviousname varchar(255) null
	,IsResource varchar(255) not null
	,EligibilityStatus varchar(255) not null
	,OSUUserType varchar(255) not null
	,DefApptProvForResource varchar(255) not null
	,locked varchar(255) null
	,EncEligibilityStatus2 varchar(255) not null
	,EligibilityMessage2 varchar(255) not null
	,EncEligibilityStatus3 varchar(255) not null
	,EligibilityMessage3 varchar(255) not null
	,EncEligibilityStatus varchar(255) not null
	,EligibilityMessage varchar(255) not null
	,AllFacilities varchar(255) not null
	,Emrsex varchar(255) not null
	,CountryCode varchar(255) not null
	,transgender varchar(255) not null
	,EnterpriseId varchar(255) not null
	,gestationalAge varchar(255) not null
	,timeofbirth varchar(255) null
	,LANGUAGE varchar(255) not null
	,county varchar(255) not null
	,isCredentialed varchar(255) null
	,EncEligibilityStatus4 varchar(255) not null
	,EligibilityMessage4 varchar(255) not null
	,ACOUserType varchar(255) not null
	,credentialschange varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_users] primary key ([uid])

	)

------------------------------

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

create table visitsummarylog

	(
	id varchar(255) not null
	,encId varchar(255) null
	,uid varchar(255) null
	,requestDate varchar(255) null
	,requestedBy varchar(255) null
	,vsdata varchar(255) null
	,status varchar(255) null
	,loggedfrom varchar(255) not null
	,ccddata varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_visitsummarylog] primary key ([id])

	)

------------------------------

create table vitals

	(
	encounterID varchar(255) not null
	,vitalID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) not null
	,Id varchar(255) not null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,defaultValue varchar(255) not null
	,valueHtm varchar(255) not null
	,value2 varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_vitals] primary key ([Id])

	)

------------------------------

create table voicemsglogs

	(
	ID varchar(255) not null
	,ToName varchar(255) null
	,ContactType varchar(255) null
	,ToPhone varchar(255) null
	,Retry varchar(255) null
	,voiceMessageStatus varchar(255) null
	,SentDate varchar(255) null
	,Priority varchar(255) null
	,VoiceMessageType varchar(255) null
	,VoiceMessageLiveText varchar(255) null
	,VoiceMessageLiveAudio varchar(255) null
	,VoiceMessageMachineText varchar(255) null
	,VoiceMessageMachineAudio varchar(255) null
	,InitialGreetingAudio varchar(255) null
	,VoiceMessageId varchar(255) null
	,Date_Created varchar(255) not null
	,Date_Modified varchar(255) null
	,isDeleted varchar(255) null
	,StatusMsg varchar(255) null
	,CallerIDNumber varchar(255) null
	,InitialGreetingAudioText varchar(255) null
	,OtherContactType varchar(255) null
	,EncounterID varchar(255) null
	,MaxLiveReplays varchar(255) null
	,OperatorNumber varchar(255) null
	,ConfirmationStatus varchar(255) null
	,DeliveryType varchar(255) null
	,ErrorMsg varchar(255) null
	,LabID varchar(255) not null
	,ConfirmCancelEnabled varchar(255) null
	,PatientId varchar(255) null
	,PtStatementId varchar(255) null
	,Language varchar(255) null
	,ScheduledDate varchar(255) not null
	,ScheduledTime varchar(255) not null
	,SentByLastName varchar(255) not null
	,SentByFirstName varchar(255) not null
	,SentBy varchar(255) not null
	,FacilityId varchar(255) not null
	,SentTime varchar(255) not null
	,uploadLocation varchar(255) null
	,TTSVoice varchar(255) null
	,VMsgUser varchar(255) null
	,VMsgPwd varchar(255) null
	,AppServMachineName varchar(255) null
	,AppServMachineIP varchar(255) null
	,parentid varchar(255) null
	,recordurl varchar(255) null
	,StatusDetail varchar(255) null
	,ResourceId varchar(255) not null
	,recordedMessageId varchar(255) null
	,ecwVersion varchar(255) null
	,ecmVersion varchar(255) null
	,timeZone varchar(255) null
	,retryfailedmsg varchar(255) not null
	,ApptStatus varchar(255) null
	,ivrvalue varchar(255) not null
	,AutoUpgradeKey varchar(255) null
	,OtherContactNumbers varchar(255) null
	,ErrorCode varchar(255) not null
	,MsgExpireTime varchar(255) null
	,PtPin varchar(255) not null
	,PtPinType varchar(255) null
	,isMsgSecured varchar(255) not null
	,msgSource varchar(255) null
	,providerGreetingsUid varchar(255) null
	,ClientResponse varchar(255) not null
	,messageJobType varchar(255) not null
	,FaxLogId varchar(255) not null
	,eRxReqID varchar(255) not null
	,eRxReFillReqID varchar(255) not null
	,providerid varchar(255) not null
	,campaignid varchar(255) not null
	,campaign varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_voicemsglogs] primary key ([ID])

	)

------------------------------
create table alertdata

	(
	Id varchar(255) not null
	,PatientId varchar(255) not null
	,MeasureId varchar(255) not null
	,MeasureName varchar(255) not null
	,ItemId varchar(255) not null
	,Frequency varchar(255) not null
	,LastDone varchar(255) not null
	,DueDate varchar(255) not null
	,Value varchar(255) not null
	,controlstatus varchar(255) not null
	,RegistryAlert varchar(255) not null
	,labReceived varchar(255) not null
	,mdate varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_alertdata] primary key ([Id])

	)

------------------------------

create table alertoverride

	(
	Id varchar(255) not null
	,PatientId varchar(255) not null
	,MeasureId varchar(255) not null
	,DueDate varchar(255) null
	,NeverRemind varchar(255) not null
	,Reason varchar(255) null
	,status varchar(255) not null
	,statusLabel varchar(255) not null
	,reset varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_alertoverride] primary key ([Id])

	)

------------------------------

create table allergies

	(
	patientID varchar(255) not null
	,drug varchar(255) null
	,allergy varchar(255) not null
	,encounterId varchar(255) null
	,itemID varchar(255) null
	,displayIndex varchar(255) null
	,SMDamConceptID varchar(255) null
	,SMDamConceptIDDesc varchar(255) null
	,ndc_code varchar(255) null
	,allergytype varchar(255) not null
	,type varchar(255) not null
	,status varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_allergies] primary key ([Id])

	)

------------------------------

create table billingdata

	(
	Id varchar(255) not null
	,EncounterId varchar(255) not null
	,itemID varchar(255) not null
	,date varchar(255) null
	,endDate varchar(255) null
	,endData varchar(255) null
	,providerId varchar(255) not null
	,Notes varchar(255) null
	,displayIndex varchar(255) null
	,deleteFlag varchar(255) not null
	,Mod1 varchar(255) not null
	,Mod2 varchar(255) not null
	,Mod3 varchar(255) not null
	,units varchar(255) not null
	,codeFlag varchar(255) not null
	,Icd1 varchar(255) not null
	,Icd2 varchar(255) not null
	,Icd3 varchar(255) not null
	,Icd4 varchar(255) not null
	,icdcode1 varchar(255) not null
	,icdcode2 varchar(255) not null
	,icdcode3 varchar(255) not null
	,icdcode4 varchar(255) not null
	,vitalCpt varchar(255) not null
	,Mod4 varchar(255) not null
	,ToothNumber varchar(255) not null
	,Surface varchar(255) not null
	,documentedTime varchar(255) null
	,ndccode varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_billingdata] primary key ([Id])

	)

------------------------------

create table contacts

	(
	contactId varchar(255) not null
	,pid varchar(255) not null
	,name varchar(255) not null
	,relation varchar(255) not null
	,address varchar(255) not null
	,address2 varchar(255) not null
	,city varchar(255) not null
	,state varchar(255) not null
	,zipcode varchar(255) not null
	,homePhone varchar(255) not null
	,workPhone varchar(255) not null
	,vmid varchar(255) not null
	,delflag varchar(255) not null
	,Lname varchar(255) not null
	,Fname varchar(255) not null
	,MI varchar(255) null
	,Guardian varchar(255) null
	,RelatedPtId varchar(255) not null
	,HExt varchar(255) not null
	,WExt varchar(255) not null
	,Type1 varchar(255) not null
	,Type2 varchar(255) not null
	,Fax varchar(255) not null
	,Email varchar(255) not null
	,Notes varchar(255) not null
	,Hippa varchar(255) null
	,displayorder varchar(255) null
	,maidenname varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_contacts] primary key ([contactId])

	)

------------------------------

create table diagnosis

	(
	EncounterId varchar(255) not null
	,ItemId varchar(255) null
	,PrimaryAsmt varchar(255) null
	,Specify varchar(255) null
	,Notes varchar(255) null
	,displayIndex varchar(255) null
	,axis varchar(255) not null
	,AsmtOnsetDate varchar(255) null
	,SlNo varchar(255) not null
	,websync varchar(255) null
	,Risk varchar(255) not null
	,SNOMED varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_diagnosis] primary key ([SlNo])

	)

------------------------------

create table edi_employmentstatus

	(
	Code varchar(255) not null
	,Name varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_edi_employmentstatus] primary key ([doctorID])

	)

------------------------------

create table edi_speciality

	(
	Id varchar(255) not null
	,Speciality varchar(255) not null
	,Code varchar(255) not null
	,deleteFlag varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_edi_speciality] primary key ([Id])

	)

------------------------------

create table encounter

	(
	encounterID varchar(255) not null
	,doctorID varchar(255) not null
	,patientID varchar(255) not null
	,date varchar(255) null
	,time varchar(255) null
	,reason varchar(255) null
	,visitType varchar(255) null
	,roomno varchar(255) null
	,status varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_encounter] primary key ([encounterID])

	)

------------------------------

create table ethnicity

	(
	Code varchar(255) null
	,Name varchar(255) null
	,EthId varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_ethnicity] primary key ([EthId])

	)

------------------------------

create table familydata

	(
	encounterID varchar(255) not null
	,itemID varchar(255) not null
	,name varchar(255) null
	,status varchar(255) null
	,age varchar(255) null
	,dob varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_familydata] primary key ([EthId])

	)

------------------------------

create table immunizationstatus

	(
	Id varchar(255) not null
	,ImmStatusId varchar(255) not null
	,CODE varchar(255) null
	,Description varchar(255) not null
	,TYPE varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_immunizationstatus] primary key ([Id])

	)

------------------------------

create table itemdetail

	(
	itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_itemdetail] primary key ([Id])

	)

------------------------------

create table labcptmap

	(
	labCode varchar(255) null
	,cptCode varchar(255) null
	,Id varchar(255) not null
	,CptItemId varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labcptmap] primary key ([Id])

	)

------------------------------

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

create table edi_facilities

	(
	Id varchar(255) not null
	,FacilityType varchar(255) not null
	,Name varchar(255) not null
	,AddressLine1 varchar(255) not null
	,AddressLine2 varchar(255) not null
	,City varchar(255) not null
	,State varchar(255) not null
	,Zip varchar(255) not null
	,Tel varchar(255) not null
	,Fax varchar(255) not null
	,EMail varchar(255) not null
	,BillingAddressLine1 varchar(255) not null
	,BillingAddressLine2 varchar(255) not null
	,BillingCity varchar(255) not null
	,BillingState varchar(255) not null
	,BillingZip varchar(255) not null
	,BillingTel varchar(255) not null
	,BillingFax varchar(255) not null
	,BillingEMail varchar(255) not null
	,PracticeType varchar(255) not null
	,PracticeOption varchar(255) not null
	,PayableTo varchar(255) not null
	,BankAccount varchar(255) not null
	,FederalTaxID varchar(255) not null
	,Notes varchar(255) not null
	,PrimaryFacility varchar(255) not null
	,CliaId varchar(255) not null
	,code varchar(255) not null
	,POS varchar(255) not null
	,MammoCertId varchar(255) not null
	,HPSAFlag varchar(255) not null
	,HPSAModifier varchar(255) not null
	,DeleteFlag varchar(255) not null
	,vmid varchar(255) not null
	,hl7id varchar(255) not null
	,Color varchar(255) null
	,FeeSchedule varchar(255) not null
	,FacilityIdType varchar(255) not null
	,PtStmtFacOption varchar(255) not null
	,PtStmtFacId varchar(255) not null
	,RestrictPrintAppts varchar(255) null
	,NPI varchar(255) not null
	,ImmStateId varchar(255) not null
	,TaxonomyCode varchar(255) not null
	,RestrictPrintStmts varchar(255) not null
	,startedOn varchar(255) null
	,RevenueCode varchar(255) null
	,Percent varchar(255) not null
	,OverrideSalesTax varchar(255) not null
	,MerchantID varchar(255) not null
	,ImmLocationId varchar(255) not null
	,TimeZoneCode varchar(255) null
	,MessCallerId varchar(255) null
	,MessOperNum varchar(255) null
	,CreditCardOption varchar(255) not null
	,CountryCode varchar(255) not null
	,BillingCountryCode varchar(255) not null
	,Immfacid varchar(255) null
	,BillType varchar(255) not null
	,takeNewPortalAppts varchar(255) null
	,portal_name varchar(255) null
	,takenewportalmsg varchar(255) null
	,showinpi varchar(255) null
	,modifiedDate varchar(255) not null
	,nsexclude varchar(255) not null
	,facilitysmsname varchar(255) not null
	,birthdayexclude varchar(255) not null
	,ASC_TN_FacilityType varchar(255) null
	,ASC_TN_FacilityId varchar(255) null
	,facilitynickname varchar(255) null
	,exclude varchar(255) not null
	,labexclude varchar(255) not null
	,ASC_WI_FacilityType varchar(255) null
	,rxexclude varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_edi_facilities] primary key ([Id])

	)

------------------------------

create table familyhxdetails

	(
	encounterId varchar(255) not null
	,itemId varchar(255) not null
	,icdItemid varchar(255) not null
	,icdCode varchar(255) not null
	,icdDesc varchar(255) not null
	,snomedCode varchar(255) not null
	,diagnosedYear varchar(255) not null
	,diagnosedAge varchar(255) not null
	,name varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_familyhxdetails] primary key ([EthId])

	)

------------------------------

create table hl7labdatadetail

	(
	ReportId varchar(255) not null
	,NAME varchar(255) not null
	,value varchar(255) not null
	,units varchar(255) not null
	,range varchar(255) not null
	,flag varchar(255) not null
	,notes varchar(255) not null
	,resultStatus varchar(255) not null
	,labId varchar(255) not null
	,hl7id varchar(255) null
	,profileid varchar(255) not null
	,serialno varchar(255) not null
	,obrcode varchar(255) not null
	,corrreportno varchar(255) not null
	,performingSiteId varchar(255) not null
	,prevvalue varchar(255) null
	,AttrResultDate varchar(255) null
	,AttrResultTime varchar(255) null
	,obsubid varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_hl7labdatadetail] primary key ([LogID])

	)

------------------------------

create table enc

	(
	encounterID varchar(255) not null
	,patientID varchar(255) not null
	,doctorID varchar(255) not null
	,date varchar(255) null
	,time varchar(255) null
	,startTime varchar(255) null
	,endTime varchar(255) null
	,reason varchar(255) null
	,VisitType varchar(255) null
	,roomNo varchar(255) null
	,STATUS varchar(255) not null
	,deleteFlag varchar(255) null
	,encType varchar(255) null
	,encLock varchar(255) null
	,Notes varchar(255) null
	,generalNotes varchar(255) not null
	,vmid varchar(255) not null
	,facilityId varchar(255) null
	,POS varchar(255) not null
	,arrivedTime varchar(255) not null
	,timeIn varchar(255) not null
	,timeOut varchar(255) not null
	,stsAfterArr varchar(255) not null
	,depTime varchar(255) not null
	,stsAfterChkIn varchar(255) not null
	,HL7Id varchar(255) not null
	,newPt varchar(255) not null
	,Dx varchar(255) not null
	,reminded varchar(255) null
	,remindedDate varchar(255) null
	,VisitCopay varchar(255) not null
	,CopayChanged varchar(255) not null
	,ClaimRequired varchar(255) not null
	,ClaimReq varchar(255) not null
	,VisitTypeOverriden varchar(255) null
	,refPrName varchar(255) null
	,refPrId varchar(255) null
	,PSACGroup varchar(255) null
	,deptid varchar(255) null
	,ResourceId varchar(255) not null
	,EncEligibilityStatus varchar(255) not null
	,EligibilityMessage varchar(255) not null
	,InvoiceId varchar(255) not null
	,EligSubId varchar(255) not null
	,EncEligibilityStatus2 varchar(255) not null
	,EligibilityMessage2 varchar(255) not null
	,EncEligibilityStatus3 varchar(255) not null
	,EligibilityMessage3 varchar(255) not null
	,trans_dictation varchar(255) null
	,waitTime varchar(255) null
	,websync varchar(255) null
	,dateIn varchar(255) null
	,dateOut varchar(255) null
	,notesDoneTime varchar(255) null
	,notesLoginId varchar(255) null
	,notesLogOutId varchar(255) null
	,visittypeid varchar(255) null
	,UTCStartTime varchar(255) null
	,UTCEndTime varchar(255) null
	,visitstscodeid varchar(255) not null
	,practiceId varchar(255) not null
	,immnotessendstatus varchar(255) null
	,transitionofcare varchar(255) null
	,prNotesSendStatus varchar(255) not null
	,readytobill varchar(255) not null
	,reviewbeforebill varchar(255) not null
	,EncEligibilityStatus4 varchar(255) not null
	,EligibilityMessage4 varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_enc] primary key ([encounterID])

	)

------------------------------

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

create table items

	(
	itemID varchar(255) not null
	,itemName varchar(255) not null
	,itemDesc varchar(255) not null
	,parentID varchar(255) not null
	,xmlPath varchar(255) not null
	,xslPath varchar(255) not null
	,itemType varchar(255) null
	,supplierId varchar(255) not null
	,price varchar(255) not null
	,discount varchar(255) not null
	,specialPrice varchar(255) not null
	,startDate varchar(255) not null
	,endDate varchar(255) not null
	,createdDate varchar(255) not null
	,modifiedDate varchar(255) not null
	,viewType varchar(255) not null
	,displayIndex varchar(255) null
	,deleteFlag varchar(255) not null
	,vmid varchar(255) not null
	,keyName varchar(255) not null
	,gender varchar(255) not null
	,overdue varchar(255) not null
	,inactive varchar(255) null
	,DrugNameId varchar(255) not null
	,showPathologyDetail varchar(255) not null
	,vmsgexclude varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_items] primary key ([itemID])

	)

------------------------------

create table maintenance

	(
	Id varchar(255) not null
	,UserId varchar(255) not null
	,Msg varchar(255) null
	,Comments varchar(255) null
	,Discussion varchar(255) null
	,StatusFlag varchar(255) not null
	,Status varchar(255) null
	,CreateDate varchar(255) null
	,ModifyDate varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_maintenance] primary key ([Id])

	)

------------------------------

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

create table faxlogs

	(
	LogID varchar(255) not null
	,LoginID varchar(255) not null
	,DoctorID varchar(255) not null
	,PatientID varchar(255) not null
	,ToID varchar(255) null
	,ToName varchar(255) not null
	,ToFax varchar(255) not null
	,ToCompany varchar(255) not null
	,EncounterID varchar(255) null
	,FaxInitTime varchar(255) not null
	,Retry varchar(255) null
	,Status varchar(255) not null
	,faxdata varchar(255) not null
	,FaxStatus varchar(255) not null
	,SendDate varchar(255) null
	,FaxType varchar(255) null
	,FaxManLogID varchar(255) not null
	,FaxPrefix varchar(255) not null
	,FaxFile varchar(255) null
	,FaxTransaction varchar(255) null
	,RxIds varchar(255) null
	,FaxLogStatus varchar(255) not null
	,FaxLogBatch varchar(255) null
	,FacilityID varchar(255) not null
	,FacilityName varchar(255) not null
	,reminded varchar(255) null
	,remindedDate varchar(255) null
	,FaxCoverPage varchar(255) not null
	,FaxCoverPageID varchar(255) not null
	,FaxStatusMsg varchar(255) not null
	,FaxSubject varchar(255) not null
	,LoginName varchar(255) not null
	,scheduledDate varchar(255) null
	,sentnotification varchar(255) not null
	,OriginalFaxDoc varchar(255) null
	,FromName varchar(255) null
	,FromVoice varchar(255) null
	,fromcompany varchar(255) not null
	,FaxInitTime2 varchar(255) not null
	,isMsgSent varchar(255) not null
	,isTextMsgSent varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_faxlogs] primary key ([LogID])

	)

------------------------------

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

create table preventive

	(
	encounterID varchar(255) not null
	,catID varchar(255) not null
	,itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_preventive] primary key ([pid])

	)

------------------------------

create table printlogs

	(
	LogID varchar(255) not null
	,LoginID varchar(255) not null
	,DoctorID varchar(255) not null
	,PatientID varchar(255) not null
	,EncounterID varchar(255) null
	,PrintData varchar(255) not null
	,PrintDate varchar(255) not null
	,PrintType varchar(255) null
	,PrintTransaction varchar(255) null
	,RxList varchar(255) null
	,PrintLogStatus varchar(255) not null
	,PrintLogBatch varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_printlogs] primary key ([LogID])

	)

------------------------------

create table insurance

	(
	insId varchar(255) not null
	,insuranceName varchar(255) null
	,insurancephone varchar(255) null
	,insurancefax varchar(255) null
	,insuranceemail varchar(255) null
	,insuranceaddress varchar(255) null
	,insuranceaddress2 varchar(255) not null
	,insurancecity varchar(255) null
	,insurancestate varchar(255) null
	,insurancezip varchar(255) null
	,PayorId varchar(255) not null
	,ClaimOfficeNumber varchar(255) not null
	,ClaimOfficeNumberType varchar(255) not null
	,MedigapID varchar(255) not null
	,carrierCode varchar(255) not null
	,ProviderIdRef varchar(255) not null
	,TestProdIndicator varchar(255) not null
	,ANSI varchar(255) null
	,SendSVT varchar(255) null
	,SendDecimalUnit varchar(255) null
	,PaymentSrc varchar(255) not null
	,capitationplan varchar(255) not null
	,capitationpayment varchar(255) not null
	,deleteFlag varchar(255) not null
	,vmid varchar(255) not null
	,labcorpid varchar(255) null
	,website varchar(255) not null
	,Send2310EAlways varchar(255) not null
	,ClaimSubmitType varchar(255) not null
	,ERAPayorId varchar(255) not null
	,Inactive varchar(255) not null
	,AllCodesCapitated varchar(255) not null
	,SelCodesCapitated varchar(255) not null
	,ReqOrdPrInfo varchar(255) not null
	,sendDupSubNoForPat varchar(255) null
	,prodDateAsCheckDate varchar(255) null
	,ReqUPINInEA021 varchar(255) not null
	,hl7id1 varchar(255) null
	,hl7id2 varchar(255) null
	,insuranceclass varchar(255) null
	,InsTypeMedicare varchar(255) not null
	,InsTypeOthers varchar(255) not null
	,FeeSchedId varchar(255) null
	,SecClaimsElectronic varchar(255) not null
	,PrAssignInd varchar(255) not null
	,Notes varchar(255) null
	,Box31Format varchar(255) not null
	,Box17ProviderType varchar(255) not null
	,Box17ProviderIdType varchar(255) not null
	,Box17ProviderRuleEnabled varchar(255) not null
	,SendInsPinForSupr varchar(255) not null
	,insurancephone2 varchar(255) null
	,InsuranceType varchar(255) null
	,ClaimType varchar(255) not null
	,Box31Line2Format varchar(255) not null
	,sendSubDemAlways varchar(255) not null
	,SplitClaimOnICD varchar(255) not null
	,EnableReferralNumber varchar(255) not null
	,DoNotPrintHcfa29 varchar(255) not null
	,DoNotPrintHcfa30 varchar(255) not null
	,Box17ProviderIdTypeMap varchar(255) not null
	,McaidNYPlanCode varchar(255) not null
	,PrintHcfa22 varchar(255) not null
	,EnableSympDate varchar(255) not null
	,EnableSimilarSympDate varchar(255) not null
	,SupressFacAddrForPOS11Enic varchar(255) not null
	,UseNpi varchar(255) not null
	,UseLegacy varchar(255) null
	,x270payorId varchar(255) not null
	,UseGroupNoForEligibility varchar(255) not null
	,CalculateAllowed varchar(255) not null
	,SupressFacAddrForPOS11Paper varchar(255) not null
	,x270LegacyNPI varchar(255) not null
	,FirstLinePost varchar(255) not null
	,SubscriberMask varchar(255) not null
	,subscriberLength varchar(255) not null
	,CO42MapCode varchar(255) not null
	,PrintEPSDTReferralCodeInHcfa24C varchar(255) not null
	,SendStrictDOS varchar(255) not null
	,UseFacilityPrvForRendProv varchar(255) not null
	,sendP2ProvPrvAlways varchar(255) not null
	,RequiredReferral varchar(255) not null
	,FPStringMandatory varchar(255) not null
	,SubNoMaxLen varchar(255) not null
	,SubNoMinLen varchar(255) not null
	,SendOTAFSeg varchar(255) not null
	,HCFA_Box19 varchar(255) not null
	,SendGrpNoin2310B varchar(255) not null
	,Send2420CAlways varchar(255) not null
	,Send2420CIf2310DOmited varchar(255) not null
	,UseLegacyForPrint varchar(255) not null
	,InsuranceAlert varchar(255) null
	,UseNPIForPrint varchar(255) not null
	,FeeSchedulesByLocation varchar(255) not null
	,InsurancePrimaryType varchar(255) null
	,ExcludeInPtStmts varchar(255) null
	,UseExtendedPrvOption varchar(255) not null
	,Send2000APrv varchar(255) not null
	,Send2310BPrv varchar(255) not null
	,Send2420APrv varchar(255) not null
	,SuppressRefProvUPIN varchar(255) not null
	,SuppressTaxIdInLoop2310A varchar(255) not null
	,SuppressTaxIdInLoop2310B varchar(255) not null
	,SuppressTaxIdInLoop2420A varchar(255) not null
	,SuppressTaxIdInLoop2310DAnd2420C varchar(255) not null
	,SubmitPtPmts varchar(255) not null
	,SuppressPrvInLoop2310A varchar(255) not null
	,SuppressRendProvUPIN varchar(255) not null
	,SuppressSuperProvUPIN varchar(255) not null
	,SuppressOrderProvUPIN varchar(255) not null
	,SuppressPurchasedProvUPIN varchar(255) not null
	,SuppressServiceFacilityUPIN varchar(255) not null
	,SuppressTaxIdInLoop2310C varchar(255) not null
	,SuppressTaxIdInLoop2310E varchar(255) not null
	,SuppressTaxIdInLoop2420E varchar(255) not null
	,X270SendTrnAlways varchar(255) not null
	,X270CustomMapLegacy varchar(255) not null
	,SendOtafInPrimary varchar(255) not null
	,x270SendEbDateRange varchar(255) not null
	,x270SendPrv varchar(255) not null
	,x270SendEbAddlInfo varchar(255) not null
	,BestMatchCpt varchar(255) not null
	,DoNotAddSalesTax varchar(255) not null
	,enrollmentReq varchar(255) not null
	,CountryCode varchar(255) not null
	,NDCFormat varchar(255) null
	,X270SendDoi varchar(255) not null
	,X270SendDosAsDoi varchar(255) not null
	,SendHyphenInTaxId varchar(255) not null
	,IsAnesthesiaMinutesInHCFA varchar(255) not null
	,PrimaryTimelyFiling varchar(255) not null
	,SecondaryTimelyFiling varchar(255) not null
	,IsServiceLocationAddressinLoop2010AA varchar(255) not null
	,NoPrimaryOtafIn2400 varchar(255) not null
	,StripLeadingZeroFromMoney varchar(255) not null
	,SendMedicalRecordNumber varchar(255) not null
	,x270SendGroupNo varchar(255) not null
	,x270SendRelationShip varchar(255) not null
	,x270SendSSN varchar(255) not null
	,x270SendInsuredN4 varchar(255) not null
	,StripTrailingZerosFromMoney varchar(255) not null
	,insuranceNameANSI varchar(255) not null
	,HPSAQualify varchar(255) not null
	,PrintEPSDTDataInHcfa10d varchar(255) not null
	,ConsiderToothNumberAsModifier varchar(255) not null
	,DoNotAddFinanceChrg varchar(255) not null
	,CapitationType varchar(255) null
	,LiabilityCarrierCode varchar(255) not null
	,ecwMasterId varchar(255) not null
	,EnterpriseId varchar(255) not null
	,DoNotChangeClmAssgnmntAfterCapAdj varchar(255) not null
	,modifiedDate varchar(255) not null
	,AdditionalMask varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_insurance] primary key ([insId])

	)

------------------------------

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

create table labdatadetail

	(
	ReportId varchar(255) not null
	,PropId varchar(255) not null
	,Value varchar(255) null
	,importFlag varchar(255) not null
	,Id varchar(255) not null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,TestID varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labdatadetail] primary key ([Id])

	)

------------------------------

create table labdataex

	(
	reportId varchar(255) not null
	,HL7ResultDate varchar(255) null
	,HL7ResultTime varchar(255) null
	,urllink varchar(255) null
	,interfacestatus varchar(255) null
	,processedresult varchar(255) null
	,VisitType varchar(255) not null
	,DateReceived varchar(255) not null
	,resultrcvddatetime varchar(255) not null
	,MigrateFlag varchar(255) not null
	,SentOutReqNo varchar(255) not null
	,facilityId varchar(255) not null
	,specimenReceiveTime varchar(255) not null
	,specimenReceiveDate varchar(255) not null
	,isPACSLinkEnabled varchar(255) not null
	,observationDate varchar(255) not null
	,observationTime varchar(255) not null
	,SpecimenActionCode varchar(255) not null
	,PlacerGroupNumberID varchar(255) not null
	,PatientAltRace varchar(255) not null
	,bodysitecode varchar(255) not null
	,ABNPrompted varchar(255) not null
	,ABNOption varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labdataex] primary key ([reportId])

	)

------------------------------

create table lablist

	(
	ID varchar(255) not null
	,name varchar(255) not null
	,deleteFlag varchar(255) not null
	,LabId varchar(255) not null
	,labaddress varchar(255) not null
	,labaddress2 varchar(255) not null
	,labcity varchar(255) not null
	,labstate varchar(255) not null
	,labzip varchar(255) not null
	,labphone varchar(255) not null
	,labfax varchar(255) not null
	,labemail varchar(255) null
	,interfaceConfigured varchar(255) not null
	,sendoutboundresult varchar(255) null
	,labcompanyType varchar(255) not null
	,inHouseLab varchar(255) not null
	,ResultLabId varchar(255) not null
	,labCode varchar(255) not null
	,superhubInterfaceID varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_lablist] primary key ([ID])

	)

------------------------------

create table labloinccodes

	(
	itemid varchar(255) not null
	,code varchar(255) not null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,deleteflag varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labloinccodes] primary key ([itemid])

	)

------------------------------

create table language_codes

	(
	Name varchar(255) not null
	,Favorite varchar(255) null
	,Code varchar(255) null
	,LangID varchar(255) not null
	,isocode1 varchar(255) null
	,isocode2 varchar(255) null
	,isoname varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_language_codes] primary key ([LangID])

	)

------------------------------

create table letterlogs

	(
	Id varchar(255) not null
	,patientId varchar(255) not null
	,letterId varchar(255) not null
	,letterName varchar(255) not null
	,printedBy varchar(255) not null
	,date varchar(255) not null
	,time varchar(255) not null
	,categoryID varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_letterlogs] primary key ([Id])

	)

------------------------------

create table logptspecificdata

	(
	id varchar(255) not null
	,patientid varchar(255) not null
	,truserid varchar(255) not null
	,modified_date varchar(255) not null
	,modified_time varchar(255) not null
	,timestamp varchar(255) not null
	,status varchar(255) not null
	,truser_name varchar(255) not null
	,action varchar(255) not null
	,dataelementid varchar(255) not null
	,logptspecificid varchar(255) not null
	,itemid varchar(255) not null
	,encounterid varchar(255) not null
	,data varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_logptspecificdata] primary key ([id])

	)

------------------------------

create table oldrxdetail

	(
	OldRxId varchar(255) null
	,Prop varchar(255) not null
	,value varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_oldrxdetail] primary key ([Id])

	)

------------------------------

create table problemlist_ext

	(
	Id varchar(255) not null
	,PatientId varchar(255) not null
	,NKPFlag varchar(255) not null
	,NKPDate varchar(255) null
	,deleteFlag varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_problemlist_ext] primary key ([Id])

	)

------------------------------

create table loincmaster

	(
	LOINC_NUM varchar(255) not null
	,COMPONENT varchar(255) null
	,PROPERTY varchar(255) null
	,TIME_ASPCT varchar(255) null
	,SYSTEM varchar(255) null
	,SCALE_TYP varchar(255) null
	,METHOD_TYP varchar(255) null
	,RELAT_NMS varchar(255) null
	,CLASS varchar(255) null
	,SOURCE varchar(255) null
	,DT_LAST_CH varchar(255) null
	,CHNG_TYPE varchar(255) null
	,COMMENTS varchar(255) null
	,ANSWERLIST varchar(255) null
	,STATUS varchar(255) null
	,MAP_TO varchar(255) null
	,SCOPE varchar(255) null
	,CONSUMER_NAME varchar(255) null
	,IPCC_UNITS varchar(255) null
	,REFERENCE varchar(255) null
	,EXACT_CMP_SY varchar(255) null
	,MOLAR_MASS varchar(255) null
	,CLASSTYPE varchar(255) null
	,FORMULA varchar(255) null
	,SPECIES varchar(255) null
	,EXMPL_ANSWERS varchar(255) null
	,ACSSYM varchar(255) null
	,BASE_NAME varchar(255) null
	,FINAL varchar(255) null
	,NAACCR_ID varchar(255) null
	,CODE_TABLE varchar(255) null
	,SETROOT varchar(255) null
	,PanelElements varchar(255) null
	,SURVEY_QUEST_TEXT varchar(255) null
	,SURVEY_QUEST_SRC varchar(255) null
	,UnitsRequired varchar(255) null
	,SUBMITTED_UNITS varchar(255) null
	,RelatedNames2 varchar(255) null
	,SHORTNAME varchar(255) null
	,ORDER_OBS varchar(255) null
	,CDISC_COMMON_TESTS varchar(255) null
	,HL7_FIELD_SUBFIELD_ID varchar(255) null
	,EXTERNAL_COPYRIGHT_NOTICE varchar(255) null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,deleteflag varchar(255) not null
	,EXAMPLE_UNITS varchar(255) null
	,INPC_PERCENTAGE varchar(255) null
	,LONG_COMMON_NAME varchar(255) null
	,HL7_V2_DATATYPE varchar(255) null
	,HL7_V3_DATATYPE varchar(255) null
	,CURATED_RANGE_AND_UNITS varchar(255) null
	,DOCUMENT_SECTION varchar(255) null
	,DEFINITION_DESCRIPTION_HELP varchar(255) null
	,EXAMPLE_UCUM_UNITS varchar(255) null
	,EXAMPLE_SI_UCUM_UNITS varchar(255) null
	,STATUS_REASON varchar(255) null
	,STATUS_TEXT varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_loincmaster] primary key ([LOINC_NUM])

	)

------------------------------

create table patients

	(
	pid varchar(255) not null
	,ControlNo varchar(255) not null
	,employername varchar(255) not null
	,employeraddress varchar(255) null
	,employeraddress2 varchar(255) not null
	,employercity varchar(255) null
	,employerstate varchar(255) null
	,employerzip varchar(255) null
	,employerPhone varchar(255) null
	,msgflag varchar(255) null
	,insname varchar(255) null
	,insgroupno varchar(255) null
	,inssubscriberno varchar(255) null
	,inscopay varchar(255) null
	,pastHistory varchar(255) null
	,pharmacyname varchar(255) null
	,pharmacyno varchar(255) null
	,surgicalHistory varchar(255) null
	,hospitalization varchar(255) null
	,medications varchar(255) null
	,insname2 varchar(255) null
	,insgroupno2 varchar(255) null
	,inssubscriberno2 varchar(255) null
	,inscopay2 varchar(255) null
	,straddress varchar(255) null
	,city varchar(255) null
	,state varchar(255) null
	,zip varchar(255) null
	,doctorId varchar(255) not null
	,AttendingDoctorId varchar(255) not null
	,pharmacyFax varchar(255) null
	,pmcId varchar(255) null
	,insId varchar(255) null
	,insId2 varchar(255) null
	,maritalstatus varchar(255) not null
	,strAddress2 varchar(255) null
	,notes varchar(255) not null
	,deceased varchar(255) not null
	,deceasedDate varchar(255) not null
	,deceasedNotes varchar(255) not null
	,language varchar(255) not null
	,GrId varchar(255) not null
	,GrRel varchar(255) not null
	,IsGrPt varchar(255) not null
	,GrType varchar(255) not null
	,PrimIns varchar(255) not null
	,ResType varchar(255) not null
	,StudentStatus varchar(255) not null
	,EmpStatus varchar(255) not null
	,picFileName varchar(255) not null
	,RelInfo varchar(255) not null
	,RelInfoDate varchar(255) null
	,PayorType varchar(255) not null
	,SelfPay varchar(255) not null
	,hl7Id varchar(255) not null
	,BillingAlert varchar(255) not null
	,BillingAlertNotes varchar(255) not null
	,givenToColl varchar(255) not null
	,givenDate varchar(255) null
	,DefFeeSchId varchar(255) not null
	,race varchar(255) not null
	,PtStatus varchar(255) null
	,ptStmtDate varchar(255) null
	,refPrId varchar(255) null
	,rendPrId varchar(255) null
	,nostatements varchar(255) not null
	,CurrentCollectionStatus varchar(255) not null
	,CollectionTimestamp varchar(255) not null
	,interpretSvc varchar(255) null
	,GlobalAlert varchar(255) not null
	,characterestic varchar(255) not null
	,CollectionStageDate varchar(255) not null
	,regdate varchar(255) null
	,ethnicity varchar(255) null
	,vfc varchar(255) null
	,empId varchar(255) not null
	,irisenroll varchar(255) not null
	,CollectionAgencyStatus varchar(255) null
	,RxConsent varchar(255) null
	,acctbal varchar(255) null
	,CollStartStopDt varchar(255) null
	,MailOrderPharmacyId varchar(255) null
	,MOMemberId varchar(255) null
	,teamMember varchar(255) not null
	,bTranslator varchar(255) null
	,Address2Country varchar(255) not null
	,VoiceEnabled varchar(255) null
	,assignedtoId varchar(255) not null
	,assignedto varchar(255) not null
	,UseStreetAddressForRxFlag varchar(255) null
	,textenabled varchar(255) null
	,GrStmtDate varchar(255) null
	,msgCellflag varchar(255) null
	,enableEmail varchar(255) null
	,enableLetters varchar(255) null
	,webEnabledDate varchar(255) null
	,preset varchar(255) null
	,encpwd varchar(255) null
	,lognotes varchar(255) null
	,optout varchar(255) null
	,optreasonId varchar(255) null
	,IsMigratedRecord varchar(255) null
	,DefaultLab varchar(255) not null
	,DefaultDI varchar(255) not null
	,emailreasonId varchar(255) null
	,isKioskConsentReceived varchar(255) null
	,isPtOptsOut varchar(255) not null
	,secureMsgKey varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_patients] primary key ([pid])

	)

------------------------------

create table problemlist

	(
	patientId varchar(255) not null
	,encounterId varchar(255) not null
	,asmtId varchar(255) not null
	,specify varchar(255) not null
	,notes varchar(255) not null
	,deleteFlag varchar(255) not null
	,onsetdate varchar(255) null
	,userid varchar(255) not null
	,logdate varchar(255) not null
	,inactiveFlag varchar(255) not null
	,WUStatus varchar(255) not null
	,condition varchar(255) not null
	,SlNo varchar(255) not null
	,displayIndex varchar(255) not null
	,Risk varchar(255) not null
	,AddedDate varchar(255) not null
	,ProblemType varchar(255) not null
	,Resolved varchar(255) not null
	,resolvedon varchar(255) not null
	,SNOMED varchar(255) not null
	,SNOMEDDesc varchar(255) null
	,SNOMEDDescID varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_problemlist] primary key ([SlNo])

	)

------------------------------

create table procedurespl

	(
	encounterId varchar(255) not null
	,catID varchar(255) not null
	,itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,displayIndex varchar(255) not null
	,VALUE2 varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_procedurespl] primary key ([Id])

	)

------------------------------

create table progressnotes

	(
	encounterID varchar(255) not null
	,summary varchar(255) not null
	,xslId varchar(255) not null
	,unlocked varchar(255) not null
	,ModifyDate varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_progressnotes] primary key ([Id])

	)

------------------------------

create table properties

	(
	propID varchar(255) not null
	,name varchar(255) not null
	,description varchar(255) null
	,type varchar(255) null
	,viewtype varchar(255) null
	,size varchar(255) null
	,displayName varchar(255) null
	,pdetailID varchar(255) null
	,displayIndex varchar(255) null
	,delPropFlag varchar(255) not null
	,vmid varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_properties] primary key ([propID])

	)

------------------------------

create table pt_adv_directives

	(
	Id varchar(255) not null
	,PtId varchar(255) not null
	,Code varchar(255) not null
	,Name varchar(255) not null
	,MDate varchar(255) not null
	,delflag varchar(255) null
	,displayindex varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_pt_adv_directives] primary key ([Id])

	)

------------------------------

create table pt_emailreason

	(
	id varchar(255) not null
	,description varchar(255) null
	,delflag varchar(255) null
	,displayindex varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_pt_emailreason] primary key ([id])

	)

------------------------------

create table ref_attachments

	(
	id varchar(255) not null
	,RefId varchar(255) null
	,doctype varchar(255) not null
	,docId varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_ref_attachments] primary key ([id])

	)

------------------------------

create table referral

	(
	ReferralId varchar(255) not null
	,patientID varchar(255) not null
	,insId varchar(255) not null
	,refFrom varchar(255) not null
	,authNo varchar(255) not null
	,date varchar(255) not null
	,reason varchar(255) not null
	,diagnosis varchar(255) not null
	,refStDate varchar(255) not null
	,refEnddate varchar(255) not null
	,visitsAllowed varchar(255) not null
	,visitsUsed varchar(255) not null
	,RefTo varchar(255) not null
	,notes varchar(255) not null
	,deleteFlag varchar(255) not null
	,referralType varchar(255) not null
	,priority varchar(255) not null
	,assignedTo varchar(255) not null
	,assignedToId varchar(255) not null
	,status varchar(255) not null
	,authtype varchar(255) not null
	,procedures varchar(255) not null
	,fromfacility varchar(255) not null
	,ToFacility varchar(255) not null
	,speciality varchar(255) not null
	,POS varchar(255) not null
	,UnitType varchar(255) not null
	,FrontOfficeAuth varchar(255) null
	,ReferralNumber varchar(255) not null
	,apptDate varchar(255) not null
	,clinicalNotes varchar(255) null
	,ReceivedDate varchar(255) not null
	,refEncId varchar(255) not null
	,ApptTime varchar(255) not null
	,extNHXApptBlockId varchar(255) not null
	,extNHXRefTxId varchar(255) not null
	,refReqId varchar(255) not null
	,refFromP2pNPI varchar(255) not null
	,refFromName varchar(255) not null
	,refToP2pNPI varchar(255) not null
	,refToName varchar(255) not null
	,uploadedToPtDocs varchar(255) not null
	,modifiedDate varchar(255) not null
	,refToCCNameList varchar(255) null
	,refToCCNPIList varchar(255) null
	,p2pDeliveryStatus varchar(255) null
	,statusUpdateDate varchar(255) not null
	,ccdaValidationStatus varchar(255) null
	,fromDirectAddress varchar(255) not null
	,toDirectAddress varchar(255) not null
	,toDirectAddress1 varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_referral] primary key ([ReferralId])

	)

------------------------------

create table social

	(
	encounterID varchar(255) not null
	,catID varchar(255) not null
	,itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_social] primary key ([ID])

	)

------------------------------

create table structdatadetail

	(
	Id varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,name varchar(255) not null
	,type varchar(255) not null
	,mandatory varchar(255) not null
	,displayIndex varchar(255) not null
	,deleteFlag varchar(255) not null
	,parentId varchar(255) not null
	,triggerflag varchar(255) not null
	,itemType varchar(255) not null
	,nodeLevel varchar(255) not null
	,tblName varchar(255) not null
	,chartDisplay varchar(255) null
	,multiSelect varchar(255) not null
	,IsSearchable varchar(255) null
	,defaultValue varchar(255) null
	,defaultValueId varchar(255) null
	,modifynotes varchar(255) null
	,readonly varchar(255) null
	,dropdown varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structdatadetail] primary key ([Id])

	)

------------------------------

create table structexam

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,displayIndex varchar(255) not null
	,chartdisplay varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structexam] primary key ([Id])

	)

------------------------------

create table smsmsglogs

	(
	ID varchar(255) not null
	,ToSMSName varchar(255) null
	,ToSMSNumber varchar(255) null
	,ToSMSProvider varchar(255) null
	,Retry varchar(255) null
	,SMSMessageID varchar(255) null
	,SMSMESSAGEBODY varchar(255) null
	,SmsMessageStatus varchar(255) null
	,smsMessageType varchar(255) null
	,SMSSubject varchar(255) null
	,sentdate varchar(255) not null
	,SentTime varchar(255) null
	,ScheduledDate varchar(255) null
	,ScheduledTime varchar(255) null
	,FromSMSName varchar(255) null
	,FromSMSNumber varchar(255) null
	,FromSMSProvider varchar(255) null
	,ClientId varchar(255) null
	,Priority varchar(255) null
	,EcwWebSMSUser varchar(255) null
	,ErrorId varchar(255) null
	,ErrorMsg varchar(255) null
	,DateCreated varchar(255) not null
	,isDeleted varchar(255) null
	,EncounterID varchar(255) null
	,LabID varchar(255) null
	,PatientId varchar(255) null
	,FacilityId varchar(255) null
	,PtStatementId varchar(255) null
	,Language varchar(255) null
	,SMSMsgUser varchar(255) null
	,SMSMsgPwd varchar(255) null
	,AppServMachineName varchar(255) null
	,AppServMachineIP varchar(255) null
	,AppServMacAddr varchar(255) null
	,SentByLastName varchar(255) null
	,SentByFirstName varchar(255) not null
	,SentBy varchar(255) null
	,VendorMsgId varchar(255) null
	,VendorSMSresponse varchar(255) null
	,TemplateId varchar(255) null
	,uploadlocation varchar(255) null
	,DoctorId varchar(255) null
	,RequiredConfirm varchar(255) null
	,ConfirmNumber varchar(255) null
	,smsmsgreply varchar(255) null
	,smsmsgreply_id varchar(255) null
	,parentid varchar(255) not null
	,ActualMessage varchar(255) null
	,ResourceId varchar(255) not null
	,msgSource varchar(255) null
	,ecwversion varchar(255) null
	,ecmversion varchar(255) null
	,AutoUpgradeKey varchar(255) null
	,FaxLogId varchar(255) null
	,eRxReqID varchar(255) null
	,eRxReFillReqID varchar(255) null
	,campaignid varchar(255) not null
	,campaign varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_smsmsglogs] primary key ([ID])

	)

------------------------------

create table structhpi

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) not null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,chartdisplay varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structhpi] primary key ([Id])

	)

------------------------------

create table structpreventive

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,chartdisplay varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structpreventive] primary key ([Id])

	)

------------------------------

create table structsocialhistory

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,chartdisplay varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structsocialhistory] primary key ([Id])

	)

------------------------------

create table surescript_eprescription

	(
	ReqID varchar(255) not null
	,RxType varchar(255) null
	,MessageID varchar(255) null
	,RelatedMessageID varchar(255) null
	,SentTo varchar(255) null
	,SentFrom varchar(255) null
	,SentTime varchar(255) null
	,MessageText varchar(255) null
	,StatusDesc varchar(255) null
	,AttemptNo varchar(255) null
	,LastAttemptTimeStamp varchar(255) null
	,PatientID varchar(255) not null
	,encounterID varchar(255) null
	,Patient_FName varchar(255) null
	,Patient_LName varchar(255) null
	,Patient_MName varchar(255) null
	,DateOfBirth varchar(255) null
	,Sex varchar(255) null
	,Ssn varchar(255) null
	,AddressLine1 varchar(255) null
	,AddressLine2 varchar(255) null
	,City varchar(255) null
	,State varchar(255) null
	,ZipCode varchar(255) null
	,Patient_PrimaryPhone varchar(255) null
	,Patient_CellPhone varchar(255) null
	,Patient_Fax varchar(255) null
	,Patient_Email varchar(255) null
	,DoctorID varchar(255) not null
	,SPI varchar(255) null
	,StateLicenseNumber varchar(255) null
	,doc_ssn varchar(255) null
	,DEANo varchar(255) null
	,doc_FName varchar(255) null
	,doc_LName varchar(255) null
	,doc_MName varchar(255) null
	,doc_suffix varchar(255) null
	,Speciality varchar(255) null
	,SpecialityCode varchar(255) null
	,doc_AddressLine1 varchar(255) null
	,doc_AddressLine2 varchar(255) null
	,doc_City varchar(255) null
	,doc_State varchar(255) null
	,doc_Zipcode varchar(255) null
	,doc_Primaryphone varchar(255) null
	,doc_Pagerno varchar(255) null
	,doc_Mobilephone varchar(255) null
	,PharmacyID varchar(255) not null
	,NCPDPID varchar(255) null
	,PharmacyName varchar(255) null
	,Pharmacy_AddressLine1 varchar(255) null
	,Pharmacy_City varchar(255) null
	,Pharmacy_State varchar(255) null
	,Pharmacy_Zipcode varchar(255) null
	,Pharmacy_Phone varchar(255) null
	,Pharmacy_Fax varchar(255) null
	,Pharmacy_Email varchar(255) null
	,DrugDescription varchar(255) null
	,ProductCode varchar(255) null
	,ProductCodeQualifier varchar(255) null
	,DosageForm varchar(255) null
	,Strength varchar(255) null
	,StrengthUnits varchar(255) null
	,DrugDBCode varchar(255) null
	,DrugDBCodeQualifier varchar(255) null
	,Frequency varchar(255) null
	,duration varchar(255) null
	,Quantity varchar(255) null
	,Take varchar(255) null
	,Refills varchar(255) null
	,SubsMedAllowed varchar(255) null
	,Comments varchar(255) null
	,XMLData varchar(255) null
	,XMLResponseData varchar(255) null
	,RefillsQualifier varchar(255) null
	,bAsynMsgPostedToDoc varchar(255) null
	,bVerified varchar(255) null
	,ScriptVersion varchar(255) null
	,SentBy varchar(255) null
	,RxhubId varchar(255) null
	,RouteSource varchar(255) not null
	,Addressed varchar(255) null
	,AddressedBy varchar(255) null
	,PrescriberOrderNo varchar(255) null
	,SentById varchar(255) null
	,IpAddress varchar(255) null
	,isVoiceMsgSent varchar(255) not null
	,isTextMsgSent varchar(255) null
	,rxOrderNo varchar(255) null
	,DEASchedule varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_surescript_eprescription] primary key ([ReqID])

	)

------------------------------

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

create table users

	(
	uid varchar(255) not null
	,uname varchar(255) not null
	,upwd varchar(255) null
	,udesc varchar(255) null
	,uroomno varchar(255) not null
	,umobileno varchar(255) not null
	,upagerno varchar(255) not null
	,ufname varchar(255) null
	,uminitial varchar(255) null
	,ulname varchar(255) null
	,uemail varchar(255) null
	,uwebpage varchar(255) null
	,upaddress varchar(255) null
	,upcity varchar(255) not null
	,upstate varchar(255) null
	,upPhone varchar(255) null
	,UserType varchar(255) null
	,zipcode varchar(255) null
	,dob varchar(255) null
	,ssn varchar(255) null
	,mflag varchar(255) null
	,updid varchar(255) null
	,cdate varchar(255) null
	,mdate varchar(255) not null
	,sex varchar(255) null
	,upaddress2 varchar(255) null
	,suffix varchar(255) null
	,prefix varchar(255) null
	,initials varchar(255) not null
	,ptDob varchar(255) not null
	,delFlag varchar(255) not null
	,vmid varchar(255) not null
	,status varchar(255) null
	,webenabled varchar(255) null
	,websync varchar(255) null
	,changePass varchar(255) null
	,primaryservicelocation varchar(255) not null
	,upreviousname varchar(255) null
	,IsResource varchar(255) not null
	,EligibilityStatus varchar(255) not null
	,OSUUserType varchar(255) not null
	,DefApptProvForResource varchar(255) not null
	,locked varchar(255) null
	,EncEligibilityStatus2 varchar(255) not null
	,EligibilityMessage2 varchar(255) not null
	,EncEligibilityStatus3 varchar(255) not null
	,EligibilityMessage3 varchar(255) not null
	,EncEligibilityStatus varchar(255) not null
	,EligibilityMessage varchar(255) not null
	,AllFacilities varchar(255) not null
	,Emrsex varchar(255) not null
	,CountryCode varchar(255) not null
	,transgender varchar(255) not null
	,EnterpriseId varchar(255) not null
	,gestationalAge varchar(255) not null
	,timeofbirth varchar(255) null
	,LANGUAGE varchar(255) not null
	,county varchar(255) not null
	,isCredentialed varchar(255) null
	,EncEligibilityStatus4 varchar(255) not null
	,EligibilityMessage4 varchar(255) not null
	,ACOUserType varchar(255) not null
	,credentialschange varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_users] primary key ([uid])

	)

------------------------------

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

create table visitsummarylog

	(
	id varchar(255) not null
	,encId varchar(255) null
	,uid varchar(255) null
	,requestDate varchar(255) null
	,requestedBy varchar(255) null
	,vsdata varchar(255) null
	,status varchar(255) null
	,loggedfrom varchar(255) not null
	,ccddata varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_visitsummarylog] primary key ([id])

	)

------------------------------

create table vitals

	(
	encounterID varchar(255) not null
	,vitalID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) not null
	,Id varchar(255) not null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,defaultValue varchar(255) not null
	,valueHtm varchar(255) not null
	,value2 varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_vitals] primary key ([Id])

	)

------------------------------

create table voicemsglogs

	(
	ID varchar(255) not null
	,ToName varchar(255) null
	,ContactType varchar(255) null
	,ToPhone varchar(255) null
	,Retry varchar(255) null
	,voiceMessageStatus varchar(255) null
	,SentDate varchar(255) null
	,Priority varchar(255) null
	,VoiceMessageType varchar(255) null
	,VoiceMessageLiveText varchar(255) null
	,VoiceMessageLiveAudio varchar(255) null
	,VoiceMessageMachineText varchar(255) null
	,VoiceMessageMachineAudio varchar(255) null
	,InitialGreetingAudio varchar(255) null
	,VoiceMessageId varchar(255) null
	,Date_Created varchar(255) not null
	,Date_Modified varchar(255) null
	,isDeleted varchar(255) null
	,StatusMsg varchar(255) null
	,CallerIDNumber varchar(255) null
	,InitialGreetingAudioText varchar(255) null
	,OtherContactType varchar(255) null
	,EncounterID varchar(255) null
	,MaxLiveReplays varchar(255) null
	,OperatorNumber varchar(255) null
	,ConfirmationStatus varchar(255) null
	,DeliveryType varchar(255) null
	,ErrorMsg varchar(255) null
	,LabID varchar(255) not null
	,ConfirmCancelEnabled varchar(255) null
	,PatientId varchar(255) null
	,PtStatementId varchar(255) null
	,Language varchar(255) null
	,ScheduledDate varchar(255) not null
	,ScheduledTime varchar(255) not null
	,SentByLastName varchar(255) not null
	,SentByFirstName varchar(255) not null
	,SentBy varchar(255) not null
	,FacilityId varchar(255) not null
	,SentTime varchar(255) not null
	,uploadLocation varchar(255) null
	,TTSVoice varchar(255) null
	,VMsgUser varchar(255) null
	,VMsgPwd varchar(255) null
	,AppServMachineName varchar(255) null
	,AppServMachineIP varchar(255) null
	,parentid varchar(255) null
	,recordurl varchar(255) null
	,StatusDetail varchar(255) null
	,ResourceId varchar(255) not null
	,recordedMessageId varchar(255) null
	,ecwVersion varchar(255) null
	,ecmVersion varchar(255) null
	,timeZone varchar(255) null
	,retryfailedmsg varchar(255) not null
	,ApptStatus varchar(255) null
	,ivrvalue varchar(255) not null
	,AutoUpgradeKey varchar(255) null
	,OtherContactNumbers varchar(255) null
	,ErrorCode varchar(255) not null
	,MsgExpireTime varchar(255) null
	,PtPin varchar(255) not null
	,PtPinType varchar(255) null
	,isMsgSecured varchar(255) not null
	,msgSource varchar(255) null
	,providerGreetingsUid varchar(255) null
	,ClientResponse varchar(255) not null
	,messageJobType varchar(255) not null
	,FaxLogId varchar(255) not null
	,eRxReqID varchar(255) not null
	,eRxReFillReqID varchar(255) not null
	,providerid varchar(255) not null
	,campaignid varchar(255) not null
	,campaign varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_voicemsglogs] primary key ([ID])

	)

------------------------------
create table alertdata

	(
	Id varchar(255) not null
	,PatientId varchar(255) not null
	,MeasureId varchar(255) not null
	,MeasureName varchar(255) not null
	,ItemId varchar(255) not null
	,Frequency varchar(255) not null
	,LastDone varchar(255) not null
	,DueDate varchar(255) not null
	,Value varchar(255) not null
	,controlstatus varchar(255) not null
	,RegistryAlert varchar(255) not null
	,labReceived varchar(255) not null
	,mdate varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_alertdata] primary key ([Id])

	)

------------------------------

create table alertoverride

	(
	Id varchar(255) not null
	,PatientId varchar(255) not null
	,MeasureId varchar(255) not null
	,DueDate varchar(255) null
	,NeverRemind varchar(255) not null
	,Reason varchar(255) null
	,status varchar(255) not null
	,statusLabel varchar(255) not null
	,reset varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_alertoverride] primary key ([Id])

	)

------------------------------

create table allergies

	(
	patientID varchar(255) not null
	,drug varchar(255) null
	,allergy varchar(255) not null
	,encounterId varchar(255) null
	,itemID varchar(255) null
	,displayIndex varchar(255) null
	,SMDamConceptID varchar(255) null
	,SMDamConceptIDDesc varchar(255) null
	,ndc_code varchar(255) null
	,allergytype varchar(255) not null
	,type varchar(255) not null
	,status varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_allergies] primary key ([Id])

	)

------------------------------

create table billingdata

	(
	Id varchar(255) not null
	,EncounterId varchar(255) not null
	,itemID varchar(255) not null
	,date varchar(255) null
	,endDate varchar(255) null
	,endData varchar(255) null
	,providerId varchar(255) not null
	,Notes varchar(255) null
	,displayIndex varchar(255) null
	,deleteFlag varchar(255) not null
	,Mod1 varchar(255) not null
	,Mod2 varchar(255) not null
	,Mod3 varchar(255) not null
	,units varchar(255) not null
	,codeFlag varchar(255) not null
	,Icd1 varchar(255) not null
	,Icd2 varchar(255) not null
	,Icd3 varchar(255) not null
	,Icd4 varchar(255) not null
	,icdcode1 varchar(255) not null
	,icdcode2 varchar(255) not null
	,icdcode3 varchar(255) not null
	,icdcode4 varchar(255) not null
	,vitalCpt varchar(255) not null
	,Mod4 varchar(255) not null
	,ToothNumber varchar(255) not null
	,Surface varchar(255) not null
	,documentedTime varchar(255) null
	,ndccode varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_billingdata] primary key ([Id])

	)

------------------------------

create table contacts

	(
	contactId varchar(255) not null
	,pid varchar(255) not null
	,name varchar(255) not null
	,relation varchar(255) not null
	,address varchar(255) not null
	,address2 varchar(255) not null
	,city varchar(255) not null
	,state varchar(255) not null
	,zipcode varchar(255) not null
	,homePhone varchar(255) not null
	,workPhone varchar(255) not null
	,vmid varchar(255) not null
	,delflag varchar(255) not null
	,Lname varchar(255) not null
	,Fname varchar(255) not null
	,MI varchar(255) null
	,Guardian varchar(255) null
	,RelatedPtId varchar(255) not null
	,HExt varchar(255) not null
	,WExt varchar(255) not null
	,Type1 varchar(255) not null
	,Type2 varchar(255) not null
	,Fax varchar(255) not null
	,Email varchar(255) not null
	,Notes varchar(255) not null
	,Hippa varchar(255) null
	,displayorder varchar(255) null
	,maidenname varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_contacts] primary key ([contactId])

	)

------------------------------

create table diagnosis

	(
	EncounterId varchar(255) not null
	,ItemId varchar(255) null
	,PrimaryAsmt varchar(255) null
	,Specify varchar(255) null
	,Notes varchar(255) null
	,displayIndex varchar(255) null
	,axis varchar(255) not null
	,AsmtOnsetDate varchar(255) null
	,SlNo varchar(255) not null
	,websync varchar(255) null
	,Risk varchar(255) not null
	,SNOMED varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_diagnosis] primary key ([SlNo])

	)

------------------------------

create table edi_employmentstatus

	(
	Code varchar(255) not null
	,Name varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_edi_employmentstatus] primary key ([doctorID])

	)

------------------------------

create table edi_speciality

	(
	Id varchar(255) not null
	,Speciality varchar(255) not null
	,Code varchar(255) not null
	,deleteFlag varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_edi_speciality] primary key ([Id])

	)

------------------------------

create table encounter

	(
	encounterID varchar(255) not null
	,doctorID varchar(255) not null
	,patientID varchar(255) not null
	,date varchar(255) null
	,time varchar(255) null
	,reason varchar(255) null
	,visitType varchar(255) null
	,roomno varchar(255) null
	,status varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_encounter] primary key ([encounterID])

	)

------------------------------

create table ethnicity

	(
	Code varchar(255) null
	,Name varchar(255) null
	,EthId varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_ethnicity] primary key ([EthId])

	)

------------------------------

create table familydata

	(
	encounterID varchar(255) not null
	,itemID varchar(255) not null
	,name varchar(255) null
	,status varchar(255) null
	,age varchar(255) null
	,dob varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_familydata] primary key ([EthId])

	)

------------------------------

create table immunizationstatus

	(
	Id varchar(255) not null
	,ImmStatusId varchar(255) not null
	,CODE varchar(255) null
	,Description varchar(255) not null
	,TYPE varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_immunizationstatus] primary key ([Id])

	)

------------------------------

create table itemdetail

	(
	itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_itemdetail] primary key ([Id])

	)

------------------------------

create table labcptmap

	(
	labCode varchar(255) null
	,cptCode varchar(255) null
	,Id varchar(255) not null
	,CptItemId varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labcptmap] primary key ([Id])

	)

------------------------------

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

create table edi_facilities

	(
	Id varchar(255) not null
	,FacilityType varchar(255) not null
	,Name varchar(255) not null
	,AddressLine1 varchar(255) not null
	,AddressLine2 varchar(255) not null
	,City varchar(255) not null
	,State varchar(255) not null
	,Zip varchar(255) not null
	,Tel varchar(255) not null
	,Fax varchar(255) not null
	,EMail varchar(255) not null
	,BillingAddressLine1 varchar(255) not null
	,BillingAddressLine2 varchar(255) not null
	,BillingCity varchar(255) not null
	,BillingState varchar(255) not null
	,BillingZip varchar(255) not null
	,BillingTel varchar(255) not null
	,BillingFax varchar(255) not null
	,BillingEMail varchar(255) not null
	,PracticeType varchar(255) not null
	,PracticeOption varchar(255) not null
	,PayableTo varchar(255) not null
	,BankAccount varchar(255) not null
	,FederalTaxID varchar(255) not null
	,Notes varchar(255) not null
	,PrimaryFacility varchar(255) not null
	,CliaId varchar(255) not null
	,code varchar(255) not null
	,POS varchar(255) not null
	,MammoCertId varchar(255) not null
	,HPSAFlag varchar(255) not null
	,HPSAModifier varchar(255) not null
	,DeleteFlag varchar(255) not null
	,vmid varchar(255) not null
	,hl7id varchar(255) not null
	,Color varchar(255) null
	,FeeSchedule varchar(255) not null
	,FacilityIdType varchar(255) not null
	,PtStmtFacOption varchar(255) not null
	,PtStmtFacId varchar(255) not null
	,RestrictPrintAppts varchar(255) null
	,NPI varchar(255) not null
	,ImmStateId varchar(255) not null
	,TaxonomyCode varchar(255) not null
	,RestrictPrintStmts varchar(255) not null
	,startedOn varchar(255) null
	,RevenueCode varchar(255) null
	,Percent varchar(255) not null
	,OverrideSalesTax varchar(255) not null
	,MerchantID varchar(255) not null
	,ImmLocationId varchar(255) not null
	,TimeZoneCode varchar(255) null
	,MessCallerId varchar(255) null
	,MessOperNum varchar(255) null
	,CreditCardOption varchar(255) not null
	,CountryCode varchar(255) not null
	,BillingCountryCode varchar(255) not null
	,Immfacid varchar(255) null
	,BillType varchar(255) not null
	,takeNewPortalAppts varchar(255) null
	,portal_name varchar(255) null
	,takenewportalmsg varchar(255) null
	,showinpi varchar(255) null
	,modifiedDate varchar(255) not null
	,nsexclude varchar(255) not null
	,facilitysmsname varchar(255) not null
	,birthdayexclude varchar(255) not null
	,ASC_TN_FacilityType varchar(255) null
	,ASC_TN_FacilityId varchar(255) null
	,facilitynickname varchar(255) null
	,exclude varchar(255) not null
	,labexclude varchar(255) not null
	,ASC_WI_FacilityType varchar(255) null
	,rxexclude varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_edi_facilities] primary key ([Id])

	)

------------------------------

create table familyhxdetails

	(
	encounterId varchar(255) not null
	,itemId varchar(255) not null
	,icdItemid varchar(255) not null
	,icdCode varchar(255) not null
	,icdDesc varchar(255) not null
	,snomedCode varchar(255) not null
	,diagnosedYear varchar(255) not null
	,diagnosedAge varchar(255) not null
	,name varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_familyhxdetails] primary key ([EthId])

	)

------------------------------

create table hl7labdatadetail

	(
	ReportId varchar(255) not null
	,NAME varchar(255) not null
	,value varchar(255) not null
	,units varchar(255) not null
	,range varchar(255) not null
	,flag varchar(255) not null
	,notes varchar(255) not null
	,resultStatus varchar(255) not null
	,labId varchar(255) not null
	,hl7id varchar(255) null
	,profileid varchar(255) not null
	,serialno varchar(255) not null
	,obrcode varchar(255) not null
	,corrreportno varchar(255) not null
	,performingSiteId varchar(255) not null
	,prevvalue varchar(255) null
	,AttrResultDate varchar(255) null
	,AttrResultTime varchar(255) null
	,obsubid varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_hl7labdatadetail] primary key ([LogID])

	)

------------------------------

create table enc

	(
	encounterID varchar(255) not null
	,patientID varchar(255) not null
	,doctorID varchar(255) not null
	,date varchar(255) null
	,time varchar(255) null
	,startTime varchar(255) null
	,endTime varchar(255) null
	,reason varchar(255) null
	,VisitType varchar(255) null
	,roomNo varchar(255) null
	,STATUS varchar(255) not null
	,deleteFlag varchar(255) null
	,encType varchar(255) null
	,encLock varchar(255) null
	,Notes varchar(255) null
	,generalNotes varchar(255) not null
	,vmid varchar(255) not null
	,facilityId varchar(255) null
	,POS varchar(255) not null
	,arrivedTime varchar(255) not null
	,timeIn varchar(255) not null
	,timeOut varchar(255) not null
	,stsAfterArr varchar(255) not null
	,depTime varchar(255) not null
	,stsAfterChkIn varchar(255) not null
	,HL7Id varchar(255) not null
	,newPt varchar(255) not null
	,Dx varchar(255) not null
	,reminded varchar(255) null
	,remindedDate varchar(255) null
	,VisitCopay varchar(255) not null
	,CopayChanged varchar(255) not null
	,ClaimRequired varchar(255) not null
	,ClaimReq varchar(255) not null
	,VisitTypeOverriden varchar(255) null
	,refPrName varchar(255) null
	,refPrId varchar(255) null
	,PSACGroup varchar(255) null
	,deptid varchar(255) null
	,ResourceId varchar(255) not null
	,EncEligibilityStatus varchar(255) not null
	,EligibilityMessage varchar(255) not null
	,InvoiceId varchar(255) not null
	,EligSubId varchar(255) not null
	,EncEligibilityStatus2 varchar(255) not null
	,EligibilityMessage2 varchar(255) not null
	,EncEligibilityStatus3 varchar(255) not null
	,EligibilityMessage3 varchar(255) not null
	,trans_dictation varchar(255) null
	,waitTime varchar(255) null
	,websync varchar(255) null
	,dateIn varchar(255) null
	,dateOut varchar(255) null
	,notesDoneTime varchar(255) null
	,notesLoginId varchar(255) null
	,notesLogOutId varchar(255) null
	,visittypeid varchar(255) null
	,UTCStartTime varchar(255) null
	,UTCEndTime varchar(255) null
	,visitstscodeid varchar(255) not null
	,practiceId varchar(255) not null
	,immnotessendstatus varchar(255) null
	,transitionofcare varchar(255) null
	,prNotesSendStatus varchar(255) not null
	,readytobill varchar(255) not null
	,reviewbeforebill varchar(255) not null
	,EncEligibilityStatus4 varchar(255) not null
	,EligibilityMessage4 varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_enc] primary key ([encounterID])

	)

------------------------------

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

create table items

	(
	itemID varchar(255) not null
	,itemName varchar(255) not null
	,itemDesc varchar(255) not null
	,parentID varchar(255) not null
	,xmlPath varchar(255) not null
	,xslPath varchar(255) not null
	,itemType varchar(255) null
	,supplierId varchar(255) not null
	,price varchar(255) not null
	,discount varchar(255) not null
	,specialPrice varchar(255) not null
	,startDate varchar(255) not null
	,endDate varchar(255) not null
	,createdDate varchar(255) not null
	,modifiedDate varchar(255) not null
	,viewType varchar(255) not null
	,displayIndex varchar(255) null
	,deleteFlag varchar(255) not null
	,vmid varchar(255) not null
	,keyName varchar(255) not null
	,gender varchar(255) not null
	,overdue varchar(255) not null
	,inactive varchar(255) null
	,DrugNameId varchar(255) not null
	,showPathologyDetail varchar(255) not null
	,vmsgexclude varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_items] primary key ([itemID])

	)

------------------------------

create table maintenance

	(
	Id varchar(255) not null
	,UserId varchar(255) not null
	,Msg varchar(255) null
	,Comments varchar(255) null
	,Discussion varchar(255) null
	,StatusFlag varchar(255) not null
	,Status varchar(255) null
	,CreateDate varchar(255) null
	,ModifyDate varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_maintenance] primary key ([Id])

	)

------------------------------

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

create table faxlogs

	(
	LogID varchar(255) not null
	,LoginID varchar(255) not null
	,DoctorID varchar(255) not null
	,PatientID varchar(255) not null
	,ToID varchar(255) null
	,ToName varchar(255) not null
	,ToFax varchar(255) not null
	,ToCompany varchar(255) not null
	,EncounterID varchar(255) null
	,FaxInitTime varchar(255) not null
	,Retry varchar(255) null
	,Status varchar(255) not null
	,faxdata varchar(255) not null
	,FaxStatus varchar(255) not null
	,SendDate varchar(255) null
	,FaxType varchar(255) null
	,FaxManLogID varchar(255) not null
	,FaxPrefix varchar(255) not null
	,FaxFile varchar(255) null
	,FaxTransaction varchar(255) null
	,RxIds varchar(255) null
	,FaxLogStatus varchar(255) not null
	,FaxLogBatch varchar(255) null
	,FacilityID varchar(255) not null
	,FacilityName varchar(255) not null
	,reminded varchar(255) null
	,remindedDate varchar(255) null
	,FaxCoverPage varchar(255) not null
	,FaxCoverPageID varchar(255) not null
	,FaxStatusMsg varchar(255) not null
	,FaxSubject varchar(255) not null
	,LoginName varchar(255) not null
	,scheduledDate varchar(255) null
	,sentnotification varchar(255) not null
	,OriginalFaxDoc varchar(255) null
	,FromName varchar(255) null
	,FromVoice varchar(255) null
	,fromcompany varchar(255) not null
	,FaxInitTime2 varchar(255) not null
	,isMsgSent varchar(255) not null
	,isTextMsgSent varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_faxlogs] primary key ([LogID])

	)

------------------------------

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

create table preventive

	(
	encounterID varchar(255) not null
	,catID varchar(255) not null
	,itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_preventive] primary key ([pid])

	)

------------------------------

create table printlogs

	(
	LogID varchar(255) not null
	,LoginID varchar(255) not null
	,DoctorID varchar(255) not null
	,PatientID varchar(255) not null
	,EncounterID varchar(255) null
	,PrintData varchar(255) not null
	,PrintDate varchar(255) not null
	,PrintType varchar(255) null
	,PrintTransaction varchar(255) null
	,RxList varchar(255) null
	,PrintLogStatus varchar(255) not null
	,PrintLogBatch varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_printlogs] primary key ([LogID])

	)

------------------------------

create table insurance

	(
	insId varchar(255) not null
	,insuranceName varchar(255) null
	,insurancephone varchar(255) null
	,insurancefax varchar(255) null
	,insuranceemail varchar(255) null
	,insuranceaddress varchar(255) null
	,insuranceaddress2 varchar(255) not null
	,insurancecity varchar(255) null
	,insurancestate varchar(255) null
	,insurancezip varchar(255) null
	,PayorId varchar(255) not null
	,ClaimOfficeNumber varchar(255) not null
	,ClaimOfficeNumberType varchar(255) not null
	,MedigapID varchar(255) not null
	,carrierCode varchar(255) not null
	,ProviderIdRef varchar(255) not null
	,TestProdIndicator varchar(255) not null
	,ANSI varchar(255) null
	,SendSVT varchar(255) null
	,SendDecimalUnit varchar(255) null
	,PaymentSrc varchar(255) not null
	,capitationplan varchar(255) not null
	,capitationpayment varchar(255) not null
	,deleteFlag varchar(255) not null
	,vmid varchar(255) not null
	,labcorpid varchar(255) null
	,website varchar(255) not null
	,Send2310EAlways varchar(255) not null
	,ClaimSubmitType varchar(255) not null
	,ERAPayorId varchar(255) not null
	,Inactive varchar(255) not null
	,AllCodesCapitated varchar(255) not null
	,SelCodesCapitated varchar(255) not null
	,ReqOrdPrInfo varchar(255) not null
	,sendDupSubNoForPat varchar(255) null
	,prodDateAsCheckDate varchar(255) null
	,ReqUPINInEA021 varchar(255) not null
	,hl7id1 varchar(255) null
	,hl7id2 varchar(255) null
	,insuranceclass varchar(255) null
	,InsTypeMedicare varchar(255) not null
	,InsTypeOthers varchar(255) not null
	,FeeSchedId varchar(255) null
	,SecClaimsElectronic varchar(255) not null
	,PrAssignInd varchar(255) not null
	,Notes varchar(255) null
	,Box31Format varchar(255) not null
	,Box17ProviderType varchar(255) not null
	,Box17ProviderIdType varchar(255) not null
	,Box17ProviderRuleEnabled varchar(255) not null
	,SendInsPinForSupr varchar(255) not null
	,insurancephone2 varchar(255) null
	,InsuranceType varchar(255) null
	,ClaimType varchar(255) not null
	,Box31Line2Format varchar(255) not null
	,sendSubDemAlways varchar(255) not null
	,SplitClaimOnICD varchar(255) not null
	,EnableReferralNumber varchar(255) not null
	,DoNotPrintHcfa29 varchar(255) not null
	,DoNotPrintHcfa30 varchar(255) not null
	,Box17ProviderIdTypeMap varchar(255) not null
	,McaidNYPlanCode varchar(255) not null
	,PrintHcfa22 varchar(255) not null
	,EnableSympDate varchar(255) not null
	,EnableSimilarSympDate varchar(255) not null
	,SupressFacAddrForPOS11Enic varchar(255) not null
	,UseNpi varchar(255) not null
	,UseLegacy varchar(255) null
	,x270payorId varchar(255) not null
	,UseGroupNoForEligibility varchar(255) not null
	,CalculateAllowed varchar(255) not null
	,SupressFacAddrForPOS11Paper varchar(255) not null
	,x270LegacyNPI varchar(255) not null
	,FirstLinePost varchar(255) not null
	,SubscriberMask varchar(255) not null
	,subscriberLength varchar(255) not null
	,CO42MapCode varchar(255) not null
	,PrintEPSDTReferralCodeInHcfa24C varchar(255) not null
	,SendStrictDOS varchar(255) not null
	,UseFacilityPrvForRendProv varchar(255) not null
	,sendP2ProvPrvAlways varchar(255) not null
	,RequiredReferral varchar(255) not null
	,FPStringMandatory varchar(255) not null
	,SubNoMaxLen varchar(255) not null
	,SubNoMinLen varchar(255) not null
	,SendOTAFSeg varchar(255) not null
	,HCFA_Box19 varchar(255) not null
	,SendGrpNoin2310B varchar(255) not null
	,Send2420CAlways varchar(255) not null
	,Send2420CIf2310DOmited varchar(255) not null
	,UseLegacyForPrint varchar(255) not null
	,InsuranceAlert varchar(255) null
	,UseNPIForPrint varchar(255) not null
	,FeeSchedulesByLocation varchar(255) not null
	,InsurancePrimaryType varchar(255) null
	,ExcludeInPtStmts varchar(255) null
	,UseExtendedPrvOption varchar(255) not null
	,Send2000APrv varchar(255) not null
	,Send2310BPrv varchar(255) not null
	,Send2420APrv varchar(255) not null
	,SuppressRefProvUPIN varchar(255) not null
	,SuppressTaxIdInLoop2310A varchar(255) not null
	,SuppressTaxIdInLoop2310B varchar(255) not null
	,SuppressTaxIdInLoop2420A varchar(255) not null
	,SuppressTaxIdInLoop2310DAnd2420C varchar(255) not null
	,SubmitPtPmts varchar(255) not null
	,SuppressPrvInLoop2310A varchar(255) not null
	,SuppressRendProvUPIN varchar(255) not null
	,SuppressSuperProvUPIN varchar(255) not null
	,SuppressOrderProvUPIN varchar(255) not null
	,SuppressPurchasedProvUPIN varchar(255) not null
	,SuppressServiceFacilityUPIN varchar(255) not null
	,SuppressTaxIdInLoop2310C varchar(255) not null
	,SuppressTaxIdInLoop2310E varchar(255) not null
	,SuppressTaxIdInLoop2420E varchar(255) not null
	,X270SendTrnAlways varchar(255) not null
	,X270CustomMapLegacy varchar(255) not null
	,SendOtafInPrimary varchar(255) not null
	,x270SendEbDateRange varchar(255) not null
	,x270SendPrv varchar(255) not null
	,x270SendEbAddlInfo varchar(255) not null
	,BestMatchCpt varchar(255) not null
	,DoNotAddSalesTax varchar(255) not null
	,enrollmentReq varchar(255) not null
	,CountryCode varchar(255) not null
	,NDCFormat varchar(255) null
	,X270SendDoi varchar(255) not null
	,X270SendDosAsDoi varchar(255) not null
	,SendHyphenInTaxId varchar(255) not null
	,IsAnesthesiaMinutesInHCFA varchar(255) not null
	,PrimaryTimelyFiling varchar(255) not null
	,SecondaryTimelyFiling varchar(255) not null
	,IsServiceLocationAddressinLoop2010AA varchar(255) not null
	,NoPrimaryOtafIn2400 varchar(255) not null
	,StripLeadingZeroFromMoney varchar(255) not null
	,SendMedicalRecordNumber varchar(255) not null
	,x270SendGroupNo varchar(255) not null
	,x270SendRelationShip varchar(255) not null
	,x270SendSSN varchar(255) not null
	,x270SendInsuredN4 varchar(255) not null
	,StripTrailingZerosFromMoney varchar(255) not null
	,insuranceNameANSI varchar(255) not null
	,HPSAQualify varchar(255) not null
	,PrintEPSDTDataInHcfa10d varchar(255) not null
	,ConsiderToothNumberAsModifier varchar(255) not null
	,DoNotAddFinanceChrg varchar(255) not null
	,CapitationType varchar(255) null
	,LiabilityCarrierCode varchar(255) not null
	,ecwMasterId varchar(255) not null
	,EnterpriseId varchar(255) not null
	,DoNotChangeClmAssgnmntAfterCapAdj varchar(255) not null
	,modifiedDate varchar(255) not null
	,AdditionalMask varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_insurance] primary key ([insId])

	)

------------------------------

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

create table labdatadetail

	(
	ReportId varchar(255) not null
	,PropId varchar(255) not null
	,Value varchar(255) null
	,importFlag varchar(255) not null
	,Id varchar(255) not null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,TestID varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labdatadetail] primary key ([Id])

	)

------------------------------

create table labdataex

	(
	reportId varchar(255) not null
	,HL7ResultDate varchar(255) null
	,HL7ResultTime varchar(255) null
	,urllink varchar(255) null
	,interfacestatus varchar(255) null
	,processedresult varchar(255) null
	,VisitType varchar(255) not null
	,DateReceived varchar(255) not null
	,resultrcvddatetime varchar(255) not null
	,MigrateFlag varchar(255) not null
	,SentOutReqNo varchar(255) not null
	,facilityId varchar(255) not null
	,specimenReceiveTime varchar(255) not null
	,specimenReceiveDate varchar(255) not null
	,isPACSLinkEnabled varchar(255) not null
	,observationDate varchar(255) not null
	,observationTime varchar(255) not null
	,SpecimenActionCode varchar(255) not null
	,PlacerGroupNumberID varchar(255) not null
	,PatientAltRace varchar(255) not null
	,bodysitecode varchar(255) not null
	,ABNPrompted varchar(255) not null
	,ABNOption varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labdataex] primary key ([reportId])

	)

------------------------------

create table lablist

	(
	ID varchar(255) not null
	,name varchar(255) not null
	,deleteFlag varchar(255) not null
	,LabId varchar(255) not null
	,labaddress varchar(255) not null
	,labaddress2 varchar(255) not null
	,labcity varchar(255) not null
	,labstate varchar(255) not null
	,labzip varchar(255) not null
	,labphone varchar(255) not null
	,labfax varchar(255) not null
	,labemail varchar(255) null
	,interfaceConfigured varchar(255) not null
	,sendoutboundresult varchar(255) null
	,labcompanyType varchar(255) not null
	,inHouseLab varchar(255) not null
	,ResultLabId varchar(255) not null
	,labCode varchar(255) not null
	,superhubInterfaceID varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_lablist] primary key ([ID])

	)

------------------------------

create table labloinccodes

	(
	itemid varchar(255) not null
	,code varchar(255) not null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,deleteflag varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labloinccodes] primary key ([itemid])

	)

------------------------------

create table language_codes

	(
	Name varchar(255) not null
	,Favorite varchar(255) null
	,Code varchar(255) null
	,LangID varchar(255) not null
	,isocode1 varchar(255) null
	,isocode2 varchar(255) null
	,isoname varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_language_codes] primary key ([LangID])

	)

------------------------------

create table letterlogs

	(
	Id varchar(255) not null
	,patientId varchar(255) not null
	,letterId varchar(255) not null
	,letterName varchar(255) not null
	,printedBy varchar(255) not null
	,date varchar(255) not null
	,time varchar(255) not null
	,categoryID varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_letterlogs] primary key ([Id])

	)

------------------------------

create table logptspecificdata

	(
	id varchar(255) not null
	,patientid varchar(255) not null
	,truserid varchar(255) not null
	,modified_date varchar(255) not null
	,modified_time varchar(255) not null
	,timestamp varchar(255) not null
	,status varchar(255) not null
	,truser_name varchar(255) not null
	,action varchar(255) not null
	,dataelementid varchar(255) not null
	,logptspecificid varchar(255) not null
	,itemid varchar(255) not null
	,encounterid varchar(255) not null
	,data varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_logptspecificdata] primary key ([id])

	)

------------------------------

create table oldrxdetail

	(
	OldRxId varchar(255) null
	,Prop varchar(255) not null
	,value varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_oldrxdetail] primary key ([Id])

	)

------------------------------

create table problemlist_ext

	(
	Id varchar(255) not null
	,PatientId varchar(255) not null
	,NKPFlag varchar(255) not null
	,NKPDate varchar(255) null
	,deleteFlag varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_problemlist_ext] primary key ([Id])

	)

------------------------------

create table loincmaster

	(
	LOINC_NUM varchar(255) not null
	,COMPONENT varchar(255) null
	,PROPERTY varchar(255) null
	,TIME_ASPCT varchar(255) null
	,SYSTEM varchar(255) null
	,SCALE_TYP varchar(255) null
	,METHOD_TYP varchar(255) null
	,RELAT_NMS varchar(255) null
	,CLASS varchar(255) null
	,SOURCE varchar(255) null
	,DT_LAST_CH varchar(255) null
	,CHNG_TYPE varchar(255) null
	,COMMENTS varchar(255) null
	,ANSWERLIST varchar(255) null
	,STATUS varchar(255) null
	,MAP_TO varchar(255) null
	,SCOPE varchar(255) null
	,CONSUMER_NAME varchar(255) null
	,IPCC_UNITS varchar(255) null
	,REFERENCE varchar(255) null
	,EXACT_CMP_SY varchar(255) null
	,MOLAR_MASS varchar(255) null
	,CLASSTYPE varchar(255) null
	,FORMULA varchar(255) null
	,SPECIES varchar(255) null
	,EXMPL_ANSWERS varchar(255) null
	,ACSSYM varchar(255) null
	,BASE_NAME varchar(255) null
	,FINAL varchar(255) null
	,NAACCR_ID varchar(255) null
	,CODE_TABLE varchar(255) null
	,SETROOT varchar(255) null
	,PanelElements varchar(255) null
	,SURVEY_QUEST_TEXT varchar(255) null
	,SURVEY_QUEST_SRC varchar(255) null
	,UnitsRequired varchar(255) null
	,SUBMITTED_UNITS varchar(255) null
	,RelatedNames2 varchar(255) null
	,SHORTNAME varchar(255) null
	,ORDER_OBS varchar(255) null
	,CDISC_COMMON_TESTS varchar(255) null
	,HL7_FIELD_SUBFIELD_ID varchar(255) null
	,EXTERNAL_COPYRIGHT_NOTICE varchar(255) null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,deleteflag varchar(255) not null
	,EXAMPLE_UNITS varchar(255) null
	,INPC_PERCENTAGE varchar(255) null
	,LONG_COMMON_NAME varchar(255) null
	,HL7_V2_DATATYPE varchar(255) null
	,HL7_V3_DATATYPE varchar(255) null
	,CURATED_RANGE_AND_UNITS varchar(255) null
	,DOCUMENT_SECTION varchar(255) null
	,DEFINITION_DESCRIPTION_HELP varchar(255) null
	,EXAMPLE_UCUM_UNITS varchar(255) null
	,EXAMPLE_SI_UCUM_UNITS varchar(255) null
	,STATUS_REASON varchar(255) null
	,STATUS_TEXT varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_loincmaster] primary key ([LOINC_NUM])

	)

------------------------------

create table patients

	(
	pid varchar(255) not null
	,ControlNo varchar(255) not null
	,employername varchar(255) not null
	,employeraddress varchar(255) null
	,employeraddress2 varchar(255) not null
	,employercity varchar(255) null
	,employerstate varchar(255) null
	,employerzip varchar(255) null
	,employerPhone varchar(255) null
	,msgflag varchar(255) null
	,insname varchar(255) null
	,insgroupno varchar(255) null
	,inssubscriberno varchar(255) null
	,inscopay varchar(255) null
	,pastHistory varchar(255) null
	,pharmacyname varchar(255) null
	,pharmacyno varchar(255) null
	,surgicalHistory varchar(255) null
	,hospitalization varchar(255) null
	,medications varchar(255) null
	,insname2 varchar(255) null
	,insgroupno2 varchar(255) null
	,inssubscriberno2 varchar(255) null
	,inscopay2 varchar(255) null
	,straddress varchar(255) null
	,city varchar(255) null
	,state varchar(255) null
	,zip varchar(255) null
	,doctorId varchar(255) not null
	,AttendingDoctorId varchar(255) not null
	,pharmacyFax varchar(255) null
	,pmcId varchar(255) null
	,insId varchar(255) null
	,insId2 varchar(255) null
	,maritalstatus varchar(255) not null
	,strAddress2 varchar(255) null
	,notes varchar(255) not null
	,deceased varchar(255) not null
	,deceasedDate varchar(255) not null
	,deceasedNotes varchar(255) not null
	,language varchar(255) not null
	,GrId varchar(255) not null
	,GrRel varchar(255) not null
	,IsGrPt varchar(255) not null
	,GrType varchar(255) not null
	,PrimIns varchar(255) not null
	,ResType varchar(255) not null
	,StudentStatus varchar(255) not null
	,EmpStatus varchar(255) not null
	,picFileName varchar(255) not null
	,RelInfo varchar(255) not null
	,RelInfoDate varchar(255) null
	,PayorType varchar(255) not null
	,SelfPay varchar(255) not null
	,hl7Id varchar(255) not null
	,BillingAlert varchar(255) not null
	,BillingAlertNotes varchar(255) not null
	,givenToColl varchar(255) not null
	,givenDate varchar(255) null
	,DefFeeSchId varchar(255) not null
	,race varchar(255) not null
	,PtStatus varchar(255) null
	,ptStmtDate varchar(255) null
	,refPrId varchar(255) null
	,rendPrId varchar(255) null
	,nostatements varchar(255) not null
	,CurrentCollectionStatus varchar(255) not null
	,CollectionTimestamp varchar(255) not null
	,interpretSvc varchar(255) null
	,GlobalAlert varchar(255) not null
	,characterestic varchar(255) not null
	,CollectionStageDate varchar(255) not null
	,regdate varchar(255) null
	,ethnicity varchar(255) null
	,vfc varchar(255) null
	,empId varchar(255) not null
	,irisenroll varchar(255) not null
	,CollectionAgencyStatus varchar(255) null
	,RxConsent varchar(255) null
	,acctbal varchar(255) null
	,CollStartStopDt varchar(255) null
	,MailOrderPharmacyId varchar(255) null
	,MOMemberId varchar(255) null
	,teamMember varchar(255) not null
	,bTranslator varchar(255) null
	,Address2Country varchar(255) not null
	,VoiceEnabled varchar(255) null
	,assignedtoId varchar(255) not null
	,assignedto varchar(255) not null
	,UseStreetAddressForRxFlag varchar(255) null
	,textenabled varchar(255) null
	,GrStmtDate varchar(255) null
	,msgCellflag varchar(255) null
	,enableEmail varchar(255) null
	,enableLetters varchar(255) null
	,webEnabledDate varchar(255) null
	,preset varchar(255) null
	,encpwd varchar(255) null
	,lognotes varchar(255) null
	,optout varchar(255) null
	,optreasonId varchar(255) null
	,IsMigratedRecord varchar(255) null
	,DefaultLab varchar(255) not null
	,DefaultDI varchar(255) not null
	,emailreasonId varchar(255) null
	,isKioskConsentReceived varchar(255) null
	,isPtOptsOut varchar(255) not null
	,secureMsgKey varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_patients] primary key ([pid])

	)

------------------------------

create table problemlist

	(
	patientId varchar(255) not null
	,encounterId varchar(255) not null
	,asmtId varchar(255) not null
	,specify varchar(255) not null
	,notes varchar(255) not null
	,deleteFlag varchar(255) not null
	,onsetdate varchar(255) null
	,userid varchar(255) not null
	,logdate varchar(255) not null
	,inactiveFlag varchar(255) not null
	,WUStatus varchar(255) not null
	,condition varchar(255) not null
	,SlNo varchar(255) not null
	,displayIndex varchar(255) not null
	,Risk varchar(255) not null
	,AddedDate varchar(255) not null
	,ProblemType varchar(255) not null
	,Resolved varchar(255) not null
	,resolvedon varchar(255) not null
	,SNOMED varchar(255) not null
	,SNOMEDDesc varchar(255) null
	,SNOMEDDescID varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_problemlist] primary key ([SlNo])

	)

------------------------------

create table procedurespl

	(
	encounterId varchar(255) not null
	,catID varchar(255) not null
	,itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,displayIndex varchar(255) not null
	,VALUE2 varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_procedurespl] primary key ([Id])

	)

------------------------------

create table progressnotes

	(
	encounterID varchar(255) not null
	,summary varchar(255) not null
	,xslId varchar(255) not null
	,unlocked varchar(255) not null
	,ModifyDate varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_progressnotes] primary key ([Id])

	)

------------------------------

create table properties

	(
	propID varchar(255) not null
	,name varchar(255) not null
	,description varchar(255) null
	,type varchar(255) null
	,viewtype varchar(255) null
	,size varchar(255) null
	,displayName varchar(255) null
	,pdetailID varchar(255) null
	,displayIndex varchar(255) null
	,delPropFlag varchar(255) not null
	,vmid varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_properties] primary key ([propID])

	)

------------------------------

create table pt_adv_directives

	(
	Id varchar(255) not null
	,PtId varchar(255) not null
	,Code varchar(255) not null
	,Name varchar(255) not null
	,MDate varchar(255) not null
	,delflag varchar(255) null
	,displayindex varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_pt_adv_directives] primary key ([Id])

	)

------------------------------

create table pt_emailreason

	(
	id varchar(255) not null
	,description varchar(255) null
	,delflag varchar(255) null
	,displayindex varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_pt_emailreason] primary key ([id])

	)

------------------------------

create table ref_attachments

	(
	id varchar(255) not null
	,RefId varchar(255) null
	,doctype varchar(255) not null
	,docId varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_ref_attachments] primary key ([id])

	)

------------------------------

create table referral

	(
	ReferralId varchar(255) not null
	,patientID varchar(255) not null
	,insId varchar(255) not null
	,refFrom varchar(255) not null
	,authNo varchar(255) not null
	,date varchar(255) not null
	,reason varchar(255) not null
	,diagnosis varchar(255) not null
	,refStDate varchar(255) not null
	,refEnddate varchar(255) not null
	,visitsAllowed varchar(255) not null
	,visitsUsed varchar(255) not null
	,RefTo varchar(255) not null
	,notes varchar(255) not null
	,deleteFlag varchar(255) not null
	,referralType varchar(255) not null
	,priority varchar(255) not null
	,assignedTo varchar(255) not null
	,assignedToId varchar(255) not null
	,status varchar(255) not null
	,authtype varchar(255) not null
	,procedures varchar(255) not null
	,fromfacility varchar(255) not null
	,ToFacility varchar(255) not null
	,speciality varchar(255) not null
	,POS varchar(255) not null
	,UnitType varchar(255) not null
	,FrontOfficeAuth varchar(255) null
	,ReferralNumber varchar(255) not null
	,apptDate varchar(255) not null
	,clinicalNotes varchar(255) null
	,ReceivedDate varchar(255) not null
	,refEncId varchar(255) not null
	,ApptTime varchar(255) not null
	,extNHXApptBlockId varchar(255) not null
	,extNHXRefTxId varchar(255) not null
	,refReqId varchar(255) not null
	,refFromP2pNPI varchar(255) not null
	,refFromName varchar(255) not null
	,refToP2pNPI varchar(255) not null
	,refToName varchar(255) not null
	,uploadedToPtDocs varchar(255) not null
	,modifiedDate varchar(255) not null
	,refToCCNameList varchar(255) null
	,refToCCNPIList varchar(255) null
	,p2pDeliveryStatus varchar(255) null
	,statusUpdateDate varchar(255) not null
	,ccdaValidationStatus varchar(255) null
	,fromDirectAddress varchar(255) not null
	,toDirectAddress varchar(255) not null
	,toDirectAddress1 varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_referral] primary key ([ReferralId])

	)

------------------------------

create table social

	(
	encounterID varchar(255) not null
	,catID varchar(255) not null
	,itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_social] primary key ([ID])

	)

------------------------------

create table structdatadetail

	(
	Id varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,name varchar(255) not null
	,type varchar(255) not null
	,mandatory varchar(255) not null
	,displayIndex varchar(255) not null
	,deleteFlag varchar(255) not null
	,parentId varchar(255) not null
	,triggerflag varchar(255) not null
	,itemType varchar(255) not null
	,nodeLevel varchar(255) not null
	,tblName varchar(255) not null
	,chartDisplay varchar(255) null
	,multiSelect varchar(255) not null
	,IsSearchable varchar(255) null
	,defaultValue varchar(255) null
	,defaultValueId varchar(255) null
	,modifynotes varchar(255) null
	,readonly varchar(255) null
	,dropdown varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structdatadetail] primary key ([Id])

	)

------------------------------

create table structexam

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,displayIndex varchar(255) not null
	,chartdisplay varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structexam] primary key ([Id])

	)

------------------------------

create table smsmsglogs

	(
	ID varchar(255) not null
	,ToSMSName varchar(255) null
	,ToSMSNumber varchar(255) null
	,ToSMSProvider varchar(255) null
	,Retry varchar(255) null
	,SMSMessageID varchar(255) null
	,SMSMESSAGEBODY varchar(255) null
	,SmsMessageStatus varchar(255) null
	,smsMessageType varchar(255) null
	,SMSSubject varchar(255) null
	,sentdate varchar(255) not null
	,SentTime varchar(255) null
	,ScheduledDate varchar(255) null
	,ScheduledTime varchar(255) null
	,FromSMSName varchar(255) null
	,FromSMSNumber varchar(255) null
	,FromSMSProvider varchar(255) null
	,ClientId varchar(255) null
	,Priority varchar(255) null
	,EcwWebSMSUser varchar(255) null
	,ErrorId varchar(255) null
	,ErrorMsg varchar(255) null
	,DateCreated varchar(255) not null
	,isDeleted varchar(255) null
	,EncounterID varchar(255) null
	,LabID varchar(255) null
	,PatientId varchar(255) null
	,FacilityId varchar(255) null
	,PtStatementId varchar(255) null
	,Language varchar(255) null
	,SMSMsgUser varchar(255) null
	,SMSMsgPwd varchar(255) null
	,AppServMachineName varchar(255) null
	,AppServMachineIP varchar(255) null
	,AppServMacAddr varchar(255) null
	,SentByLastName varchar(255) null
	,SentByFirstName varchar(255) not null
	,SentBy varchar(255) null
	,VendorMsgId varchar(255) null
	,VendorSMSresponse varchar(255) null
	,TemplateId varchar(255) null
	,uploadlocation varchar(255) null
	,DoctorId varchar(255) null
	,RequiredConfirm varchar(255) null
	,ConfirmNumber varchar(255) null
	,smsmsgreply varchar(255) null
	,smsmsgreply_id varchar(255) null
	,parentid varchar(255) not null
	,ActualMessage varchar(255) null
	,ResourceId varchar(255) not null
	,msgSource varchar(255) null
	,ecwversion varchar(255) null
	,ecmversion varchar(255) null
	,AutoUpgradeKey varchar(255) null
	,FaxLogId varchar(255) null
	,eRxReqID varchar(255) null
	,eRxReFillReqID varchar(255) null
	,campaignid varchar(255) not null
	,campaign varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_smsmsglogs] primary key ([ID])

	)

------------------------------

create table structhpi

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) not null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,chartdisplay varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structhpi] primary key ([Id])

	)

------------------------------

create table structpreventive

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,chartdisplay varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structpreventive] primary key ([Id])

	)

------------------------------

create table structsocialhistory

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,chartdisplay varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structsocialhistory] primary key ([Id])

	)

------------------------------

create table surescript_eprescription

	(
	ReqID varchar(255) not null
	,RxType varchar(255) null
	,MessageID varchar(255) null
	,RelatedMessageID varchar(255) null
	,SentTo varchar(255) null
	,SentFrom varchar(255) null
	,SentTime varchar(255) null
	,MessageText varchar(255) null
	,StatusDesc varchar(255) null
	,AttemptNo varchar(255) null
	,LastAttemptTimeStamp varchar(255) null
	,PatientID varchar(255) not null
	,encounterID varchar(255) null
	,Patient_FName varchar(255) null
	,Patient_LName varchar(255) null
	,Patient_MName varchar(255) null
	,DateOfBirth varchar(255) null
	,Sex varchar(255) null
	,Ssn varchar(255) null
	,AddressLine1 varchar(255) null
	,AddressLine2 varchar(255) null
	,City varchar(255) null
	,State varchar(255) null
	,ZipCode varchar(255) null
	,Patient_PrimaryPhone varchar(255) null
	,Patient_CellPhone varchar(255) null
	,Patient_Fax varchar(255) null
	,Patient_Email varchar(255) null
	,DoctorID varchar(255) not null
	,SPI varchar(255) null
	,StateLicenseNumber varchar(255) null
	,doc_ssn varchar(255) null
	,DEANo varchar(255) null
	,doc_FName varchar(255) null
	,doc_LName varchar(255) null
	,doc_MName varchar(255) null
	,doc_suffix varchar(255) null
	,Speciality varchar(255) null
	,SpecialityCode varchar(255) null
	,doc_AddressLine1 varchar(255) null
	,doc_AddressLine2 varchar(255) null
	,doc_City varchar(255) null
	,doc_State varchar(255) null
	,doc_Zipcode varchar(255) null
	,doc_Primaryphone varchar(255) null
	,doc_Pagerno varchar(255) null
	,doc_Mobilephone varchar(255) null
	,PharmacyID varchar(255) not null
	,NCPDPID varchar(255) null
	,PharmacyName varchar(255) null
	,Pharmacy_AddressLine1 varchar(255) null
	,Pharmacy_City varchar(255) null
	,Pharmacy_State varchar(255) null
	,Pharmacy_Zipcode varchar(255) null
	,Pharmacy_Phone varchar(255) null
	,Pharmacy_Fax varchar(255) null
	,Pharmacy_Email varchar(255) null
	,DrugDescription varchar(255) null
	,ProductCode varchar(255) null
	,ProductCodeQualifier varchar(255) null
	,DosageForm varchar(255) null
	,Strength varchar(255) null
	,StrengthUnits varchar(255) null
	,DrugDBCode varchar(255) null
	,DrugDBCodeQualifier varchar(255) null
	,Frequency varchar(255) null
	,duration varchar(255) null
	,Quantity varchar(255) null
	,Take varchar(255) null
	,Refills varchar(255) null
	,SubsMedAllowed varchar(255) null
	,Comments varchar(255) null
	,XMLData varchar(255) null
	,XMLResponseData varchar(255) null
	,RefillsQualifier varchar(255) null
	,bAsynMsgPostedToDoc varchar(255) null
	,bVerified varchar(255) null
	,ScriptVersion varchar(255) null
	,SentBy varchar(255) null
	,RxhubId varchar(255) null
	,RouteSource varchar(255) not null
	,Addressed varchar(255) null
	,AddressedBy varchar(255) null
	,PrescriberOrderNo varchar(255) null
	,SentById varchar(255) null
	,IpAddress varchar(255) null
	,isVoiceMsgSent varchar(255) not null
	,isTextMsgSent varchar(255) null
	,rxOrderNo varchar(255) null
	,DEASchedule varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_surescript_eprescription] primary key ([ReqID])

	)

------------------------------

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

create table users

	(
	uid varchar(255) not null
	,uname varchar(255) not null
	,upwd varchar(255) null
	,udesc varchar(255) null
	,uroomno varchar(255) not null
	,umobileno varchar(255) not null
	,upagerno varchar(255) not null
	,ufname varchar(255) null
	,uminitial varchar(255) null
	,ulname varchar(255) null
	,uemail varchar(255) null
	,uwebpage varchar(255) null
	,upaddress varchar(255) null
	,upcity varchar(255) not null
	,upstate varchar(255) null
	,upPhone varchar(255) null
	,UserType varchar(255) null
	,zipcode varchar(255) null
	,dob varchar(255) null
	,ssn varchar(255) null
	,mflag varchar(255) null
	,updid varchar(255) null
	,cdate varchar(255) null
	,mdate varchar(255) not null
	,sex varchar(255) null
	,upaddress2 varchar(255) null
	,suffix varchar(255) null
	,prefix varchar(255) null
	,initials varchar(255) not null
	,ptDob varchar(255) not null
	,delFlag varchar(255) not null
	,vmid varchar(255) not null
	,status varchar(255) null
	,webenabled varchar(255) null
	,websync varchar(255) null
	,changePass varchar(255) null
	,primaryservicelocation varchar(255) not null
	,upreviousname varchar(255) null
	,IsResource varchar(255) not null
	,EligibilityStatus varchar(255) not null
	,OSUUserType varchar(255) not null
	,DefApptProvForResource varchar(255) not null
	,locked varchar(255) null
	,EncEligibilityStatus2 varchar(255) not null
	,EligibilityMessage2 varchar(255) not null
	,EncEligibilityStatus3 varchar(255) not null
	,EligibilityMessage3 varchar(255) not null
	,EncEligibilityStatus varchar(255) not null
	,EligibilityMessage varchar(255) not null
	,AllFacilities varchar(255) not null
	,Emrsex varchar(255) not null
	,CountryCode varchar(255) not null
	,transgender varchar(255) not null
	,EnterpriseId varchar(255) not null
	,gestationalAge varchar(255) not null
	,timeofbirth varchar(255) null
	,LANGUAGE varchar(255) not null
	,county varchar(255) not null
	,isCredentialed varchar(255) null
	,EncEligibilityStatus4 varchar(255) not null
	,EligibilityMessage4 varchar(255) not null
	,ACOUserType varchar(255) not null
	,credentialschange varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_users] primary key ([uid])

	)

------------------------------

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

create table visitsummarylog

	(
	id varchar(255) not null
	,encId varchar(255) null
	,uid varchar(255) null
	,requestDate varchar(255) null
	,requestedBy varchar(255) null
	,vsdata varchar(255) null
	,status varchar(255) null
	,loggedfrom varchar(255) not null
	,ccddata varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_visitsummarylog] primary key ([id])

	)

------------------------------

create table vitals

	(
	encounterID varchar(255) not null
	,vitalID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) not null
	,Id varchar(255) not null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,defaultValue varchar(255) not null
	,valueHtm varchar(255) not null
	,value2 varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_vitals] primary key ([Id])

	)

------------------------------

create table voicemsglogs

	(
	ID varchar(255) not null
	,ToName varchar(255) null
	,ContactType varchar(255) null
	,ToPhone varchar(255) null
	,Retry varchar(255) null
	,voiceMessageStatus varchar(255) null
	,SentDate varchar(255) null
	,Priority varchar(255) null
	,VoiceMessageType varchar(255) null
	,VoiceMessageLiveText varchar(255) null
	,VoiceMessageLiveAudio varchar(255) null
	,VoiceMessageMachineText varchar(255) null
	,VoiceMessageMachineAudio varchar(255) null
	,InitialGreetingAudio varchar(255) null
	,VoiceMessageId varchar(255) null
	,Date_Created varchar(255) not null
	,Date_Modified varchar(255) null
	,isDeleted varchar(255) null
	,StatusMsg varchar(255) null
	,CallerIDNumber varchar(255) null
	,InitialGreetingAudioText varchar(255) null
	,OtherContactType varchar(255) null
	,EncounterID varchar(255) null
	,MaxLiveReplays varchar(255) null
	,OperatorNumber varchar(255) null
	,ConfirmationStatus varchar(255) null
	,DeliveryType varchar(255) null
	,ErrorMsg varchar(255) null
	,LabID varchar(255) not null
	,ConfirmCancelEnabled varchar(255) null
	,PatientId varchar(255) null
	,PtStatementId varchar(255) null
	,Language varchar(255) null
	,ScheduledDate varchar(255) not null
	,ScheduledTime varchar(255) not null
	,SentByLastName varchar(255) not null
	,SentByFirstName varchar(255) not null
	,SentBy varchar(255) not null
	,FacilityId varchar(255) not null
	,SentTime varchar(255) not null
	,uploadLocation varchar(255) null
	,TTSVoice varchar(255) null
	,VMsgUser varchar(255) null
	,VMsgPwd varchar(255) null
	,AppServMachineName varchar(255) null
	,AppServMachineIP varchar(255) null
	,parentid varchar(255) null
	,recordurl varchar(255) null
	,StatusDetail varchar(255) null
	,ResourceId varchar(255) not null
	,recordedMessageId varchar(255) null
	,ecwVersion varchar(255) null
	,ecmVersion varchar(255) null
	,timeZone varchar(255) null
	,retryfailedmsg varchar(255) not null
	,ApptStatus varchar(255) null
	,ivrvalue varchar(255) not null
	,AutoUpgradeKey varchar(255) null
	,OtherContactNumbers varchar(255) null
	,ErrorCode varchar(255) not null
	,MsgExpireTime varchar(255) null
	,PtPin varchar(255) not null
	,PtPinType varchar(255) null
	,isMsgSecured varchar(255) not null
	,msgSource varchar(255) null
	,providerGreetingsUid varchar(255) null
	,ClientResponse varchar(255) not null
	,messageJobType varchar(255) not null
	,FaxLogId varchar(255) not null
	,eRxReqID varchar(255) not null
	,eRxReFillReqID varchar(255) not null
	,providerid varchar(255) not null
	,campaignid varchar(255) not null
	,campaign varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_voicemsglogs] primary key ([ID])

	)

------------------------------
create table alertdata

	(
	Id varchar(255) not null
	,PatientId varchar(255) not null
	,MeasureId varchar(255) not null
	,MeasureName varchar(255) not null
	,ItemId varchar(255) not null
	,Frequency varchar(255) not null
	,LastDone varchar(255) not null
	,DueDate varchar(255) not null
	,Value varchar(255) not null
	,controlstatus varchar(255) not null
	,RegistryAlert varchar(255) not null
	,labReceived varchar(255) not null
	,mdate varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_alertdata] primary key ([Id])

	)

------------------------------

create table alertoverride

	(
	Id varchar(255) not null
	,PatientId varchar(255) not null
	,MeasureId varchar(255) not null
	,DueDate varchar(255) null
	,NeverRemind varchar(255) not null
	,Reason varchar(255) null
	,status varchar(255) not null
	,statusLabel varchar(255) not null
	,reset varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_alertoverride] primary key ([Id])

	)

------------------------------

create table allergies

	(
	patientID varchar(255) not null
	,drug varchar(255) null
	,allergy varchar(255) not null
	,encounterId varchar(255) null
	,itemID varchar(255) null
	,displayIndex varchar(255) null
	,SMDamConceptID varchar(255) null
	,SMDamConceptIDDesc varchar(255) null
	,ndc_code varchar(255) null
	,allergytype varchar(255) not null
	,type varchar(255) not null
	,status varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_allergies] primary key ([Id])

	)

------------------------------

create table billingdata

	(
	Id varchar(255) not null
	,EncounterId varchar(255) not null
	,itemID varchar(255) not null
	,date varchar(255) null
	,endDate varchar(255) null
	,endData varchar(255) null
	,providerId varchar(255) not null
	,Notes varchar(255) null
	,displayIndex varchar(255) null
	,deleteFlag varchar(255) not null
	,Mod1 varchar(255) not null
	,Mod2 varchar(255) not null
	,Mod3 varchar(255) not null
	,units varchar(255) not null
	,codeFlag varchar(255) not null
	,Icd1 varchar(255) not null
	,Icd2 varchar(255) not null
	,Icd3 varchar(255) not null
	,Icd4 varchar(255) not null
	,icdcode1 varchar(255) not null
	,icdcode2 varchar(255) not null
	,icdcode3 varchar(255) not null
	,icdcode4 varchar(255) not null
	,vitalCpt varchar(255) not null
	,Mod4 varchar(255) not null
	,ToothNumber varchar(255) not null
	,Surface varchar(255) not null
	,documentedTime varchar(255) null
	,ndccode varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_billingdata] primary key ([Id])

	)

------------------------------

create table contacts

	(
	contactId varchar(255) not null
	,pid varchar(255) not null
	,name varchar(255) not null
	,relation varchar(255) not null
	,address varchar(255) not null
	,address2 varchar(255) not null
	,city varchar(255) not null
	,state varchar(255) not null
	,zipcode varchar(255) not null
	,homePhone varchar(255) not null
	,workPhone varchar(255) not null
	,vmid varchar(255) not null
	,delflag varchar(255) not null
	,Lname varchar(255) not null
	,Fname varchar(255) not null
	,MI varchar(255) null
	,Guardian varchar(255) null
	,RelatedPtId varchar(255) not null
	,HExt varchar(255) not null
	,WExt varchar(255) not null
	,Type1 varchar(255) not null
	,Type2 varchar(255) not null
	,Fax varchar(255) not null
	,Email varchar(255) not null
	,Notes varchar(255) not null
	,Hippa varchar(255) null
	,displayorder varchar(255) null
	,maidenname varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_contacts] primary key ([contactId])

	)

------------------------------

create table diagnosis

	(
	EncounterId varchar(255) not null
	,ItemId varchar(255) null
	,PrimaryAsmt varchar(255) null
	,Specify varchar(255) null
	,Notes varchar(255) null
	,displayIndex varchar(255) null
	,axis varchar(255) not null
	,AsmtOnsetDate varchar(255) null
	,SlNo varchar(255) not null
	,websync varchar(255) null
	,Risk varchar(255) not null
	,SNOMED varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_diagnosis] primary key ([SlNo])

	)

------------------------------

create table edi_employmentstatus

	(
	Code varchar(255) not null
	,Name varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_edi_employmentstatus] primary key ([doctorID])

	)

------------------------------

create table edi_speciality

	(
	Id varchar(255) not null
	,Speciality varchar(255) not null
	,Code varchar(255) not null
	,deleteFlag varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_edi_speciality] primary key ([Id])

	)

------------------------------

create table encounter

	(
	encounterID varchar(255) not null
	,doctorID varchar(255) not null
	,patientID varchar(255) not null
	,date varchar(255) null
	,time varchar(255) null
	,reason varchar(255) null
	,visitType varchar(255) null
	,roomno varchar(255) null
	,status varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_encounter] primary key ([encounterID])

	)

------------------------------

create table ethnicity

	(
	Code varchar(255) null
	,Name varchar(255) null
	,EthId varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_ethnicity] primary key ([EthId])

	)

------------------------------

create table familydata

	(
	encounterID varchar(255) not null
	,itemID varchar(255) not null
	,name varchar(255) null
	,status varchar(255) null
	,age varchar(255) null
	,dob varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_familydata] primary key ([EthId])

	)

------------------------------

create table immunizationstatus

	(
	Id varchar(255) not null
	,ImmStatusId varchar(255) not null
	,CODE varchar(255) null
	,Description varchar(255) not null
	,TYPE varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_immunizationstatus] primary key ([Id])

	)

------------------------------

create table itemdetail

	(
	itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_itemdetail] primary key ([Id])

	)

------------------------------

create table labcptmap

	(
	labCode varchar(255) null
	,cptCode varchar(255) null
	,Id varchar(255) not null
	,CptItemId varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labcptmap] primary key ([Id])

	)

------------------------------

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

create table edi_facilities

	(
	Id varchar(255) not null
	,FacilityType varchar(255) not null
	,Name varchar(255) not null
	,AddressLine1 varchar(255) not null
	,AddressLine2 varchar(255) not null
	,City varchar(255) not null
	,State varchar(255) not null
	,Zip varchar(255) not null
	,Tel varchar(255) not null
	,Fax varchar(255) not null
	,EMail varchar(255) not null
	,BillingAddressLine1 varchar(255) not null
	,BillingAddressLine2 varchar(255) not null
	,BillingCity varchar(255) not null
	,BillingState varchar(255) not null
	,BillingZip varchar(255) not null
	,BillingTel varchar(255) not null
	,BillingFax varchar(255) not null
	,BillingEMail varchar(255) not null
	,PracticeType varchar(255) not null
	,PracticeOption varchar(255) not null
	,PayableTo varchar(255) not null
	,BankAccount varchar(255) not null
	,FederalTaxID varchar(255) not null
	,Notes varchar(255) not null
	,PrimaryFacility varchar(255) not null
	,CliaId varchar(255) not null
	,code varchar(255) not null
	,POS varchar(255) not null
	,MammoCertId varchar(255) not null
	,HPSAFlag varchar(255) not null
	,HPSAModifier varchar(255) not null
	,DeleteFlag varchar(255) not null
	,vmid varchar(255) not null
	,hl7id varchar(255) not null
	,Color varchar(255) null
	,FeeSchedule varchar(255) not null
	,FacilityIdType varchar(255) not null
	,PtStmtFacOption varchar(255) not null
	,PtStmtFacId varchar(255) not null
	,RestrictPrintAppts varchar(255) null
	,NPI varchar(255) not null
	,ImmStateId varchar(255) not null
	,TaxonomyCode varchar(255) not null
	,RestrictPrintStmts varchar(255) not null
	,startedOn varchar(255) null
	,RevenueCode varchar(255) null
	,Percent varchar(255) not null
	,OverrideSalesTax varchar(255) not null
	,MerchantID varchar(255) not null
	,ImmLocationId varchar(255) not null
	,TimeZoneCode varchar(255) null
	,MessCallerId varchar(255) null
	,MessOperNum varchar(255) null
	,CreditCardOption varchar(255) not null
	,CountryCode varchar(255) not null
	,BillingCountryCode varchar(255) not null
	,Immfacid varchar(255) null
	,BillType varchar(255) not null
	,takeNewPortalAppts varchar(255) null
	,portal_name varchar(255) null
	,takenewportalmsg varchar(255) null
	,showinpi varchar(255) null
	,modifiedDate varchar(255) not null
	,nsexclude varchar(255) not null
	,facilitysmsname varchar(255) not null
	,birthdayexclude varchar(255) not null
	,ASC_TN_FacilityType varchar(255) null
	,ASC_TN_FacilityId varchar(255) null
	,facilitynickname varchar(255) null
	,exclude varchar(255) not null
	,labexclude varchar(255) not null
	,ASC_WI_FacilityType varchar(255) null
	,rxexclude varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_edi_facilities] primary key ([Id])

	)

------------------------------

create table familyhxdetails

	(
	encounterId varchar(255) not null
	,itemId varchar(255) not null
	,icdItemid varchar(255) not null
	,icdCode varchar(255) not null
	,icdDesc varchar(255) not null
	,snomedCode varchar(255) not null
	,diagnosedYear varchar(255) not null
	,diagnosedAge varchar(255) not null
	,name varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_familyhxdetails] primary key ([EthId])

	)

------------------------------

create table hl7labdatadetail

	(
	ReportId varchar(255) not null
	,NAME varchar(255) not null
	,value varchar(255) not null
	,units varchar(255) not null
	,range varchar(255) not null
	,flag varchar(255) not null
	,notes varchar(255) not null
	,resultStatus varchar(255) not null
	,labId varchar(255) not null
	,hl7id varchar(255) null
	,profileid varchar(255) not null
	,serialno varchar(255) not null
	,obrcode varchar(255) not null
	,corrreportno varchar(255) not null
	,performingSiteId varchar(255) not null
	,prevvalue varchar(255) null
	,AttrResultDate varchar(255) null
	,AttrResultTime varchar(255) null
	,obsubid varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_hl7labdatadetail] primary key ([LogID])

	)

------------------------------

create table enc

	(
	encounterID varchar(255) not null
	,patientID varchar(255) not null
	,doctorID varchar(255) not null
	,date varchar(255) null
	,time varchar(255) null
	,startTime varchar(255) null
	,endTime varchar(255) null
	,reason varchar(255) null
	,VisitType varchar(255) null
	,roomNo varchar(255) null
	,STATUS varchar(255) not null
	,deleteFlag varchar(255) null
	,encType varchar(255) null
	,encLock varchar(255) null
	,Notes varchar(255) null
	,generalNotes varchar(255) not null
	,vmid varchar(255) not null
	,facilityId varchar(255) null
	,POS varchar(255) not null
	,arrivedTime varchar(255) not null
	,timeIn varchar(255) not null
	,timeOut varchar(255) not null
	,stsAfterArr varchar(255) not null
	,depTime varchar(255) not null
	,stsAfterChkIn varchar(255) not null
	,HL7Id varchar(255) not null
	,newPt varchar(255) not null
	,Dx varchar(255) not null
	,reminded varchar(255) null
	,remindedDate varchar(255) null
	,VisitCopay varchar(255) not null
	,CopayChanged varchar(255) not null
	,ClaimRequired varchar(255) not null
	,ClaimReq varchar(255) not null
	,VisitTypeOverriden varchar(255) null
	,refPrName varchar(255) null
	,refPrId varchar(255) null
	,PSACGroup varchar(255) null
	,deptid varchar(255) null
	,ResourceId varchar(255) not null
	,EncEligibilityStatus varchar(255) not null
	,EligibilityMessage varchar(255) not null
	,InvoiceId varchar(255) not null
	,EligSubId varchar(255) not null
	,EncEligibilityStatus2 varchar(255) not null
	,EligibilityMessage2 varchar(255) not null
	,EncEligibilityStatus3 varchar(255) not null
	,EligibilityMessage3 varchar(255) not null
	,trans_dictation varchar(255) null
	,waitTime varchar(255) null
	,websync varchar(255) null
	,dateIn varchar(255) null
	,dateOut varchar(255) null
	,notesDoneTime varchar(255) null
	,notesLoginId varchar(255) null
	,notesLogOutId varchar(255) null
	,visittypeid varchar(255) null
	,UTCStartTime varchar(255) null
	,UTCEndTime varchar(255) null
	,visitstscodeid varchar(255) not null
	,practiceId varchar(255) not null
	,immnotessendstatus varchar(255) null
	,transitionofcare varchar(255) null
	,prNotesSendStatus varchar(255) not null
	,readytobill varchar(255) not null
	,reviewbeforebill varchar(255) not null
	,EncEligibilityStatus4 varchar(255) not null
	,EligibilityMessage4 varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_enc] primary key ([encounterID])

	)

------------------------------

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

create table items

	(
	itemID varchar(255) not null
	,itemName varchar(255) not null
	,itemDesc varchar(255) not null
	,parentID varchar(255) not null
	,xmlPath varchar(255) not null
	,xslPath varchar(255) not null
	,itemType varchar(255) null
	,supplierId varchar(255) not null
	,price varchar(255) not null
	,discount varchar(255) not null
	,specialPrice varchar(255) not null
	,startDate varchar(255) not null
	,endDate varchar(255) not null
	,createdDate varchar(255) not null
	,modifiedDate varchar(255) not null
	,viewType varchar(255) not null
	,displayIndex varchar(255) null
	,deleteFlag varchar(255) not null
	,vmid varchar(255) not null
	,keyName varchar(255) not null
	,gender varchar(255) not null
	,overdue varchar(255) not null
	,inactive varchar(255) null
	,DrugNameId varchar(255) not null
	,showPathologyDetail varchar(255) not null
	,vmsgexclude varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_items] primary key ([itemID])

	)

------------------------------

create table maintenance

	(
	Id varchar(255) not null
	,UserId varchar(255) not null
	,Msg varchar(255) null
	,Comments varchar(255) null
	,Discussion varchar(255) null
	,StatusFlag varchar(255) not null
	,Status varchar(255) null
	,CreateDate varchar(255) null
	,ModifyDate varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_maintenance] primary key ([Id])

	)

------------------------------

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

create table faxlogs

	(
	LogID varchar(255) not null
	,LoginID varchar(255) not null
	,DoctorID varchar(255) not null
	,PatientID varchar(255) not null
	,ToID varchar(255) null
	,ToName varchar(255) not null
	,ToFax varchar(255) not null
	,ToCompany varchar(255) not null
	,EncounterID varchar(255) null
	,FaxInitTime varchar(255) not null
	,Retry varchar(255) null
	,Status varchar(255) not null
	,faxdata varchar(255) not null
	,FaxStatus varchar(255) not null
	,SendDate varchar(255) null
	,FaxType varchar(255) null
	,FaxManLogID varchar(255) not null
	,FaxPrefix varchar(255) not null
	,FaxFile varchar(255) null
	,FaxTransaction varchar(255) null
	,RxIds varchar(255) null
	,FaxLogStatus varchar(255) not null
	,FaxLogBatch varchar(255) null
	,FacilityID varchar(255) not null
	,FacilityName varchar(255) not null
	,reminded varchar(255) null
	,remindedDate varchar(255) null
	,FaxCoverPage varchar(255) not null
	,FaxCoverPageID varchar(255) not null
	,FaxStatusMsg varchar(255) not null
	,FaxSubject varchar(255) not null
	,LoginName varchar(255) not null
	,scheduledDate varchar(255) null
	,sentnotification varchar(255) not null
	,OriginalFaxDoc varchar(255) null
	,FromName varchar(255) null
	,FromVoice varchar(255) null
	,fromcompany varchar(255) not null
	,FaxInitTime2 varchar(255) not null
	,isMsgSent varchar(255) not null
	,isTextMsgSent varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_faxlogs] primary key ([LogID])

	)

------------------------------

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

create table preventive

	(
	encounterID varchar(255) not null
	,catID varchar(255) not null
	,itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_preventive] primary key ([pid])

	)

------------------------------

create table printlogs

	(
	LogID varchar(255) not null
	,LoginID varchar(255) not null
	,DoctorID varchar(255) not null
	,PatientID varchar(255) not null
	,EncounterID varchar(255) null
	,PrintData varchar(255) not null
	,PrintDate varchar(255) not null
	,PrintType varchar(255) null
	,PrintTransaction varchar(255) null
	,RxList varchar(255) null
	,PrintLogStatus varchar(255) not null
	,PrintLogBatch varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_printlogs] primary key ([LogID])

	)

------------------------------

create table insurance

	(
	insId varchar(255) not null
	,insuranceName varchar(255) null
	,insurancephone varchar(255) null
	,insurancefax varchar(255) null
	,insuranceemail varchar(255) null
	,insuranceaddress varchar(255) null
	,insuranceaddress2 varchar(255) not null
	,insurancecity varchar(255) null
	,insurancestate varchar(255) null
	,insurancezip varchar(255) null
	,PayorId varchar(255) not null
	,ClaimOfficeNumber varchar(255) not null
	,ClaimOfficeNumberType varchar(255) not null
	,MedigapID varchar(255) not null
	,carrierCode varchar(255) not null
	,ProviderIdRef varchar(255) not null
	,TestProdIndicator varchar(255) not null
	,ANSI varchar(255) null
	,SendSVT varchar(255) null
	,SendDecimalUnit varchar(255) null
	,PaymentSrc varchar(255) not null
	,capitationplan varchar(255) not null
	,capitationpayment varchar(255) not null
	,deleteFlag varchar(255) not null
	,vmid varchar(255) not null
	,labcorpid varchar(255) null
	,website varchar(255) not null
	,Send2310EAlways varchar(255) not null
	,ClaimSubmitType varchar(255) not null
	,ERAPayorId varchar(255) not null
	,Inactive varchar(255) not null
	,AllCodesCapitated varchar(255) not null
	,SelCodesCapitated varchar(255) not null
	,ReqOrdPrInfo varchar(255) not null
	,sendDupSubNoForPat varchar(255) null
	,prodDateAsCheckDate varchar(255) null
	,ReqUPINInEA021 varchar(255) not null
	,hl7id1 varchar(255) null
	,hl7id2 varchar(255) null
	,insuranceclass varchar(255) null
	,InsTypeMedicare varchar(255) not null
	,InsTypeOthers varchar(255) not null
	,FeeSchedId varchar(255) null
	,SecClaimsElectronic varchar(255) not null
	,PrAssignInd varchar(255) not null
	,Notes varchar(255) null
	,Box31Format varchar(255) not null
	,Box17ProviderType varchar(255) not null
	,Box17ProviderIdType varchar(255) not null
	,Box17ProviderRuleEnabled varchar(255) not null
	,SendInsPinForSupr varchar(255) not null
	,insurancephone2 varchar(255) null
	,InsuranceType varchar(255) null
	,ClaimType varchar(255) not null
	,Box31Line2Format varchar(255) not null
	,sendSubDemAlways varchar(255) not null
	,SplitClaimOnICD varchar(255) not null
	,EnableReferralNumber varchar(255) not null
	,DoNotPrintHcfa29 varchar(255) not null
	,DoNotPrintHcfa30 varchar(255) not null
	,Box17ProviderIdTypeMap varchar(255) not null
	,McaidNYPlanCode varchar(255) not null
	,PrintHcfa22 varchar(255) not null
	,EnableSympDate varchar(255) not null
	,EnableSimilarSympDate varchar(255) not null
	,SupressFacAddrForPOS11Enic varchar(255) not null
	,UseNpi varchar(255) not null
	,UseLegacy varchar(255) null
	,x270payorId varchar(255) not null
	,UseGroupNoForEligibility varchar(255) not null
	,CalculateAllowed varchar(255) not null
	,SupressFacAddrForPOS11Paper varchar(255) not null
	,x270LegacyNPI varchar(255) not null
	,FirstLinePost varchar(255) not null
	,SubscriberMask varchar(255) not null
	,subscriberLength varchar(255) not null
	,CO42MapCode varchar(255) not null
	,PrintEPSDTReferralCodeInHcfa24C varchar(255) not null
	,SendStrictDOS varchar(255) not null
	,UseFacilityPrvForRendProv varchar(255) not null
	,sendP2ProvPrvAlways varchar(255) not null
	,RequiredReferral varchar(255) not null
	,FPStringMandatory varchar(255) not null
	,SubNoMaxLen varchar(255) not null
	,SubNoMinLen varchar(255) not null
	,SendOTAFSeg varchar(255) not null
	,HCFA_Box19 varchar(255) not null
	,SendGrpNoin2310B varchar(255) not null
	,Send2420CAlways varchar(255) not null
	,Send2420CIf2310DOmited varchar(255) not null
	,UseLegacyForPrint varchar(255) not null
	,InsuranceAlert varchar(255) null
	,UseNPIForPrint varchar(255) not null
	,FeeSchedulesByLocation varchar(255) not null
	,InsurancePrimaryType varchar(255) null
	,ExcludeInPtStmts varchar(255) null
	,UseExtendedPrvOption varchar(255) not null
	,Send2000APrv varchar(255) not null
	,Send2310BPrv varchar(255) not null
	,Send2420APrv varchar(255) not null
	,SuppressRefProvUPIN varchar(255) not null
	,SuppressTaxIdInLoop2310A varchar(255) not null
	,SuppressTaxIdInLoop2310B varchar(255) not null
	,SuppressTaxIdInLoop2420A varchar(255) not null
	,SuppressTaxIdInLoop2310DAnd2420C varchar(255) not null
	,SubmitPtPmts varchar(255) not null
	,SuppressPrvInLoop2310A varchar(255) not null
	,SuppressRendProvUPIN varchar(255) not null
	,SuppressSuperProvUPIN varchar(255) not null
	,SuppressOrderProvUPIN varchar(255) not null
	,SuppressPurchasedProvUPIN varchar(255) not null
	,SuppressServiceFacilityUPIN varchar(255) not null
	,SuppressTaxIdInLoop2310C varchar(255) not null
	,SuppressTaxIdInLoop2310E varchar(255) not null
	,SuppressTaxIdInLoop2420E varchar(255) not null
	,X270SendTrnAlways varchar(255) not null
	,X270CustomMapLegacy varchar(255) not null
	,SendOtafInPrimary varchar(255) not null
	,x270SendEbDateRange varchar(255) not null
	,x270SendPrv varchar(255) not null
	,x270SendEbAddlInfo varchar(255) not null
	,BestMatchCpt varchar(255) not null
	,DoNotAddSalesTax varchar(255) not null
	,enrollmentReq varchar(255) not null
	,CountryCode varchar(255) not null
	,NDCFormat varchar(255) null
	,X270SendDoi varchar(255) not null
	,X270SendDosAsDoi varchar(255) not null
	,SendHyphenInTaxId varchar(255) not null
	,IsAnesthesiaMinutesInHCFA varchar(255) not null
	,PrimaryTimelyFiling varchar(255) not null
	,SecondaryTimelyFiling varchar(255) not null
	,IsServiceLocationAddressinLoop2010AA varchar(255) not null
	,NoPrimaryOtafIn2400 varchar(255) not null
	,StripLeadingZeroFromMoney varchar(255) not null
	,SendMedicalRecordNumber varchar(255) not null
	,x270SendGroupNo varchar(255) not null
	,x270SendRelationShip varchar(255) not null
	,x270SendSSN varchar(255) not null
	,x270SendInsuredN4 varchar(255) not null
	,StripTrailingZerosFromMoney varchar(255) not null
	,insuranceNameANSI varchar(255) not null
	,HPSAQualify varchar(255) not null
	,PrintEPSDTDataInHcfa10d varchar(255) not null
	,ConsiderToothNumberAsModifier varchar(255) not null
	,DoNotAddFinanceChrg varchar(255) not null
	,CapitationType varchar(255) null
	,LiabilityCarrierCode varchar(255) not null
	,ecwMasterId varchar(255) not null
	,EnterpriseId varchar(255) not null
	,DoNotChangeClmAssgnmntAfterCapAdj varchar(255) not null
	,modifiedDate varchar(255) not null
	,AdditionalMask varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_insurance] primary key ([insId])

	)

------------------------------

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

create table labdatadetail

	(
	ReportId varchar(255) not null
	,PropId varchar(255) not null
	,Value varchar(255) null
	,importFlag varchar(255) not null
	,Id varchar(255) not null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,TestID varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labdatadetail] primary key ([Id])

	)

------------------------------

create table labdataex

	(
	reportId varchar(255) not null
	,HL7ResultDate varchar(255) null
	,HL7ResultTime varchar(255) null
	,urllink varchar(255) null
	,interfacestatus varchar(255) null
	,processedresult varchar(255) null
	,VisitType varchar(255) not null
	,DateReceived varchar(255) not null
	,resultrcvddatetime varchar(255) not null
	,MigrateFlag varchar(255) not null
	,SentOutReqNo varchar(255) not null
	,facilityId varchar(255) not null
	,specimenReceiveTime varchar(255) not null
	,specimenReceiveDate varchar(255) not null
	,isPACSLinkEnabled varchar(255) not null
	,observationDate varchar(255) not null
	,observationTime varchar(255) not null
	,SpecimenActionCode varchar(255) not null
	,PlacerGroupNumberID varchar(255) not null
	,PatientAltRace varchar(255) not null
	,bodysitecode varchar(255) not null
	,ABNPrompted varchar(255) not null
	,ABNOption varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labdataex] primary key ([reportId])

	)

------------------------------

create table lablist

	(
	ID varchar(255) not null
	,name varchar(255) not null
	,deleteFlag varchar(255) not null
	,LabId varchar(255) not null
	,labaddress varchar(255) not null
	,labaddress2 varchar(255) not null
	,labcity varchar(255) not null
	,labstate varchar(255) not null
	,labzip varchar(255) not null
	,labphone varchar(255) not null
	,labfax varchar(255) not null
	,labemail varchar(255) null
	,interfaceConfigured varchar(255) not null
	,sendoutboundresult varchar(255) null
	,labcompanyType varchar(255) not null
	,inHouseLab varchar(255) not null
	,ResultLabId varchar(255) not null
	,labCode varchar(255) not null
	,superhubInterfaceID varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_lablist] primary key ([ID])

	)

------------------------------

create table labloinccodes

	(
	itemid varchar(255) not null
	,code varchar(255) not null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,deleteflag varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labloinccodes] primary key ([itemid])

	)

------------------------------

create table language_codes

	(
	Name varchar(255) not null
	,Favorite varchar(255) null
	,Code varchar(255) null
	,LangID varchar(255) not null
	,isocode1 varchar(255) null
	,isocode2 varchar(255) null
	,isoname varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_language_codes] primary key ([LangID])

	)

------------------------------

create table letterlogs

	(
	Id varchar(255) not null
	,patientId varchar(255) not null
	,letterId varchar(255) not null
	,letterName varchar(255) not null
	,printedBy varchar(255) not null
	,date varchar(255) not null
	,time varchar(255) not null
	,categoryID varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_letterlogs] primary key ([Id])

	)

------------------------------

create table logptspecificdata

	(
	id varchar(255) not null
	,patientid varchar(255) not null
	,truserid varchar(255) not null
	,modified_date varchar(255) not null
	,modified_time varchar(255) not null
	,timestamp varchar(255) not null
	,status varchar(255) not null
	,truser_name varchar(255) not null
	,action varchar(255) not null
	,dataelementid varchar(255) not null
	,logptspecificid varchar(255) not null
	,itemid varchar(255) not null
	,encounterid varchar(255) not null
	,data varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_logptspecificdata] primary key ([id])

	)

------------------------------

create table oldrxdetail

	(
	OldRxId varchar(255) null
	,Prop varchar(255) not null
	,value varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_oldrxdetail] primary key ([Id])

	)

------------------------------

create table problemlist_ext

	(
	Id varchar(255) not null
	,PatientId varchar(255) not null
	,NKPFlag varchar(255) not null
	,NKPDate varchar(255) null
	,deleteFlag varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_problemlist_ext] primary key ([Id])

	)

------------------------------

create table loincmaster

	(
	LOINC_NUM varchar(255) not null
	,COMPONENT varchar(255) null
	,PROPERTY varchar(255) null
	,TIME_ASPCT varchar(255) null
	,SYSTEM varchar(255) null
	,SCALE_TYP varchar(255) null
	,METHOD_TYP varchar(255) null
	,RELAT_NMS varchar(255) null
	,CLASS varchar(255) null
	,SOURCE varchar(255) null
	,DT_LAST_CH varchar(255) null
	,CHNG_TYPE varchar(255) null
	,COMMENTS varchar(255) null
	,ANSWERLIST varchar(255) null
	,STATUS varchar(255) null
	,MAP_TO varchar(255) null
	,SCOPE varchar(255) null
	,CONSUMER_NAME varchar(255) null
	,IPCC_UNITS varchar(255) null
	,REFERENCE varchar(255) null
	,EXACT_CMP_SY varchar(255) null
	,MOLAR_MASS varchar(255) null
	,CLASSTYPE varchar(255) null
	,FORMULA varchar(255) null
	,SPECIES varchar(255) null
	,EXMPL_ANSWERS varchar(255) null
	,ACSSYM varchar(255) null
	,BASE_NAME varchar(255) null
	,FINAL varchar(255) null
	,NAACCR_ID varchar(255) null
	,CODE_TABLE varchar(255) null
	,SETROOT varchar(255) null
	,PanelElements varchar(255) null
	,SURVEY_QUEST_TEXT varchar(255) null
	,SURVEY_QUEST_SRC varchar(255) null
	,UnitsRequired varchar(255) null
	,SUBMITTED_UNITS varchar(255) null
	,RelatedNames2 varchar(255) null
	,SHORTNAME varchar(255) null
	,ORDER_OBS varchar(255) null
	,CDISC_COMMON_TESTS varchar(255) null
	,HL7_FIELD_SUBFIELD_ID varchar(255) null
	,EXTERNAL_COPYRIGHT_NOTICE varchar(255) null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,deleteflag varchar(255) not null
	,EXAMPLE_UNITS varchar(255) null
	,INPC_PERCENTAGE varchar(255) null
	,LONG_COMMON_NAME varchar(255) null
	,HL7_V2_DATATYPE varchar(255) null
	,HL7_V3_DATATYPE varchar(255) null
	,CURATED_RANGE_AND_UNITS varchar(255) null
	,DOCUMENT_SECTION varchar(255) null
	,DEFINITION_DESCRIPTION_HELP varchar(255) null
	,EXAMPLE_UCUM_UNITS varchar(255) null
	,EXAMPLE_SI_UCUM_UNITS varchar(255) null
	,STATUS_REASON varchar(255) null
	,STATUS_TEXT varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_loincmaster] primary key ([LOINC_NUM])

	)

------------------------------

create table patients

	(
	pid varchar(255) not null
	,ControlNo varchar(255) not null
	,employername varchar(255) not null
	,employeraddress varchar(255) null
	,employeraddress2 varchar(255) not null
	,employercity varchar(255) null
	,employerstate varchar(255) null
	,employerzip varchar(255) null
	,employerPhone varchar(255) null
	,msgflag varchar(255) null
	,insname varchar(255) null
	,insgroupno varchar(255) null
	,inssubscriberno varchar(255) null
	,inscopay varchar(255) null
	,pastHistory varchar(255) null
	,pharmacyname varchar(255) null
	,pharmacyno varchar(255) null
	,surgicalHistory varchar(255) null
	,hospitalization varchar(255) null
	,medications varchar(255) null
	,insname2 varchar(255) null
	,insgroupno2 varchar(255) null
	,inssubscriberno2 varchar(255) null
	,inscopay2 varchar(255) null
	,straddress varchar(255) null
	,city varchar(255) null
	,state varchar(255) null
	,zip varchar(255) null
	,doctorId varchar(255) not null
	,AttendingDoctorId varchar(255) not null
	,pharmacyFax varchar(255) null
	,pmcId varchar(255) null
	,insId varchar(255) null
	,insId2 varchar(255) null
	,maritalstatus varchar(255) not null
	,strAddress2 varchar(255) null
	,notes varchar(255) not null
	,deceased varchar(255) not null
	,deceasedDate varchar(255) not null
	,deceasedNotes varchar(255) not null
	,language varchar(255) not null
	,GrId varchar(255) not null
	,GrRel varchar(255) not null
	,IsGrPt varchar(255) not null
	,GrType varchar(255) not null
	,PrimIns varchar(255) not null
	,ResType varchar(255) not null
	,StudentStatus varchar(255) not null
	,EmpStatus varchar(255) not null
	,picFileName varchar(255) not null
	,RelInfo varchar(255) not null
	,RelInfoDate varchar(255) null
	,PayorType varchar(255) not null
	,SelfPay varchar(255) not null
	,hl7Id varchar(255) not null
	,BillingAlert varchar(255) not null
	,BillingAlertNotes varchar(255) not null
	,givenToColl varchar(255) not null
	,givenDate varchar(255) null
	,DefFeeSchId varchar(255) not null
	,race varchar(255) not null
	,PtStatus varchar(255) null
	,ptStmtDate varchar(255) null
	,refPrId varchar(255) null
	,rendPrId varchar(255) null
	,nostatements varchar(255) not null
	,CurrentCollectionStatus varchar(255) not null
	,CollectionTimestamp varchar(255) not null
	,interpretSvc varchar(255) null
	,GlobalAlert varchar(255) not null
	,characterestic varchar(255) not null
	,CollectionStageDate varchar(255) not null
	,regdate varchar(255) null
	,ethnicity varchar(255) null
	,vfc varchar(255) null
	,empId varchar(255) not null
	,irisenroll varchar(255) not null
	,CollectionAgencyStatus varchar(255) null
	,RxConsent varchar(255) null
	,acctbal varchar(255) null
	,CollStartStopDt varchar(255) null
	,MailOrderPharmacyId varchar(255) null
	,MOMemberId varchar(255) null
	,teamMember varchar(255) not null
	,bTranslator varchar(255) null
	,Address2Country varchar(255) not null
	,VoiceEnabled varchar(255) null
	,assignedtoId varchar(255) not null
	,assignedto varchar(255) not null
	,UseStreetAddressForRxFlag varchar(255) null
	,textenabled varchar(255) null
	,GrStmtDate varchar(255) null
	,msgCellflag varchar(255) null
	,enableEmail varchar(255) null
	,enableLetters varchar(255) null
	,webEnabledDate varchar(255) null
	,preset varchar(255) null
	,encpwd varchar(255) null
	,lognotes varchar(255) null
	,optout varchar(255) null
	,optreasonId varchar(255) null
	,IsMigratedRecord varchar(255) null
	,DefaultLab varchar(255) not null
	,DefaultDI varchar(255) not null
	,emailreasonId varchar(255) null
	,isKioskConsentReceived varchar(255) null
	,isPtOptsOut varchar(255) not null
	,secureMsgKey varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_patients] primary key ([pid])

	)

------------------------------

create table problemlist

	(
	patientId varchar(255) not null
	,encounterId varchar(255) not null
	,asmtId varchar(255) not null
	,specify varchar(255) not null
	,notes varchar(255) not null
	,deleteFlag varchar(255) not null
	,onsetdate varchar(255) null
	,userid varchar(255) not null
	,logdate varchar(255) not null
	,inactiveFlag varchar(255) not null
	,WUStatus varchar(255) not null
	,condition varchar(255) not null
	,SlNo varchar(255) not null
	,displayIndex varchar(255) not null
	,Risk varchar(255) not null
	,AddedDate varchar(255) not null
	,ProblemType varchar(255) not null
	,Resolved varchar(255) not null
	,resolvedon varchar(255) not null
	,SNOMED varchar(255) not null
	,SNOMEDDesc varchar(255) null
	,SNOMEDDescID varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_problemlist] primary key ([SlNo])

	)

------------------------------

create table procedurespl

	(
	encounterId varchar(255) not null
	,catID varchar(255) not null
	,itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,displayIndex varchar(255) not null
	,VALUE2 varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_procedurespl] primary key ([Id])

	)

------------------------------

create table progressnotes

	(
	encounterID varchar(255) not null
	,summary varchar(255) not null
	,xslId varchar(255) not null
	,unlocked varchar(255) not null
	,ModifyDate varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_progressnotes] primary key ([Id])

	)

------------------------------

create table properties

	(
	propID varchar(255) not null
	,name varchar(255) not null
	,description varchar(255) null
	,type varchar(255) null
	,viewtype varchar(255) null
	,size varchar(255) null
	,displayName varchar(255) null
	,pdetailID varchar(255) null
	,displayIndex varchar(255) null
	,delPropFlag varchar(255) not null
	,vmid varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_properties] primary key ([propID])

	)

------------------------------

create table pt_adv_directives

	(
	Id varchar(255) not null
	,PtId varchar(255) not null
	,Code varchar(255) not null
	,Name varchar(255) not null
	,MDate varchar(255) not null
	,delflag varchar(255) null
	,displayindex varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_pt_adv_directives] primary key ([Id])

	)

------------------------------

create table pt_emailreason

	(
	id varchar(255) not null
	,description varchar(255) null
	,delflag varchar(255) null
	,displayindex varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_pt_emailreason] primary key ([id])

	)

------------------------------

create table ref_attachments

	(
	id varchar(255) not null
	,RefId varchar(255) null
	,doctype varchar(255) not null
	,docId varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_ref_attachments] primary key ([id])

	)

------------------------------

create table referral

	(
	ReferralId varchar(255) not null
	,patientID varchar(255) not null
	,insId varchar(255) not null
	,refFrom varchar(255) not null
	,authNo varchar(255) not null
	,date varchar(255) not null
	,reason varchar(255) not null
	,diagnosis varchar(255) not null
	,refStDate varchar(255) not null
	,refEnddate varchar(255) not null
	,visitsAllowed varchar(255) not null
	,visitsUsed varchar(255) not null
	,RefTo varchar(255) not null
	,notes varchar(255) not null
	,deleteFlag varchar(255) not null
	,referralType varchar(255) not null
	,priority varchar(255) not null
	,assignedTo varchar(255) not null
	,assignedToId varchar(255) not null
	,status varchar(255) not null
	,authtype varchar(255) not null
	,procedures varchar(255) not null
	,fromfacility varchar(255) not null
	,ToFacility varchar(255) not null
	,speciality varchar(255) not null
	,POS varchar(255) not null
	,UnitType varchar(255) not null
	,FrontOfficeAuth varchar(255) null
	,ReferralNumber varchar(255) not null
	,apptDate varchar(255) not null
	,clinicalNotes varchar(255) null
	,ReceivedDate varchar(255) not null
	,refEncId varchar(255) not null
	,ApptTime varchar(255) not null
	,extNHXApptBlockId varchar(255) not null
	,extNHXRefTxId varchar(255) not null
	,refReqId varchar(255) not null
	,refFromP2pNPI varchar(255) not null
	,refFromName varchar(255) not null
	,refToP2pNPI varchar(255) not null
	,refToName varchar(255) not null
	,uploadedToPtDocs varchar(255) not null
	,modifiedDate varchar(255) not null
	,refToCCNameList varchar(255) null
	,refToCCNPIList varchar(255) null
	,p2pDeliveryStatus varchar(255) null
	,statusUpdateDate varchar(255) not null
	,ccdaValidationStatus varchar(255) null
	,fromDirectAddress varchar(255) not null
	,toDirectAddress varchar(255) not null
	,toDirectAddress1 varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_referral] primary key ([ReferralId])

	)

------------------------------

create table social

	(
	encounterID varchar(255) not null
	,catID varchar(255) not null
	,itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_social] primary key ([ID])

	)

------------------------------

create table structdatadetail

	(
	Id varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,name varchar(255) not null
	,type varchar(255) not null
	,mandatory varchar(255) not null
	,displayIndex varchar(255) not null
	,deleteFlag varchar(255) not null
	,parentId varchar(255) not null
	,triggerflag varchar(255) not null
	,itemType varchar(255) not null
	,nodeLevel varchar(255) not null
	,tblName varchar(255) not null
	,chartDisplay varchar(255) null
	,multiSelect varchar(255) not null
	,IsSearchable varchar(255) null
	,defaultValue varchar(255) null
	,defaultValueId varchar(255) null
	,modifynotes varchar(255) null
	,readonly varchar(255) null
	,dropdown varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structdatadetail] primary key ([Id])

	)

------------------------------

create table structexam

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,displayIndex varchar(255) not null
	,chartdisplay varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structexam] primary key ([Id])

	)

------------------------------

create table smsmsglogs

	(
	ID varchar(255) not null
	,ToSMSName varchar(255) null
	,ToSMSNumber varchar(255) null
	,ToSMSProvider varchar(255) null
	,Retry varchar(255) null
	,SMSMessageID varchar(255) null
	,SMSMESSAGEBODY varchar(255) null
	,SmsMessageStatus varchar(255) null
	,smsMessageType varchar(255) null
	,SMSSubject varchar(255) null
	,sentdate varchar(255) not null
	,SentTime varchar(255) null
	,ScheduledDate varchar(255) null
	,ScheduledTime varchar(255) null
	,FromSMSName varchar(255) null
	,FromSMSNumber varchar(255) null
	,FromSMSProvider varchar(255) null
	,ClientId varchar(255) null
	,Priority varchar(255) null
	,EcwWebSMSUser varchar(255) null
	,ErrorId varchar(255) null
	,ErrorMsg varchar(255) null
	,DateCreated varchar(255) not null
	,isDeleted varchar(255) null
	,EncounterID varchar(255) null
	,LabID varchar(255) null
	,PatientId varchar(255) null
	,FacilityId varchar(255) null
	,PtStatementId varchar(255) null
	,Language varchar(255) null
	,SMSMsgUser varchar(255) null
	,SMSMsgPwd varchar(255) null
	,AppServMachineName varchar(255) null
	,AppServMachineIP varchar(255) null
	,AppServMacAddr varchar(255) null
	,SentByLastName varchar(255) null
	,SentByFirstName varchar(255) not null
	,SentBy varchar(255) null
	,VendorMsgId varchar(255) null
	,VendorSMSresponse varchar(255) null
	,TemplateId varchar(255) null
	,uploadlocation varchar(255) null
	,DoctorId varchar(255) null
	,RequiredConfirm varchar(255) null
	,ConfirmNumber varchar(255) null
	,smsmsgreply varchar(255) null
	,smsmsgreply_id varchar(255) null
	,parentid varchar(255) not null
	,ActualMessage varchar(255) null
	,ResourceId varchar(255) not null
	,msgSource varchar(255) null
	,ecwversion varchar(255) null
	,ecmversion varchar(255) null
	,AutoUpgradeKey varchar(255) null
	,FaxLogId varchar(255) null
	,eRxReqID varchar(255) null
	,eRxReFillReqID varchar(255) null
	,campaignid varchar(255) not null
	,campaign varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_smsmsglogs] primary key ([ID])

	)

------------------------------

create table structhpi

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) not null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,chartdisplay varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structhpi] primary key ([Id])

	)

------------------------------

create table structpreventive

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,chartdisplay varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structpreventive] primary key ([Id])

	)

------------------------------

create table structsocialhistory

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,chartdisplay varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structsocialhistory] primary key ([Id])

	)

------------------------------

create table surescript_eprescription

	(
	ReqID varchar(255) not null
	,RxType varchar(255) null
	,MessageID varchar(255) null
	,RelatedMessageID varchar(255) null
	,SentTo varchar(255) null
	,SentFrom varchar(255) null
	,SentTime varchar(255) null
	,MessageText varchar(255) null
	,StatusDesc varchar(255) null
	,AttemptNo varchar(255) null
	,LastAttemptTimeStamp varchar(255) null
	,PatientID varchar(255) not null
	,encounterID varchar(255) null
	,Patient_FName varchar(255) null
	,Patient_LName varchar(255) null
	,Patient_MName varchar(255) null
	,DateOfBirth varchar(255) null
	,Sex varchar(255) null
	,Ssn varchar(255) null
	,AddressLine1 varchar(255) null
	,AddressLine2 varchar(255) null
	,City varchar(255) null
	,State varchar(255) null
	,ZipCode varchar(255) null
	,Patient_PrimaryPhone varchar(255) null
	,Patient_CellPhone varchar(255) null
	,Patient_Fax varchar(255) null
	,Patient_Email varchar(255) null
	,DoctorID varchar(255) not null
	,SPI varchar(255) null
	,StateLicenseNumber varchar(255) null
	,doc_ssn varchar(255) null
	,DEANo varchar(255) null
	,doc_FName varchar(255) null
	,doc_LName varchar(255) null
	,doc_MName varchar(255) null
	,doc_suffix varchar(255) null
	,Speciality varchar(255) null
	,SpecialityCode varchar(255) null
	,doc_AddressLine1 varchar(255) null
	,doc_AddressLine2 varchar(255) null
	,doc_City varchar(255) null
	,doc_State varchar(255) null
	,doc_Zipcode varchar(255) null
	,doc_Primaryphone varchar(255) null
	,doc_Pagerno varchar(255) null
	,doc_Mobilephone varchar(255) null
	,PharmacyID varchar(255) not null
	,NCPDPID varchar(255) null
	,PharmacyName varchar(255) null
	,Pharmacy_AddressLine1 varchar(255) null
	,Pharmacy_City varchar(255) null
	,Pharmacy_State varchar(255) null
	,Pharmacy_Zipcode varchar(255) null
	,Pharmacy_Phone varchar(255) null
	,Pharmacy_Fax varchar(255) null
	,Pharmacy_Email varchar(255) null
	,DrugDescription varchar(255) null
	,ProductCode varchar(255) null
	,ProductCodeQualifier varchar(255) null
	,DosageForm varchar(255) null
	,Strength varchar(255) null
	,StrengthUnits varchar(255) null
	,DrugDBCode varchar(255) null
	,DrugDBCodeQualifier varchar(255) null
	,Frequency varchar(255) null
	,duration varchar(255) null
	,Quantity varchar(255) null
	,Take varchar(255) null
	,Refills varchar(255) null
	,SubsMedAllowed varchar(255) null
	,Comments varchar(255) null
	,XMLData varchar(255) null
	,XMLResponseData varchar(255) null
	,RefillsQualifier varchar(255) null
	,bAsynMsgPostedToDoc varchar(255) null
	,bVerified varchar(255) null
	,ScriptVersion varchar(255) null
	,SentBy varchar(255) null
	,RxhubId varchar(255) null
	,RouteSource varchar(255) not null
	,Addressed varchar(255) null
	,AddressedBy varchar(255) null
	,PrescriberOrderNo varchar(255) null
	,SentById varchar(255) null
	,IpAddress varchar(255) null
	,isVoiceMsgSent varchar(255) not null
	,isTextMsgSent varchar(255) null
	,rxOrderNo varchar(255) null
	,DEASchedule varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_surescript_eprescription] primary key ([ReqID])

	)

------------------------------

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

create table users

	(
	uid varchar(255) not null
	,uname varchar(255) not null
	,upwd varchar(255) null
	,udesc varchar(255) null
	,uroomno varchar(255) not null
	,umobileno varchar(255) not null
	,upagerno varchar(255) not null
	,ufname varchar(255) null
	,uminitial varchar(255) null
	,ulname varchar(255) null
	,uemail varchar(255) null
	,uwebpage varchar(255) null
	,upaddress varchar(255) null
	,upcity varchar(255) not null
	,upstate varchar(255) null
	,upPhone varchar(255) null
	,UserType varchar(255) null
	,zipcode varchar(255) null
	,dob varchar(255) null
	,ssn varchar(255) null
	,mflag varchar(255) null
	,updid varchar(255) null
	,cdate varchar(255) null
	,mdate varchar(255) not null
	,sex varchar(255) null
	,upaddress2 varchar(255) null
	,suffix varchar(255) null
	,prefix varchar(255) null
	,initials varchar(255) not null
	,ptDob varchar(255) not null
	,delFlag varchar(255) not null
	,vmid varchar(255) not null
	,status varchar(255) null
	,webenabled varchar(255) null
	,websync varchar(255) null
	,changePass varchar(255) null
	,primaryservicelocation varchar(255) not null
	,upreviousname varchar(255) null
	,IsResource varchar(255) not null
	,EligibilityStatus varchar(255) not null
	,OSUUserType varchar(255) not null
	,DefApptProvForResource varchar(255) not null
	,locked varchar(255) null
	,EncEligibilityStatus2 varchar(255) not null
	,EligibilityMessage2 varchar(255) not null
	,EncEligibilityStatus3 varchar(255) not null
	,EligibilityMessage3 varchar(255) not null
	,EncEligibilityStatus varchar(255) not null
	,EligibilityMessage varchar(255) not null
	,AllFacilities varchar(255) not null
	,Emrsex varchar(255) not null
	,CountryCode varchar(255) not null
	,transgender varchar(255) not null
	,EnterpriseId varchar(255) not null
	,gestationalAge varchar(255) not null
	,timeofbirth varchar(255) null
	,LANGUAGE varchar(255) not null
	,county varchar(255) not null
	,isCredentialed varchar(255) null
	,EncEligibilityStatus4 varchar(255) not null
	,EligibilityMessage4 varchar(255) not null
	,ACOUserType varchar(255) not null
	,credentialschange varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_users] primary key ([uid])

	)

------------------------------

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

create table visitsummarylog

	(
	id varchar(255) not null
	,encId varchar(255) null
	,uid varchar(255) null
	,requestDate varchar(255) null
	,requestedBy varchar(255) null
	,vsdata varchar(255) null
	,status varchar(255) null
	,loggedfrom varchar(255) not null
	,ccddata varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_visitsummarylog] primary key ([id])

	)

------------------------------

create table vitals

	(
	encounterID varchar(255) not null
	,vitalID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) not null
	,Id varchar(255) not null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,defaultValue varchar(255) not null
	,valueHtm varchar(255) not null
	,value2 varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_vitals] primary key ([Id])

	)

------------------------------

create table voicemsglogs

	(
	ID varchar(255) not null
	,ToName varchar(255) null
	,ContactType varchar(255) null
	,ToPhone varchar(255) null
	,Retry varchar(255) null
	,voiceMessageStatus varchar(255) null
	,SentDate varchar(255) null
	,Priority varchar(255) null
	,VoiceMessageType varchar(255) null
	,VoiceMessageLiveText varchar(255) null
	,VoiceMessageLiveAudio varchar(255) null
	,VoiceMessageMachineText varchar(255) null
	,VoiceMessageMachineAudio varchar(255) null
	,InitialGreetingAudio varchar(255) null
	,VoiceMessageId varchar(255) null
	,Date_Created varchar(255) not null
	,Date_Modified varchar(255) null
	,isDeleted varchar(255) null
	,StatusMsg varchar(255) null
	,CallerIDNumber varchar(255) null
	,InitialGreetingAudioText varchar(255) null
	,OtherContactType varchar(255) null
	,EncounterID varchar(255) null
	,MaxLiveReplays varchar(255) null
	,OperatorNumber varchar(255) null
	,ConfirmationStatus varchar(255) null
	,DeliveryType varchar(255) null
	,ErrorMsg varchar(255) null
	,LabID varchar(255) not null
	,ConfirmCancelEnabled varchar(255) null
	,PatientId varchar(255) null
	,PtStatementId varchar(255) null
	,Language varchar(255) null
	,ScheduledDate varchar(255) not null
	,ScheduledTime varchar(255) not null
	,SentByLastName varchar(255) not null
	,SentByFirstName varchar(255) not null
	,SentBy varchar(255) not null
	,FacilityId varchar(255) not null
	,SentTime varchar(255) not null
	,uploadLocation varchar(255) null
	,TTSVoice varchar(255) null
	,VMsgUser varchar(255) null
	,VMsgPwd varchar(255) null
	,AppServMachineName varchar(255) null
	,AppServMachineIP varchar(255) null
	,parentid varchar(255) null
	,recordurl varchar(255) null
	,StatusDetail varchar(255) null
	,ResourceId varchar(255) not null
	,recordedMessageId varchar(255) null
	,ecwVersion varchar(255) null
	,ecmVersion varchar(255) null
	,timeZone varchar(255) null
	,retryfailedmsg varchar(255) not null
	,ApptStatus varchar(255) null
	,ivrvalue varchar(255) not null
	,AutoUpgradeKey varchar(255) null
	,OtherContactNumbers varchar(255) null
	,ErrorCode varchar(255) not null
	,MsgExpireTime varchar(255) null
	,PtPin varchar(255) not null
	,PtPinType varchar(255) null
	,isMsgSecured varchar(255) not null
	,msgSource varchar(255) null
	,providerGreetingsUid varchar(255) null
	,ClientResponse varchar(255) not null
	,messageJobType varchar(255) not null
	,FaxLogId varchar(255) not null
	,eRxReqID varchar(255) not null
	,eRxReFillReqID varchar(255) not null
	,providerid varchar(255) not null
	,campaignid varchar(255) not null
	,campaign varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_voicemsglogs] primary key ([ID])

	)

------------------------------
create table alertdata

	(
	Id varchar(255) not null
	,PatientId varchar(255) not null
	,MeasureId varchar(255) not null
	,MeasureName varchar(255) not null
	,ItemId varchar(255) not null
	,Frequency varchar(255) not null
	,LastDone varchar(255) not null
	,DueDate varchar(255) not null
	,Value varchar(255) not null
	,controlstatus varchar(255) not null
	,RegistryAlert varchar(255) not null
	,labReceived varchar(255) not null
	,mdate varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_alertdata] primary key ([Id])

	)

------------------------------

create table alertoverride

	(
	Id varchar(255) not null
	,PatientId varchar(255) not null
	,MeasureId varchar(255) not null
	,DueDate varchar(255) null
	,NeverRemind varchar(255) not null
	,Reason varchar(255) null
	,status varchar(255) not null
	,statusLabel varchar(255) not null
	,reset varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_alertoverride] primary key ([Id])

	)

------------------------------

create table allergies

	(
	patientID varchar(255) not null
	,drug varchar(255) null
	,allergy varchar(255) not null
	,encounterId varchar(255) null
	,itemID varchar(255) null
	,displayIndex varchar(255) null
	,SMDamConceptID varchar(255) null
	,SMDamConceptIDDesc varchar(255) null
	,ndc_code varchar(255) null
	,allergytype varchar(255) not null
	,type varchar(255) not null
	,status varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_allergies] primary key ([Id])

	)

------------------------------

create table billingdata

	(
	Id varchar(255) not null
	,EncounterId varchar(255) not null
	,itemID varchar(255) not null
	,date varchar(255) null
	,endDate varchar(255) null
	,endData varchar(255) null
	,providerId varchar(255) not null
	,Notes varchar(255) null
	,displayIndex varchar(255) null
	,deleteFlag varchar(255) not null
	,Mod1 varchar(255) not null
	,Mod2 varchar(255) not null
	,Mod3 varchar(255) not null
	,units varchar(255) not null
	,codeFlag varchar(255) not null
	,Icd1 varchar(255) not null
	,Icd2 varchar(255) not null
	,Icd3 varchar(255) not null
	,Icd4 varchar(255) not null
	,icdcode1 varchar(255) not null
	,icdcode2 varchar(255) not null
	,icdcode3 varchar(255) not null
	,icdcode4 varchar(255) not null
	,vitalCpt varchar(255) not null
	,Mod4 varchar(255) not null
	,ToothNumber varchar(255) not null
	,Surface varchar(255) not null
	,documentedTime varchar(255) null
	,ndccode varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_billingdata] primary key ([Id])

	)

------------------------------

create table contacts

	(
	contactId varchar(255) not null
	,pid varchar(255) not null
	,name varchar(255) not null
	,relation varchar(255) not null
	,address varchar(255) not null
	,address2 varchar(255) not null
	,city varchar(255) not null
	,state varchar(255) not null
	,zipcode varchar(255) not null
	,homePhone varchar(255) not null
	,workPhone varchar(255) not null
	,vmid varchar(255) not null
	,delflag varchar(255) not null
	,Lname varchar(255) not null
	,Fname varchar(255) not null
	,MI varchar(255) null
	,Guardian varchar(255) null
	,RelatedPtId varchar(255) not null
	,HExt varchar(255) not null
	,WExt varchar(255) not null
	,Type1 varchar(255) not null
	,Type2 varchar(255) not null
	,Fax varchar(255) not null
	,Email varchar(255) not null
	,Notes varchar(255) not null
	,Hippa varchar(255) null
	,displayorder varchar(255) null
	,maidenname varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_contacts] primary key ([contactId])

	)

------------------------------

create table diagnosis

	(
	EncounterId varchar(255) not null
	,ItemId varchar(255) null
	,PrimaryAsmt varchar(255) null
	,Specify varchar(255) null
	,Notes varchar(255) null
	,displayIndex varchar(255) null
	,axis varchar(255) not null
	,AsmtOnsetDate varchar(255) null
	,SlNo varchar(255) not null
	,websync varchar(255) null
	,Risk varchar(255) not null
	,SNOMED varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_diagnosis] primary key ([SlNo])

	)

------------------------------

create table edi_employmentstatus

	(
	Code varchar(255) not null
	,Name varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_edi_employmentstatus] primary key ([doctorID])

	)

------------------------------

create table edi_speciality

	(
	Id varchar(255) not null
	,Speciality varchar(255) not null
	,Code varchar(255) not null
	,deleteFlag varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_edi_speciality] primary key ([Id])

	)

------------------------------

create table encounter

	(
	encounterID varchar(255) not null
	,doctorID varchar(255) not null
	,patientID varchar(255) not null
	,date varchar(255) null
	,time varchar(255) null
	,reason varchar(255) null
	,visitType varchar(255) null
	,roomno varchar(255) null
	,status varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_encounter] primary key ([encounterID])

	)

------------------------------

create table ethnicity

	(
	Code varchar(255) null
	,Name varchar(255) null
	,EthId varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_ethnicity] primary key ([EthId])

	)

------------------------------

create table familydata

	(
	encounterID varchar(255) not null
	,itemID varchar(255) not null
	,name varchar(255) null
	,status varchar(255) null
	,age varchar(255) null
	,dob varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_familydata] primary key ([EthId])

	)

------------------------------

create table immunizationstatus

	(
	Id varchar(255) not null
	,ImmStatusId varchar(255) not null
	,CODE varchar(255) null
	,Description varchar(255) not null
	,TYPE varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_immunizationstatus] primary key ([Id])

	)

------------------------------

create table itemdetail

	(
	itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_itemdetail] primary key ([Id])

	)

------------------------------

create table labcptmap

	(
	labCode varchar(255) null
	,cptCode varchar(255) null
	,Id varchar(255) not null
	,CptItemId varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labcptmap] primary key ([Id])

	)

------------------------------

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

create table edi_facilities

	(
	Id varchar(255) not null
	,FacilityType varchar(255) not null
	,Name varchar(255) not null
	,AddressLine1 varchar(255) not null
	,AddressLine2 varchar(255) not null
	,City varchar(255) not null
	,State varchar(255) not null
	,Zip varchar(255) not null
	,Tel varchar(255) not null
	,Fax varchar(255) not null
	,EMail varchar(255) not null
	,BillingAddressLine1 varchar(255) not null
	,BillingAddressLine2 varchar(255) not null
	,BillingCity varchar(255) not null
	,BillingState varchar(255) not null
	,BillingZip varchar(255) not null
	,BillingTel varchar(255) not null
	,BillingFax varchar(255) not null
	,BillingEMail varchar(255) not null
	,PracticeType varchar(255) not null
	,PracticeOption varchar(255) not null
	,PayableTo varchar(255) not null
	,BankAccount varchar(255) not null
	,FederalTaxID varchar(255) not null
	,Notes varchar(255) not null
	,PrimaryFacility varchar(255) not null
	,CliaId varchar(255) not null
	,code varchar(255) not null
	,POS varchar(255) not null
	,MammoCertId varchar(255) not null
	,HPSAFlag varchar(255) not null
	,HPSAModifier varchar(255) not null
	,DeleteFlag varchar(255) not null
	,vmid varchar(255) not null
	,hl7id varchar(255) not null
	,Color varchar(255) null
	,FeeSchedule varchar(255) not null
	,FacilityIdType varchar(255) not null
	,PtStmtFacOption varchar(255) not null
	,PtStmtFacId varchar(255) not null
	,RestrictPrintAppts varchar(255) null
	,NPI varchar(255) not null
	,ImmStateId varchar(255) not null
	,TaxonomyCode varchar(255) not null
	,RestrictPrintStmts varchar(255) not null
	,startedOn varchar(255) null
	,RevenueCode varchar(255) null
	,Percent varchar(255) not null
	,OverrideSalesTax varchar(255) not null
	,MerchantID varchar(255) not null
	,ImmLocationId varchar(255) not null
	,TimeZoneCode varchar(255) null
	,MessCallerId varchar(255) null
	,MessOperNum varchar(255) null
	,CreditCardOption varchar(255) not null
	,CountryCode varchar(255) not null
	,BillingCountryCode varchar(255) not null
	,Immfacid varchar(255) null
	,BillType varchar(255) not null
	,takeNewPortalAppts varchar(255) null
	,portal_name varchar(255) null
	,takenewportalmsg varchar(255) null
	,showinpi varchar(255) null
	,modifiedDate varchar(255) not null
	,nsexclude varchar(255) not null
	,facilitysmsname varchar(255) not null
	,birthdayexclude varchar(255) not null
	,ASC_TN_FacilityType varchar(255) null
	,ASC_TN_FacilityId varchar(255) null
	,facilitynickname varchar(255) null
	,exclude varchar(255) not null
	,labexclude varchar(255) not null
	,ASC_WI_FacilityType varchar(255) null
	,rxexclude varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_edi_facilities] primary key ([Id])

	)

------------------------------

create table familyhxdetails

	(
	encounterId varchar(255) not null
	,itemId varchar(255) not null
	,icdItemid varchar(255) not null
	,icdCode varchar(255) not null
	,icdDesc varchar(255) not null
	,snomedCode varchar(255) not null
	,diagnosedYear varchar(255) not null
	,diagnosedAge varchar(255) not null
	,name varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_familyhxdetails] primary key ([EthId])

	)

------------------------------

create table hl7labdatadetail

	(
	ReportId varchar(255) not null
	,NAME varchar(255) not null
	,value varchar(255) not null
	,units varchar(255) not null
	,range varchar(255) not null
	,flag varchar(255) not null
	,notes varchar(255) not null
	,resultStatus varchar(255) not null
	,labId varchar(255) not null
	,hl7id varchar(255) null
	,profileid varchar(255) not null
	,serialno varchar(255) not null
	,obrcode varchar(255) not null
	,corrreportno varchar(255) not null
	,performingSiteId varchar(255) not null
	,prevvalue varchar(255) null
	,AttrResultDate varchar(255) null
	,AttrResultTime varchar(255) null
	,obsubid varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_hl7labdatadetail] primary key ([LogID])

	)

------------------------------

create table enc

	(
	encounterID varchar(255) not null
	,patientID varchar(255) not null
	,doctorID varchar(255) not null
	,date varchar(255) null
	,time varchar(255) null
	,startTime varchar(255) null
	,endTime varchar(255) null
	,reason varchar(255) null
	,VisitType varchar(255) null
	,roomNo varchar(255) null
	,STATUS varchar(255) not null
	,deleteFlag varchar(255) null
	,encType varchar(255) null
	,encLock varchar(255) null
	,Notes varchar(255) null
	,generalNotes varchar(255) not null
	,vmid varchar(255) not null
	,facilityId varchar(255) null
	,POS varchar(255) not null
	,arrivedTime varchar(255) not null
	,timeIn varchar(255) not null
	,timeOut varchar(255) not null
	,stsAfterArr varchar(255) not null
	,depTime varchar(255) not null
	,stsAfterChkIn varchar(255) not null
	,HL7Id varchar(255) not null
	,newPt varchar(255) not null
	,Dx varchar(255) not null
	,reminded varchar(255) null
	,remindedDate varchar(255) null
	,VisitCopay varchar(255) not null
	,CopayChanged varchar(255) not null
	,ClaimRequired varchar(255) not null
	,ClaimReq varchar(255) not null
	,VisitTypeOverriden varchar(255) null
	,refPrName varchar(255) null
	,refPrId varchar(255) null
	,PSACGroup varchar(255) null
	,deptid varchar(255) null
	,ResourceId varchar(255) not null
	,EncEligibilityStatus varchar(255) not null
	,EligibilityMessage varchar(255) not null
	,InvoiceId varchar(255) not null
	,EligSubId varchar(255) not null
	,EncEligibilityStatus2 varchar(255) not null
	,EligibilityMessage2 varchar(255) not null
	,EncEligibilityStatus3 varchar(255) not null
	,EligibilityMessage3 varchar(255) not null
	,trans_dictation varchar(255) null
	,waitTime varchar(255) null
	,websync varchar(255) null
	,dateIn varchar(255) null
	,dateOut varchar(255) null
	,notesDoneTime varchar(255) null
	,notesLoginId varchar(255) null
	,notesLogOutId varchar(255) null
	,visittypeid varchar(255) null
	,UTCStartTime varchar(255) null
	,UTCEndTime varchar(255) null
	,visitstscodeid varchar(255) not null
	,practiceId varchar(255) not null
	,immnotessendstatus varchar(255) null
	,transitionofcare varchar(255) null
	,prNotesSendStatus varchar(255) not null
	,readytobill varchar(255) not null
	,reviewbeforebill varchar(255) not null
	,EncEligibilityStatus4 varchar(255) not null
	,EligibilityMessage4 varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_enc] primary key ([encounterID])

	)

------------------------------

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

create table items

	(
	itemID varchar(255) not null
	,itemName varchar(255) not null
	,itemDesc varchar(255) not null
	,parentID varchar(255) not null
	,xmlPath varchar(255) not null
	,xslPath varchar(255) not null
	,itemType varchar(255) null
	,supplierId varchar(255) not null
	,price varchar(255) not null
	,discount varchar(255) not null
	,specialPrice varchar(255) not null
	,startDate varchar(255) not null
	,endDate varchar(255) not null
	,createdDate varchar(255) not null
	,modifiedDate varchar(255) not null
	,viewType varchar(255) not null
	,displayIndex varchar(255) null
	,deleteFlag varchar(255) not null
	,vmid varchar(255) not null
	,keyName varchar(255) not null
	,gender varchar(255) not null
	,overdue varchar(255) not null
	,inactive varchar(255) null
	,DrugNameId varchar(255) not null
	,showPathologyDetail varchar(255) not null
	,vmsgexclude varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_items] primary key ([itemID])

	)

------------------------------

create table maintenance

	(
	Id varchar(255) not null
	,UserId varchar(255) not null
	,Msg varchar(255) null
	,Comments varchar(255) null
	,Discussion varchar(255) null
	,StatusFlag varchar(255) not null
	,Status varchar(255) null
	,CreateDate varchar(255) null
	,ModifyDate varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_maintenance] primary key ([Id])

	)

------------------------------

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

create table faxlogs

	(
	LogID varchar(255) not null
	,LoginID varchar(255) not null
	,DoctorID varchar(255) not null
	,PatientID varchar(255) not null
	,ToID varchar(255) null
	,ToName varchar(255) not null
	,ToFax varchar(255) not null
	,ToCompany varchar(255) not null
	,EncounterID varchar(255) null
	,FaxInitTime varchar(255) not null
	,Retry varchar(255) null
	,Status varchar(255) not null
	,faxdata varchar(255) not null
	,FaxStatus varchar(255) not null
	,SendDate varchar(255) null
	,FaxType varchar(255) null
	,FaxManLogID varchar(255) not null
	,FaxPrefix varchar(255) not null
	,FaxFile varchar(255) null
	,FaxTransaction varchar(255) null
	,RxIds varchar(255) null
	,FaxLogStatus varchar(255) not null
	,FaxLogBatch varchar(255) null
	,FacilityID varchar(255) not null
	,FacilityName varchar(255) not null
	,reminded varchar(255) null
	,remindedDate varchar(255) null
	,FaxCoverPage varchar(255) not null
	,FaxCoverPageID varchar(255) not null
	,FaxStatusMsg varchar(255) not null
	,FaxSubject varchar(255) not null
	,LoginName varchar(255) not null
	,scheduledDate varchar(255) null
	,sentnotification varchar(255) not null
	,OriginalFaxDoc varchar(255) null
	,FromName varchar(255) null
	,FromVoice varchar(255) null
	,fromcompany varchar(255) not null
	,FaxInitTime2 varchar(255) not null
	,isMsgSent varchar(255) not null
	,isTextMsgSent varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_faxlogs] primary key ([LogID])

	)

------------------------------

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

create table preventive

	(
	encounterID varchar(255) not null
	,catID varchar(255) not null
	,itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_preventive] primary key ([pid])

	)

------------------------------

create table printlogs

	(
	LogID varchar(255) not null
	,LoginID varchar(255) not null
	,DoctorID varchar(255) not null
	,PatientID varchar(255) not null
	,EncounterID varchar(255) null
	,PrintData varchar(255) not null
	,PrintDate varchar(255) not null
	,PrintType varchar(255) null
	,PrintTransaction varchar(255) null
	,RxList varchar(255) null
	,PrintLogStatus varchar(255) not null
	,PrintLogBatch varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_printlogs] primary key ([LogID])

	)

------------------------------

create table insurance

	(
	insId varchar(255) not null
	,insuranceName varchar(255) null
	,insurancephone varchar(255) null
	,insurancefax varchar(255) null
	,insuranceemail varchar(255) null
	,insuranceaddress varchar(255) null
	,insuranceaddress2 varchar(255) not null
	,insurancecity varchar(255) null
	,insurancestate varchar(255) null
	,insurancezip varchar(255) null
	,PayorId varchar(255) not null
	,ClaimOfficeNumber varchar(255) not null
	,ClaimOfficeNumberType varchar(255) not null
	,MedigapID varchar(255) not null
	,carrierCode varchar(255) not null
	,ProviderIdRef varchar(255) not null
	,TestProdIndicator varchar(255) not null
	,ANSI varchar(255) null
	,SendSVT varchar(255) null
	,SendDecimalUnit varchar(255) null
	,PaymentSrc varchar(255) not null
	,capitationplan varchar(255) not null
	,capitationpayment varchar(255) not null
	,deleteFlag varchar(255) not null
	,vmid varchar(255) not null
	,labcorpid varchar(255) null
	,website varchar(255) not null
	,Send2310EAlways varchar(255) not null
	,ClaimSubmitType varchar(255) not null
	,ERAPayorId varchar(255) not null
	,Inactive varchar(255) not null
	,AllCodesCapitated varchar(255) not null
	,SelCodesCapitated varchar(255) not null
	,ReqOrdPrInfo varchar(255) not null
	,sendDupSubNoForPat varchar(255) null
	,prodDateAsCheckDate varchar(255) null
	,ReqUPINInEA021 varchar(255) not null
	,hl7id1 varchar(255) null
	,hl7id2 varchar(255) null
	,insuranceclass varchar(255) null
	,InsTypeMedicare varchar(255) not null
	,InsTypeOthers varchar(255) not null
	,FeeSchedId varchar(255) null
	,SecClaimsElectronic varchar(255) not null
	,PrAssignInd varchar(255) not null
	,Notes varchar(255) null
	,Box31Format varchar(255) not null
	,Box17ProviderType varchar(255) not null
	,Box17ProviderIdType varchar(255) not null
	,Box17ProviderRuleEnabled varchar(255) not null
	,SendInsPinForSupr varchar(255) not null
	,insurancephone2 varchar(255) null
	,InsuranceType varchar(255) null
	,ClaimType varchar(255) not null
	,Box31Line2Format varchar(255) not null
	,sendSubDemAlways varchar(255) not null
	,SplitClaimOnICD varchar(255) not null
	,EnableReferralNumber varchar(255) not null
	,DoNotPrintHcfa29 varchar(255) not null
	,DoNotPrintHcfa30 varchar(255) not null
	,Box17ProviderIdTypeMap varchar(255) not null
	,McaidNYPlanCode varchar(255) not null
	,PrintHcfa22 varchar(255) not null
	,EnableSympDate varchar(255) not null
	,EnableSimilarSympDate varchar(255) not null
	,SupressFacAddrForPOS11Enic varchar(255) not null
	,UseNpi varchar(255) not null
	,UseLegacy varchar(255) null
	,x270payorId varchar(255) not null
	,UseGroupNoForEligibility varchar(255) not null
	,CalculateAllowed varchar(255) not null
	,SupressFacAddrForPOS11Paper varchar(255) not null
	,x270LegacyNPI varchar(255) not null
	,FirstLinePost varchar(255) not null
	,SubscriberMask varchar(255) not null
	,subscriberLength varchar(255) not null
	,CO42MapCode varchar(255) not null
	,PrintEPSDTReferralCodeInHcfa24C varchar(255) not null
	,SendStrictDOS varchar(255) not null
	,UseFacilityPrvForRendProv varchar(255) not null
	,sendP2ProvPrvAlways varchar(255) not null
	,RequiredReferral varchar(255) not null
	,FPStringMandatory varchar(255) not null
	,SubNoMaxLen varchar(255) not null
	,SubNoMinLen varchar(255) not null
	,SendOTAFSeg varchar(255) not null
	,HCFA_Box19 varchar(255) not null
	,SendGrpNoin2310B varchar(255) not null
	,Send2420CAlways varchar(255) not null
	,Send2420CIf2310DOmited varchar(255) not null
	,UseLegacyForPrint varchar(255) not null
	,InsuranceAlert varchar(255) null
	,UseNPIForPrint varchar(255) not null
	,FeeSchedulesByLocation varchar(255) not null
	,InsurancePrimaryType varchar(255) null
	,ExcludeInPtStmts varchar(255) null
	,UseExtendedPrvOption varchar(255) not null
	,Send2000APrv varchar(255) not null
	,Send2310BPrv varchar(255) not null
	,Send2420APrv varchar(255) not null
	,SuppressRefProvUPIN varchar(255) not null
	,SuppressTaxIdInLoop2310A varchar(255) not null
	,SuppressTaxIdInLoop2310B varchar(255) not null
	,SuppressTaxIdInLoop2420A varchar(255) not null
	,SuppressTaxIdInLoop2310DAnd2420C varchar(255) not null
	,SubmitPtPmts varchar(255) not null
	,SuppressPrvInLoop2310A varchar(255) not null
	,SuppressRendProvUPIN varchar(255) not null
	,SuppressSuperProvUPIN varchar(255) not null
	,SuppressOrderProvUPIN varchar(255) not null
	,SuppressPurchasedProvUPIN varchar(255) not null
	,SuppressServiceFacilityUPIN varchar(255) not null
	,SuppressTaxIdInLoop2310C varchar(255) not null
	,SuppressTaxIdInLoop2310E varchar(255) not null
	,SuppressTaxIdInLoop2420E varchar(255) not null
	,X270SendTrnAlways varchar(255) not null
	,X270CustomMapLegacy varchar(255) not null
	,SendOtafInPrimary varchar(255) not null
	,x270SendEbDateRange varchar(255) not null
	,x270SendPrv varchar(255) not null
	,x270SendEbAddlInfo varchar(255) not null
	,BestMatchCpt varchar(255) not null
	,DoNotAddSalesTax varchar(255) not null
	,enrollmentReq varchar(255) not null
	,CountryCode varchar(255) not null
	,NDCFormat varchar(255) null
	,X270SendDoi varchar(255) not null
	,X270SendDosAsDoi varchar(255) not null
	,SendHyphenInTaxId varchar(255) not null
	,IsAnesthesiaMinutesInHCFA varchar(255) not null
	,PrimaryTimelyFiling varchar(255) not null
	,SecondaryTimelyFiling varchar(255) not null
	,IsServiceLocationAddressinLoop2010AA varchar(255) not null
	,NoPrimaryOtafIn2400 varchar(255) not null
	,StripLeadingZeroFromMoney varchar(255) not null
	,SendMedicalRecordNumber varchar(255) not null
	,x270SendGroupNo varchar(255) not null
	,x270SendRelationShip varchar(255) not null
	,x270SendSSN varchar(255) not null
	,x270SendInsuredN4 varchar(255) not null
	,StripTrailingZerosFromMoney varchar(255) not null
	,insuranceNameANSI varchar(255) not null
	,HPSAQualify varchar(255) not null
	,PrintEPSDTDataInHcfa10d varchar(255) not null
	,ConsiderToothNumberAsModifier varchar(255) not null
	,DoNotAddFinanceChrg varchar(255) not null
	,CapitationType varchar(255) null
	,LiabilityCarrierCode varchar(255) not null
	,ecwMasterId varchar(255) not null
	,EnterpriseId varchar(255) not null
	,DoNotChangeClmAssgnmntAfterCapAdj varchar(255) not null
	,modifiedDate varchar(255) not null
	,AdditionalMask varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_insurance] primary key ([insId])

	)

------------------------------

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

create table labdatadetail

	(
	ReportId varchar(255) not null
	,PropId varchar(255) not null
	,Value varchar(255) null
	,importFlag varchar(255) not null
	,Id varchar(255) not null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,TestID varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labdatadetail] primary key ([Id])

	)

------------------------------

create table labdataex

	(
	reportId varchar(255) not null
	,HL7ResultDate varchar(255) null
	,HL7ResultTime varchar(255) null
	,urllink varchar(255) null
	,interfacestatus varchar(255) null
	,processedresult varchar(255) null
	,VisitType varchar(255) not null
	,DateReceived varchar(255) not null
	,resultrcvddatetime varchar(255) not null
	,MigrateFlag varchar(255) not null
	,SentOutReqNo varchar(255) not null
	,facilityId varchar(255) not null
	,specimenReceiveTime varchar(255) not null
	,specimenReceiveDate varchar(255) not null
	,isPACSLinkEnabled varchar(255) not null
	,observationDate varchar(255) not null
	,observationTime varchar(255) not null
	,SpecimenActionCode varchar(255) not null
	,PlacerGroupNumberID varchar(255) not null
	,PatientAltRace varchar(255) not null
	,bodysitecode varchar(255) not null
	,ABNPrompted varchar(255) not null
	,ABNOption varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labdataex] primary key ([reportId])

	)

------------------------------

create table lablist

	(
	ID varchar(255) not null
	,name varchar(255) not null
	,deleteFlag varchar(255) not null
	,LabId varchar(255) not null
	,labaddress varchar(255) not null
	,labaddress2 varchar(255) not null
	,labcity varchar(255) not null
	,labstate varchar(255) not null
	,labzip varchar(255) not null
	,labphone varchar(255) not null
	,labfax varchar(255) not null
	,labemail varchar(255) null
	,interfaceConfigured varchar(255) not null
	,sendoutboundresult varchar(255) null
	,labcompanyType varchar(255) not null
	,inHouseLab varchar(255) not null
	,ResultLabId varchar(255) not null
	,labCode varchar(255) not null
	,superhubInterfaceID varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_lablist] primary key ([ID])

	)

------------------------------

create table labloinccodes

	(
	itemid varchar(255) not null
	,code varchar(255) not null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,deleteflag varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labloinccodes] primary key ([itemid])

	)

------------------------------

create table language_codes

	(
	Name varchar(255) not null
	,Favorite varchar(255) null
	,Code varchar(255) null
	,LangID varchar(255) not null
	,isocode1 varchar(255) null
	,isocode2 varchar(255) null
	,isoname varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_language_codes] primary key ([LangID])

	)

------------------------------

create table letterlogs

	(
	Id varchar(255) not null
	,patientId varchar(255) not null
	,letterId varchar(255) not null
	,letterName varchar(255) not null
	,printedBy varchar(255) not null
	,date varchar(255) not null
	,time varchar(255) not null
	,categoryID varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_letterlogs] primary key ([Id])

	)

------------------------------

create table logptspecificdata

	(
	id varchar(255) not null
	,patientid varchar(255) not null
	,truserid varchar(255) not null
	,modified_date varchar(255) not null
	,modified_time varchar(255) not null
	,timestamp varchar(255) not null
	,status varchar(255) not null
	,truser_name varchar(255) not null
	,action varchar(255) not null
	,dataelementid varchar(255) not null
	,logptspecificid varchar(255) not null
	,itemid varchar(255) not null
	,encounterid varchar(255) not null
	,data varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_logptspecificdata] primary key ([id])

	)

------------------------------

create table oldrxdetail

	(
	OldRxId varchar(255) null
	,Prop varchar(255) not null
	,value varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_oldrxdetail] primary key ([Id])

	)

------------------------------

create table problemlist_ext

	(
	Id varchar(255) not null
	,PatientId varchar(255) not null
	,NKPFlag varchar(255) not null
	,NKPDate varchar(255) null
	,deleteFlag varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_problemlist_ext] primary key ([Id])

	)

------------------------------

create table loincmaster

	(
	LOINC_NUM varchar(255) not null
	,COMPONENT varchar(255) null
	,PROPERTY varchar(255) null
	,TIME_ASPCT varchar(255) null
	,SYSTEM varchar(255) null
	,SCALE_TYP varchar(255) null
	,METHOD_TYP varchar(255) null
	,RELAT_NMS varchar(255) null
	,CLASS varchar(255) null
	,SOURCE varchar(255) null
	,DT_LAST_CH varchar(255) null
	,CHNG_TYPE varchar(255) null
	,COMMENTS varchar(255) null
	,ANSWERLIST varchar(255) null
	,STATUS varchar(255) null
	,MAP_TO varchar(255) null
	,SCOPE varchar(255) null
	,CONSUMER_NAME varchar(255) null
	,IPCC_UNITS varchar(255) null
	,REFERENCE varchar(255) null
	,EXACT_CMP_SY varchar(255) null
	,MOLAR_MASS varchar(255) null
	,CLASSTYPE varchar(255) null
	,FORMULA varchar(255) null
	,SPECIES varchar(255) null
	,EXMPL_ANSWERS varchar(255) null
	,ACSSYM varchar(255) null
	,BASE_NAME varchar(255) null
	,FINAL varchar(255) null
	,NAACCR_ID varchar(255) null
	,CODE_TABLE varchar(255) null
	,SETROOT varchar(255) null
	,PanelElements varchar(255) null
	,SURVEY_QUEST_TEXT varchar(255) null
	,SURVEY_QUEST_SRC varchar(255) null
	,UnitsRequired varchar(255) null
	,SUBMITTED_UNITS varchar(255) null
	,RelatedNames2 varchar(255) null
	,SHORTNAME varchar(255) null
	,ORDER_OBS varchar(255) null
	,CDISC_COMMON_TESTS varchar(255) null
	,HL7_FIELD_SUBFIELD_ID varchar(255) null
	,EXTERNAL_COPYRIGHT_NOTICE varchar(255) null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,deleteflag varchar(255) not null
	,EXAMPLE_UNITS varchar(255) null
	,INPC_PERCENTAGE varchar(255) null
	,LONG_COMMON_NAME varchar(255) null
	,HL7_V2_DATATYPE varchar(255) null
	,HL7_V3_DATATYPE varchar(255) null
	,CURATED_RANGE_AND_UNITS varchar(255) null
	,DOCUMENT_SECTION varchar(255) null
	,DEFINITION_DESCRIPTION_HELP varchar(255) null
	,EXAMPLE_UCUM_UNITS varchar(255) null
	,EXAMPLE_SI_UCUM_UNITS varchar(255) null
	,STATUS_REASON varchar(255) null
	,STATUS_TEXT varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_loincmaster] primary key ([LOINC_NUM])

	)

------------------------------

create table patients

	(
	pid varchar(255) not null
	,ControlNo varchar(255) not null
	,employername varchar(255) not null
	,employeraddress varchar(255) null
	,employeraddress2 varchar(255) not null
	,employercity varchar(255) null
	,employerstate varchar(255) null
	,employerzip varchar(255) null
	,employerPhone varchar(255) null
	,msgflag varchar(255) null
	,insname varchar(255) null
	,insgroupno varchar(255) null
	,inssubscriberno varchar(255) null
	,inscopay varchar(255) null
	,pastHistory varchar(255) null
	,pharmacyname varchar(255) null
	,pharmacyno varchar(255) null
	,surgicalHistory varchar(255) null
	,hospitalization varchar(255) null
	,medications varchar(255) null
	,insname2 varchar(255) null
	,insgroupno2 varchar(255) null
	,inssubscriberno2 varchar(255) null
	,inscopay2 varchar(255) null
	,straddress varchar(255) null
	,city varchar(255) null
	,state varchar(255) null
	,zip varchar(255) null
	,doctorId varchar(255) not null
	,AttendingDoctorId varchar(255) not null
	,pharmacyFax varchar(255) null
	,pmcId varchar(255) null
	,insId varchar(255) null
	,insId2 varchar(255) null
	,maritalstatus varchar(255) not null
	,strAddress2 varchar(255) null
	,notes varchar(255) not null
	,deceased varchar(255) not null
	,deceasedDate varchar(255) not null
	,deceasedNotes varchar(255) not null
	,language varchar(255) not null
	,GrId varchar(255) not null
	,GrRel varchar(255) not null
	,IsGrPt varchar(255) not null
	,GrType varchar(255) not null
	,PrimIns varchar(255) not null
	,ResType varchar(255) not null
	,StudentStatus varchar(255) not null
	,EmpStatus varchar(255) not null
	,picFileName varchar(255) not null
	,RelInfo varchar(255) not null
	,RelInfoDate varchar(255) null
	,PayorType varchar(255) not null
	,SelfPay varchar(255) not null
	,hl7Id varchar(255) not null
	,BillingAlert varchar(255) not null
	,BillingAlertNotes varchar(255) not null
	,givenToColl varchar(255) not null
	,givenDate varchar(255) null
	,DefFeeSchId varchar(255) not null
	,race varchar(255) not null
	,PtStatus varchar(255) null
	,ptStmtDate varchar(255) null
	,refPrId varchar(255) null
	,rendPrId varchar(255) null
	,nostatements varchar(255) not null
	,CurrentCollectionStatus varchar(255) not null
	,CollectionTimestamp varchar(255) not null
	,interpretSvc varchar(255) null
	,GlobalAlert varchar(255) not null
	,characterestic varchar(255) not null
	,CollectionStageDate varchar(255) not null
	,regdate varchar(255) null
	,ethnicity varchar(255) null
	,vfc varchar(255) null
	,empId varchar(255) not null
	,irisenroll varchar(255) not null
	,CollectionAgencyStatus varchar(255) null
	,RxConsent varchar(255) null
	,acctbal varchar(255) null
	,CollStartStopDt varchar(255) null
	,MailOrderPharmacyId varchar(255) null
	,MOMemberId varchar(255) null
	,teamMember varchar(255) not null
	,bTranslator varchar(255) null
	,Address2Country varchar(255) not null
	,VoiceEnabled varchar(255) null
	,assignedtoId varchar(255) not null
	,assignedto varchar(255) not null
	,UseStreetAddressForRxFlag varchar(255) null
	,textenabled varchar(255) null
	,GrStmtDate varchar(255) null
	,msgCellflag varchar(255) null
	,enableEmail varchar(255) null
	,enableLetters varchar(255) null
	,webEnabledDate varchar(255) null
	,preset varchar(255) null
	,encpwd varchar(255) null
	,lognotes varchar(255) null
	,optout varchar(255) null
	,optreasonId varchar(255) null
	,IsMigratedRecord varchar(255) null
	,DefaultLab varchar(255) not null
	,DefaultDI varchar(255) not null
	,emailreasonId varchar(255) null
	,isKioskConsentReceived varchar(255) null
	,isPtOptsOut varchar(255) not null
	,secureMsgKey varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_patients] primary key ([pid])

	)

------------------------------

create table problemlist

	(
	patientId varchar(255) not null
	,encounterId varchar(255) not null
	,asmtId varchar(255) not null
	,specify varchar(255) not null
	,notes varchar(255) not null
	,deleteFlag varchar(255) not null
	,onsetdate varchar(255) null
	,userid varchar(255) not null
	,logdate varchar(255) not null
	,inactiveFlag varchar(255) not null
	,WUStatus varchar(255) not null
	,condition varchar(255) not null
	,SlNo varchar(255) not null
	,displayIndex varchar(255) not null
	,Risk varchar(255) not null
	,AddedDate varchar(255) not null
	,ProblemType varchar(255) not null
	,Resolved varchar(255) not null
	,resolvedon varchar(255) not null
	,SNOMED varchar(255) not null
	,SNOMEDDesc varchar(255) null
	,SNOMEDDescID varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_problemlist] primary key ([SlNo])

	)

------------------------------

create table procedurespl

	(
	encounterId varchar(255) not null
	,catID varchar(255) not null
	,itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,displayIndex varchar(255) not null
	,VALUE2 varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_procedurespl] primary key ([Id])

	)

------------------------------

create table progressnotes

	(
	encounterID varchar(255) not null
	,summary varchar(255) not null
	,xslId varchar(255) not null
	,unlocked varchar(255) not null
	,ModifyDate varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_progressnotes] primary key ([Id])

	)

------------------------------

create table properties

	(
	propID varchar(255) not null
	,name varchar(255) not null
	,description varchar(255) null
	,type varchar(255) null
	,viewtype varchar(255) null
	,size varchar(255) null
	,displayName varchar(255) null
	,pdetailID varchar(255) null
	,displayIndex varchar(255) null
	,delPropFlag varchar(255) not null
	,vmid varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_properties] primary key ([propID])

	)

------------------------------

create table pt_adv_directives

	(
	Id varchar(255) not null
	,PtId varchar(255) not null
	,Code varchar(255) not null
	,Name varchar(255) not null
	,MDate varchar(255) not null
	,delflag varchar(255) null
	,displayindex varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_pt_adv_directives] primary key ([Id])

	)

------------------------------

create table pt_emailreason

	(
	id varchar(255) not null
	,description varchar(255) null
	,delflag varchar(255) null
	,displayindex varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_pt_emailreason] primary key ([id])

	)

------------------------------

create table ref_attachments

	(
	id varchar(255) not null
	,RefId varchar(255) null
	,doctype varchar(255) not null
	,docId varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_ref_attachments] primary key ([id])

	)

------------------------------

create table referral

	(
	ReferralId varchar(255) not null
	,patientID varchar(255) not null
	,insId varchar(255) not null
	,refFrom varchar(255) not null
	,authNo varchar(255) not null
	,date varchar(255) not null
	,reason varchar(255) not null
	,diagnosis varchar(255) not null
	,refStDate varchar(255) not null
	,refEnddate varchar(255) not null
	,visitsAllowed varchar(255) not null
	,visitsUsed varchar(255) not null
	,RefTo varchar(255) not null
	,notes varchar(255) not null
	,deleteFlag varchar(255) not null
	,referralType varchar(255) not null
	,priority varchar(255) not null
	,assignedTo varchar(255) not null
	,assignedToId varchar(255) not null
	,status varchar(255) not null
	,authtype varchar(255) not null
	,procedures varchar(255) not null
	,fromfacility varchar(255) not null
	,ToFacility varchar(255) not null
	,speciality varchar(255) not null
	,POS varchar(255) not null
	,UnitType varchar(255) not null
	,FrontOfficeAuth varchar(255) null
	,ReferralNumber varchar(255) not null
	,apptDate varchar(255) not null
	,clinicalNotes varchar(255) null
	,ReceivedDate varchar(255) not null
	,refEncId varchar(255) not null
	,ApptTime varchar(255) not null
	,extNHXApptBlockId varchar(255) not null
	,extNHXRefTxId varchar(255) not null
	,refReqId varchar(255) not null
	,refFromP2pNPI varchar(255) not null
	,refFromName varchar(255) not null
	,refToP2pNPI varchar(255) not null
	,refToName varchar(255) not null
	,uploadedToPtDocs varchar(255) not null
	,modifiedDate varchar(255) not null
	,refToCCNameList varchar(255) null
	,refToCCNPIList varchar(255) null
	,p2pDeliveryStatus varchar(255) null
	,statusUpdateDate varchar(255) not null
	,ccdaValidationStatus varchar(255) null
	,fromDirectAddress varchar(255) not null
	,toDirectAddress varchar(255) not null
	,toDirectAddress1 varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_referral] primary key ([ReferralId])

	)

------------------------------

create table social

	(
	encounterID varchar(255) not null
	,catID varchar(255) not null
	,itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_social] primary key ([ID])

	)

------------------------------

create table structdatadetail

	(
	Id varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,name varchar(255) not null
	,type varchar(255) not null
	,mandatory varchar(255) not null
	,displayIndex varchar(255) not null
	,deleteFlag varchar(255) not null
	,parentId varchar(255) not null
	,triggerflag varchar(255) not null
	,itemType varchar(255) not null
	,nodeLevel varchar(255) not null
	,tblName varchar(255) not null
	,chartDisplay varchar(255) null
	,multiSelect varchar(255) not null
	,IsSearchable varchar(255) null
	,defaultValue varchar(255) null
	,defaultValueId varchar(255) null
	,modifynotes varchar(255) null
	,readonly varchar(255) null
	,dropdown varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structdatadetail] primary key ([Id])

	)

------------------------------

create table structexam

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,displayIndex varchar(255) not null
	,chartdisplay varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structexam] primary key ([Id])

	)

------------------------------

create table smsmsglogs

	(
	ID varchar(255) not null
	,ToSMSName varchar(255) null
	,ToSMSNumber varchar(255) null
	,ToSMSProvider varchar(255) null
	,Retry varchar(255) null
	,SMSMessageID varchar(255) null
	,SMSMESSAGEBODY varchar(255) null
	,SmsMessageStatus varchar(255) null
	,smsMessageType varchar(255) null
	,SMSSubject varchar(255) null
	,sentdate varchar(255) not null
	,SentTime varchar(255) null
	,ScheduledDate varchar(255) null
	,ScheduledTime varchar(255) null
	,FromSMSName varchar(255) null
	,FromSMSNumber varchar(255) null
	,FromSMSProvider varchar(255) null
	,ClientId varchar(255) null
	,Priority varchar(255) null
	,EcwWebSMSUser varchar(255) null
	,ErrorId varchar(255) null
	,ErrorMsg varchar(255) null
	,DateCreated varchar(255) not null
	,isDeleted varchar(255) null
	,EncounterID varchar(255) null
	,LabID varchar(255) null
	,PatientId varchar(255) null
	,FacilityId varchar(255) null
	,PtStatementId varchar(255) null
	,Language varchar(255) null
	,SMSMsgUser varchar(255) null
	,SMSMsgPwd varchar(255) null
	,AppServMachineName varchar(255) null
	,AppServMachineIP varchar(255) null
	,AppServMacAddr varchar(255) null
	,SentByLastName varchar(255) null
	,SentByFirstName varchar(255) not null
	,SentBy varchar(255) null
	,VendorMsgId varchar(255) null
	,VendorSMSresponse varchar(255) null
	,TemplateId varchar(255) null
	,uploadlocation varchar(255) null
	,DoctorId varchar(255) null
	,RequiredConfirm varchar(255) null
	,ConfirmNumber varchar(255) null
	,smsmsgreply varchar(255) null
	,smsmsgreply_id varchar(255) null
	,parentid varchar(255) not null
	,ActualMessage varchar(255) null
	,ResourceId varchar(255) not null
	,msgSource varchar(255) null
	,ecwversion varchar(255) null
	,ecmversion varchar(255) null
	,AutoUpgradeKey varchar(255) null
	,FaxLogId varchar(255) null
	,eRxReqID varchar(255) null
	,eRxReFillReqID varchar(255) null
	,campaignid varchar(255) not null
	,campaign varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_smsmsglogs] primary key ([ID])

	)

------------------------------

create table structhpi

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) not null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,chartdisplay varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structhpi] primary key ([Id])

	)

------------------------------

create table structpreventive

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,chartdisplay varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structpreventive] primary key ([Id])

	)

------------------------------

create table structsocialhistory

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,chartdisplay varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structsocialhistory] primary key ([Id])

	)

------------------------------

create table surescript_eprescription

	(
	ReqID varchar(255) not null
	,RxType varchar(255) null
	,MessageID varchar(255) null
	,RelatedMessageID varchar(255) null
	,SentTo varchar(255) null
	,SentFrom varchar(255) null
	,SentTime varchar(255) null
	,MessageText varchar(255) null
	,StatusDesc varchar(255) null
	,AttemptNo varchar(255) null
	,LastAttemptTimeStamp varchar(255) null
	,PatientID varchar(255) not null
	,encounterID varchar(255) null
	,Patient_FName varchar(255) null
	,Patient_LName varchar(255) null
	,Patient_MName varchar(255) null
	,DateOfBirth varchar(255) null
	,Sex varchar(255) null
	,Ssn varchar(255) null
	,AddressLine1 varchar(255) null
	,AddressLine2 varchar(255) null
	,City varchar(255) null
	,State varchar(255) null
	,ZipCode varchar(255) null
	,Patient_PrimaryPhone varchar(255) null
	,Patient_CellPhone varchar(255) null
	,Patient_Fax varchar(255) null
	,Patient_Email varchar(255) null
	,DoctorID varchar(255) not null
	,SPI varchar(255) null
	,StateLicenseNumber varchar(255) null
	,doc_ssn varchar(255) null
	,DEANo varchar(255) null
	,doc_FName varchar(255) null
	,doc_LName varchar(255) null
	,doc_MName varchar(255) null
	,doc_suffix varchar(255) null
	,Speciality varchar(255) null
	,SpecialityCode varchar(255) null
	,doc_AddressLine1 varchar(255) null
	,doc_AddressLine2 varchar(255) null
	,doc_City varchar(255) null
	,doc_State varchar(255) null
	,doc_Zipcode varchar(255) null
	,doc_Primaryphone varchar(255) null
	,doc_Pagerno varchar(255) null
	,doc_Mobilephone varchar(255) null
	,PharmacyID varchar(255) not null
	,NCPDPID varchar(255) null
	,PharmacyName varchar(255) null
	,Pharmacy_AddressLine1 varchar(255) null
	,Pharmacy_City varchar(255) null
	,Pharmacy_State varchar(255) null
	,Pharmacy_Zipcode varchar(255) null
	,Pharmacy_Phone varchar(255) null
	,Pharmacy_Fax varchar(255) null
	,Pharmacy_Email varchar(255) null
	,DrugDescription varchar(255) null
	,ProductCode varchar(255) null
	,ProductCodeQualifier varchar(255) null
	,DosageForm varchar(255) null
	,Strength varchar(255) null
	,StrengthUnits varchar(255) null
	,DrugDBCode varchar(255) null
	,DrugDBCodeQualifier varchar(255) null
	,Frequency varchar(255) null
	,duration varchar(255) null
	,Quantity varchar(255) null
	,Take varchar(255) null
	,Refills varchar(255) null
	,SubsMedAllowed varchar(255) null
	,Comments varchar(255) null
	,XMLData varchar(255) null
	,XMLResponseData varchar(255) null
	,RefillsQualifier varchar(255) null
	,bAsynMsgPostedToDoc varchar(255) null
	,bVerified varchar(255) null
	,ScriptVersion varchar(255) null
	,SentBy varchar(255) null
	,RxhubId varchar(255) null
	,RouteSource varchar(255) not null
	,Addressed varchar(255) null
	,AddressedBy varchar(255) null
	,PrescriberOrderNo varchar(255) null
	,SentById varchar(255) null
	,IpAddress varchar(255) null
	,isVoiceMsgSent varchar(255) not null
	,isTextMsgSent varchar(255) null
	,rxOrderNo varchar(255) null
	,DEASchedule varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_surescript_eprescription] primary key ([ReqID])

	)

------------------------------

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

create table users

	(
	uid varchar(255) not null
	,uname varchar(255) not null
	,upwd varchar(255) null
	,udesc varchar(255) null
	,uroomno varchar(255) not null
	,umobileno varchar(255) not null
	,upagerno varchar(255) not null
	,ufname varchar(255) null
	,uminitial varchar(255) null
	,ulname varchar(255) null
	,uemail varchar(255) null
	,uwebpage varchar(255) null
	,upaddress varchar(255) null
	,upcity varchar(255) not null
	,upstate varchar(255) null
	,upPhone varchar(255) null
	,UserType varchar(255) null
	,zipcode varchar(255) null
	,dob varchar(255) null
	,ssn varchar(255) null
	,mflag varchar(255) null
	,updid varchar(255) null
	,cdate varchar(255) null
	,mdate varchar(255) not null
	,sex varchar(255) null
	,upaddress2 varchar(255) null
	,suffix varchar(255) null
	,prefix varchar(255) null
	,initials varchar(255) not null
	,ptDob varchar(255) not null
	,delFlag varchar(255) not null
	,vmid varchar(255) not null
	,status varchar(255) null
	,webenabled varchar(255) null
	,websync varchar(255) null
	,changePass varchar(255) null
	,primaryservicelocation varchar(255) not null
	,upreviousname varchar(255) null
	,IsResource varchar(255) not null
	,EligibilityStatus varchar(255) not null
	,OSUUserType varchar(255) not null
	,DefApptProvForResource varchar(255) not null
	,locked varchar(255) null
	,EncEligibilityStatus2 varchar(255) not null
	,EligibilityMessage2 varchar(255) not null
	,EncEligibilityStatus3 varchar(255) not null
	,EligibilityMessage3 varchar(255) not null
	,EncEligibilityStatus varchar(255) not null
	,EligibilityMessage varchar(255) not null
	,AllFacilities varchar(255) not null
	,Emrsex varchar(255) not null
	,CountryCode varchar(255) not null
	,transgender varchar(255) not null
	,EnterpriseId varchar(255) not null
	,gestationalAge varchar(255) not null
	,timeofbirth varchar(255) null
	,LANGUAGE varchar(255) not null
	,county varchar(255) not null
	,isCredentialed varchar(255) null
	,EncEligibilityStatus4 varchar(255) not null
	,EligibilityMessage4 varchar(255) not null
	,ACOUserType varchar(255) not null
	,credentialschange varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_users] primary key ([uid])

	)

------------------------------

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

create table visitsummarylog

	(
	id varchar(255) not null
	,encId varchar(255) null
	,uid varchar(255) null
	,requestDate varchar(255) null
	,requestedBy varchar(255) null
	,vsdata varchar(255) null
	,status varchar(255) null
	,loggedfrom varchar(255) not null
	,ccddata varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_visitsummarylog] primary key ([id])

	)

------------------------------

create table vitals

	(
	encounterID varchar(255) not null
	,vitalID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) not null
	,Id varchar(255) not null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,defaultValue varchar(255) not null
	,valueHtm varchar(255) not null
	,value2 varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_vitals] primary key ([Id])

	)

------------------------------

create table voicemsglogs

	(
	ID varchar(255) not null
	,ToName varchar(255) null
	,ContactType varchar(255) null
	,ToPhone varchar(255) null
	,Retry varchar(255) null
	,voiceMessageStatus varchar(255) null
	,SentDate varchar(255) null
	,Priority varchar(255) null
	,VoiceMessageType varchar(255) null
	,VoiceMessageLiveText varchar(255) null
	,VoiceMessageLiveAudio varchar(255) null
	,VoiceMessageMachineText varchar(255) null
	,VoiceMessageMachineAudio varchar(255) null
	,InitialGreetingAudio varchar(255) null
	,VoiceMessageId varchar(255) null
	,Date_Created varchar(255) not null
	,Date_Modified varchar(255) null
	,isDeleted varchar(255) null
	,StatusMsg varchar(255) null
	,CallerIDNumber varchar(255) null
	,InitialGreetingAudioText varchar(255) null
	,OtherContactType varchar(255) null
	,EncounterID varchar(255) null
	,MaxLiveReplays varchar(255) null
	,OperatorNumber varchar(255) null
	,ConfirmationStatus varchar(255) null
	,DeliveryType varchar(255) null
	,ErrorMsg varchar(255) null
	,LabID varchar(255) not null
	,ConfirmCancelEnabled varchar(255) null
	,PatientId varchar(255) null
	,PtStatementId varchar(255) null
	,Language varchar(255) null
	,ScheduledDate varchar(255) not null
	,ScheduledTime varchar(255) not null
	,SentByLastName varchar(255) not null
	,SentByFirstName varchar(255) not null
	,SentBy varchar(255) not null
	,FacilityId varchar(255) not null
	,SentTime varchar(255) not null
	,uploadLocation varchar(255) null
	,TTSVoice varchar(255) null
	,VMsgUser varchar(255) null
	,VMsgPwd varchar(255) null
	,AppServMachineName varchar(255) null
	,AppServMachineIP varchar(255) null
	,parentid varchar(255) null
	,recordurl varchar(255) null
	,StatusDetail varchar(255) null
	,ResourceId varchar(255) not null
	,recordedMessageId varchar(255) null
	,ecwVersion varchar(255) null
	,ecmVersion varchar(255) null
	,timeZone varchar(255) null
	,retryfailedmsg varchar(255) not null
	,ApptStatus varchar(255) null
	,ivrvalue varchar(255) not null
	,AutoUpgradeKey varchar(255) null
	,OtherContactNumbers varchar(255) null
	,ErrorCode varchar(255) not null
	,MsgExpireTime varchar(255) null
	,PtPin varchar(255) not null
	,PtPinType varchar(255) null
	,isMsgSecured varchar(255) not null
	,msgSource varchar(255) null
	,providerGreetingsUid varchar(255) null
	,ClientResponse varchar(255) not null
	,messageJobType varchar(255) not null
	,FaxLogId varchar(255) not null
	,eRxReqID varchar(255) not null
	,eRxReFillReqID varchar(255) not null
	,providerid varchar(255) not null
	,campaignid varchar(255) not null
	,campaign varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_voicemsglogs] primary key ([ID])

	)

------------------------------
create table alertdata

	(
	Id varchar(255) not null
	,PatientId varchar(255) not null
	,MeasureId varchar(255) not null
	,MeasureName varchar(255) not null
	,ItemId varchar(255) not null
	,Frequency varchar(255) not null
	,LastDone varchar(255) not null
	,DueDate varchar(255) not null
	,Value varchar(255) not null
	,controlstatus varchar(255) not null
	,RegistryAlert varchar(255) not null
	,labReceived varchar(255) not null
	,mdate varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_alertdata] primary key ([Id])

	)

------------------------------

create table alertoverride

	(
	Id varchar(255) not null
	,PatientId varchar(255) not null
	,MeasureId varchar(255) not null
	,DueDate varchar(255) null
	,NeverRemind varchar(255) not null
	,Reason varchar(255) null
	,status varchar(255) not null
	,statusLabel varchar(255) not null
	,reset varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_alertoverride] primary key ([Id])

	)

------------------------------

create table allergies

	(
	patientID varchar(255) not null
	,drug varchar(255) null
	,allergy varchar(255) not null
	,encounterId varchar(255) null
	,itemID varchar(255) null
	,displayIndex varchar(255) null
	,SMDamConceptID varchar(255) null
	,SMDamConceptIDDesc varchar(255) null
	,ndc_code varchar(255) null
	,allergytype varchar(255) not null
	,type varchar(255) not null
	,status varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_allergies] primary key ([Id])

	)

------------------------------

create table billingdata

	(
	Id varchar(255) not null
	,EncounterId varchar(255) not null
	,itemID varchar(255) not null
	,date varchar(255) null
	,endDate varchar(255) null
	,endData varchar(255) null
	,providerId varchar(255) not null
	,Notes varchar(255) null
	,displayIndex varchar(255) null
	,deleteFlag varchar(255) not null
	,Mod1 varchar(255) not null
	,Mod2 varchar(255) not null
	,Mod3 varchar(255) not null
	,units varchar(255) not null
	,codeFlag varchar(255) not null
	,Icd1 varchar(255) not null
	,Icd2 varchar(255) not null
	,Icd3 varchar(255) not null
	,Icd4 varchar(255) not null
	,icdcode1 varchar(255) not null
	,icdcode2 varchar(255) not null
	,icdcode3 varchar(255) not null
	,icdcode4 varchar(255) not null
	,vitalCpt varchar(255) not null
	,Mod4 varchar(255) not null
	,ToothNumber varchar(255) not null
	,Surface varchar(255) not null
	,documentedTime varchar(255) null
	,ndccode varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_billingdata] primary key ([Id])

	)

------------------------------

create table contacts

	(
	contactId varchar(255) not null
	,pid varchar(255) not null
	,name varchar(255) not null
	,relation varchar(255) not null
	,address varchar(255) not null
	,address2 varchar(255) not null
	,city varchar(255) not null
	,state varchar(255) not null
	,zipcode varchar(255) not null
	,homePhone varchar(255) not null
	,workPhone varchar(255) not null
	,vmid varchar(255) not null
	,delflag varchar(255) not null
	,Lname varchar(255) not null
	,Fname varchar(255) not null
	,MI varchar(255) null
	,Guardian varchar(255) null
	,RelatedPtId varchar(255) not null
	,HExt varchar(255) not null
	,WExt varchar(255) not null
	,Type1 varchar(255) not null
	,Type2 varchar(255) not null
	,Fax varchar(255) not null
	,Email varchar(255) not null
	,Notes varchar(255) not null
	,Hippa varchar(255) null
	,displayorder varchar(255) null
	,maidenname varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_contacts] primary key ([contactId])

	)

------------------------------

create table diagnosis

	(
	EncounterId varchar(255) not null
	,ItemId varchar(255) null
	,PrimaryAsmt varchar(255) null
	,Specify varchar(255) null
	,Notes varchar(255) null
	,displayIndex varchar(255) null
	,axis varchar(255) not null
	,AsmtOnsetDate varchar(255) null
	,SlNo varchar(255) not null
	,websync varchar(255) null
	,Risk varchar(255) not null
	,SNOMED varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_diagnosis] primary key ([SlNo])

	)

------------------------------

create table edi_employmentstatus

	(
	Code varchar(255) not null
	,Name varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_edi_employmentstatus] primary key ([doctorID])

	)

------------------------------

create table edi_speciality

	(
	Id varchar(255) not null
	,Speciality varchar(255) not null
	,Code varchar(255) not null
	,deleteFlag varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_edi_speciality] primary key ([Id])

	)

------------------------------

create table encounter

	(
	encounterID varchar(255) not null
	,doctorID varchar(255) not null
	,patientID varchar(255) not null
	,date varchar(255) null
	,time varchar(255) null
	,reason varchar(255) null
	,visitType varchar(255) null
	,roomno varchar(255) null
	,status varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_encounter] primary key ([encounterID])

	)

------------------------------

create table ethnicity

	(
	Code varchar(255) null
	,Name varchar(255) null
	,EthId varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_ethnicity] primary key ([EthId])

	)

------------------------------

create table familydata

	(
	encounterID varchar(255) not null
	,itemID varchar(255) not null
	,name varchar(255) null
	,status varchar(255) null
	,age varchar(255) null
	,dob varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_familydata] primary key ([EthId])

	)

------------------------------

create table immunizationstatus

	(
	Id varchar(255) not null
	,ImmStatusId varchar(255) not null
	,CODE varchar(255) null
	,Description varchar(255) not null
	,TYPE varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_immunizationstatus] primary key ([Id])

	)

------------------------------

create table itemdetail

	(
	itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_itemdetail] primary key ([Id])

	)

------------------------------

create table labcptmap

	(
	labCode varchar(255) null
	,cptCode varchar(255) null
	,Id varchar(255) not null
	,CptItemId varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labcptmap] primary key ([Id])

	)

------------------------------

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

create table edi_facilities

	(
	Id varchar(255) not null
	,FacilityType varchar(255) not null
	,Name varchar(255) not null
	,AddressLine1 varchar(255) not null
	,AddressLine2 varchar(255) not null
	,City varchar(255) not null
	,State varchar(255) not null
	,Zip varchar(255) not null
	,Tel varchar(255) not null
	,Fax varchar(255) not null
	,EMail varchar(255) not null
	,BillingAddressLine1 varchar(255) not null
	,BillingAddressLine2 varchar(255) not null
	,BillingCity varchar(255) not null
	,BillingState varchar(255) not null
	,BillingZip varchar(255) not null
	,BillingTel varchar(255) not null
	,BillingFax varchar(255) not null
	,BillingEMail varchar(255) not null
	,PracticeType varchar(255) not null
	,PracticeOption varchar(255) not null
	,PayableTo varchar(255) not null
	,BankAccount varchar(255) not null
	,FederalTaxID varchar(255) not null
	,Notes varchar(255) not null
	,PrimaryFacility varchar(255) not null
	,CliaId varchar(255) not null
	,code varchar(255) not null
	,POS varchar(255) not null
	,MammoCertId varchar(255) not null
	,HPSAFlag varchar(255) not null
	,HPSAModifier varchar(255) not null
	,DeleteFlag varchar(255) not null
	,vmid varchar(255) not null
	,hl7id varchar(255) not null
	,Color varchar(255) null
	,FeeSchedule varchar(255) not null
	,FacilityIdType varchar(255) not null
	,PtStmtFacOption varchar(255) not null
	,PtStmtFacId varchar(255) not null
	,RestrictPrintAppts varchar(255) null
	,NPI varchar(255) not null
	,ImmStateId varchar(255) not null
	,TaxonomyCode varchar(255) not null
	,RestrictPrintStmts varchar(255) not null
	,startedOn varchar(255) null
	,RevenueCode varchar(255) null
	,Percent varchar(255) not null
	,OverrideSalesTax varchar(255) not null
	,MerchantID varchar(255) not null
	,ImmLocationId varchar(255) not null
	,TimeZoneCode varchar(255) null
	,MessCallerId varchar(255) null
	,MessOperNum varchar(255) null
	,CreditCardOption varchar(255) not null
	,CountryCode varchar(255) not null
	,BillingCountryCode varchar(255) not null
	,Immfacid varchar(255) null
	,BillType varchar(255) not null
	,takeNewPortalAppts varchar(255) null
	,portal_name varchar(255) null
	,takenewportalmsg varchar(255) null
	,showinpi varchar(255) null
	,modifiedDate varchar(255) not null
	,nsexclude varchar(255) not null
	,facilitysmsname varchar(255) not null
	,birthdayexclude varchar(255) not null
	,ASC_TN_FacilityType varchar(255) null
	,ASC_TN_FacilityId varchar(255) null
	,facilitynickname varchar(255) null
	,exclude varchar(255) not null
	,labexclude varchar(255) not null
	,ASC_WI_FacilityType varchar(255) null
	,rxexclude varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_edi_facilities] primary key ([Id])

	)

------------------------------

create table familyhxdetails

	(
	encounterId varchar(255) not null
	,itemId varchar(255) not null
	,icdItemid varchar(255) not null
	,icdCode varchar(255) not null
	,icdDesc varchar(255) not null
	,snomedCode varchar(255) not null
	,diagnosedYear varchar(255) not null
	,diagnosedAge varchar(255) not null
	,name varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_familyhxdetails] primary key ([EthId])

	)

------------------------------

create table hl7labdatadetail

	(
	ReportId varchar(255) not null
	,NAME varchar(255) not null
	,value varchar(255) not null
	,units varchar(255) not null
	,range varchar(255) not null
	,flag varchar(255) not null
	,notes varchar(255) not null
	,resultStatus varchar(255) not null
	,labId varchar(255) not null
	,hl7id varchar(255) null
	,profileid varchar(255) not null
	,serialno varchar(255) not null
	,obrcode varchar(255) not null
	,corrreportno varchar(255) not null
	,performingSiteId varchar(255) not null
	,prevvalue varchar(255) null
	,AttrResultDate varchar(255) null
	,AttrResultTime varchar(255) null
	,obsubid varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_hl7labdatadetail] primary key ([LogID])

	)

------------------------------

create table enc

	(
	encounterID varchar(255) not null
	,patientID varchar(255) not null
	,doctorID varchar(255) not null
	,date varchar(255) null
	,time varchar(255) null
	,startTime varchar(255) null
	,endTime varchar(255) null
	,reason varchar(255) null
	,VisitType varchar(255) null
	,roomNo varchar(255) null
	,STATUS varchar(255) not null
	,deleteFlag varchar(255) null
	,encType varchar(255) null
	,encLock varchar(255) null
	,Notes varchar(255) null
	,generalNotes varchar(255) not null
	,vmid varchar(255) not null
	,facilityId varchar(255) null
	,POS varchar(255) not null
	,arrivedTime varchar(255) not null
	,timeIn varchar(255) not null
	,timeOut varchar(255) not null
	,stsAfterArr varchar(255) not null
	,depTime varchar(255) not null
	,stsAfterChkIn varchar(255) not null
	,HL7Id varchar(255) not null
	,newPt varchar(255) not null
	,Dx varchar(255) not null
	,reminded varchar(255) null
	,remindedDate varchar(255) null
	,VisitCopay varchar(255) not null
	,CopayChanged varchar(255) not null
	,ClaimRequired varchar(255) not null
	,ClaimReq varchar(255) not null
	,VisitTypeOverriden varchar(255) null
	,refPrName varchar(255) null
	,refPrId varchar(255) null
	,PSACGroup varchar(255) null
	,deptid varchar(255) null
	,ResourceId varchar(255) not null
	,EncEligibilityStatus varchar(255) not null
	,EligibilityMessage varchar(255) not null
	,InvoiceId varchar(255) not null
	,EligSubId varchar(255) not null
	,EncEligibilityStatus2 varchar(255) not null
	,EligibilityMessage2 varchar(255) not null
	,EncEligibilityStatus3 varchar(255) not null
	,EligibilityMessage3 varchar(255) not null
	,trans_dictation varchar(255) null
	,waitTime varchar(255) null
	,websync varchar(255) null
	,dateIn varchar(255) null
	,dateOut varchar(255) null
	,notesDoneTime varchar(255) null
	,notesLoginId varchar(255) null
	,notesLogOutId varchar(255) null
	,visittypeid varchar(255) null
	,UTCStartTime varchar(255) null
	,UTCEndTime varchar(255) null
	,visitstscodeid varchar(255) not null
	,practiceId varchar(255) not null
	,immnotessendstatus varchar(255) null
	,transitionofcare varchar(255) null
	,prNotesSendStatus varchar(255) not null
	,readytobill varchar(255) not null
	,reviewbeforebill varchar(255) not null
	,EncEligibilityStatus4 varchar(255) not null
	,EligibilityMessage4 varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_enc] primary key ([encounterID])

	)

------------------------------

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

create table items

	(
	itemID varchar(255) not null
	,itemName varchar(255) not null
	,itemDesc varchar(255) not null
	,parentID varchar(255) not null
	,xmlPath varchar(255) not null
	,xslPath varchar(255) not null
	,itemType varchar(255) null
	,supplierId varchar(255) not null
	,price varchar(255) not null
	,discount varchar(255) not null
	,specialPrice varchar(255) not null
	,startDate varchar(255) not null
	,endDate varchar(255) not null
	,createdDate varchar(255) not null
	,modifiedDate varchar(255) not null
	,viewType varchar(255) not null
	,displayIndex varchar(255) null
	,deleteFlag varchar(255) not null
	,vmid varchar(255) not null
	,keyName varchar(255) not null
	,gender varchar(255) not null
	,overdue varchar(255) not null
	,inactive varchar(255) null
	,DrugNameId varchar(255) not null
	,showPathologyDetail varchar(255) not null
	,vmsgexclude varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_items] primary key ([itemID])

	)

------------------------------

create table maintenance

	(
	Id varchar(255) not null
	,UserId varchar(255) not null
	,Msg varchar(255) null
	,Comments varchar(255) null
	,Discussion varchar(255) null
	,StatusFlag varchar(255) not null
	,Status varchar(255) null
	,CreateDate varchar(255) null
	,ModifyDate varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_maintenance] primary key ([Id])

	)

------------------------------

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

create table faxlogs

	(
	LogID varchar(255) not null
	,LoginID varchar(255) not null
	,DoctorID varchar(255) not null
	,PatientID varchar(255) not null
	,ToID varchar(255) null
	,ToName varchar(255) not null
	,ToFax varchar(255) not null
	,ToCompany varchar(255) not null
	,EncounterID varchar(255) null
	,FaxInitTime varchar(255) not null
	,Retry varchar(255) null
	,Status varchar(255) not null
	,faxdata varchar(255) not null
	,FaxStatus varchar(255) not null
	,SendDate varchar(255) null
	,FaxType varchar(255) null
	,FaxManLogID varchar(255) not null
	,FaxPrefix varchar(255) not null
	,FaxFile varchar(255) null
	,FaxTransaction varchar(255) null
	,RxIds varchar(255) null
	,FaxLogStatus varchar(255) not null
	,FaxLogBatch varchar(255) null
	,FacilityID varchar(255) not null
	,FacilityName varchar(255) not null
	,reminded varchar(255) null
	,remindedDate varchar(255) null
	,FaxCoverPage varchar(255) not null
	,FaxCoverPageID varchar(255) not null
	,FaxStatusMsg varchar(255) not null
	,FaxSubject varchar(255) not null
	,LoginName varchar(255) not null
	,scheduledDate varchar(255) null
	,sentnotification varchar(255) not null
	,OriginalFaxDoc varchar(255) null
	,FromName varchar(255) null
	,FromVoice varchar(255) null
	,fromcompany varchar(255) not null
	,FaxInitTime2 varchar(255) not null
	,isMsgSent varchar(255) not null
	,isTextMsgSent varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_faxlogs] primary key ([LogID])

	)

------------------------------

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

create table preventive

	(
	encounterID varchar(255) not null
	,catID varchar(255) not null
	,itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_preventive] primary key ([pid])

	)

------------------------------

create table printlogs

	(
	LogID varchar(255) not null
	,LoginID varchar(255) not null
	,DoctorID varchar(255) not null
	,PatientID varchar(255) not null
	,EncounterID varchar(255) null
	,PrintData varchar(255) not null
	,PrintDate varchar(255) not null
	,PrintType varchar(255) null
	,PrintTransaction varchar(255) null
	,RxList varchar(255) null
	,PrintLogStatus varchar(255) not null
	,PrintLogBatch varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_printlogs] primary key ([LogID])

	)

------------------------------

create table insurance

	(
	insId varchar(255) not null
	,insuranceName varchar(255) null
	,insurancephone varchar(255) null
	,insurancefax varchar(255) null
	,insuranceemail varchar(255) null
	,insuranceaddress varchar(255) null
	,insuranceaddress2 varchar(255) not null
	,insurancecity varchar(255) null
	,insurancestate varchar(255) null
	,insurancezip varchar(255) null
	,PayorId varchar(255) not null
	,ClaimOfficeNumber varchar(255) not null
	,ClaimOfficeNumberType varchar(255) not null
	,MedigapID varchar(255) not null
	,carrierCode varchar(255) not null
	,ProviderIdRef varchar(255) not null
	,TestProdIndicator varchar(255) not null
	,ANSI varchar(255) null
	,SendSVT varchar(255) null
	,SendDecimalUnit varchar(255) null
	,PaymentSrc varchar(255) not null
	,capitationplan varchar(255) not null
	,capitationpayment varchar(255) not null
	,deleteFlag varchar(255) not null
	,vmid varchar(255) not null
	,labcorpid varchar(255) null
	,website varchar(255) not null
	,Send2310EAlways varchar(255) not null
	,ClaimSubmitType varchar(255) not null
	,ERAPayorId varchar(255) not null
	,Inactive varchar(255) not null
	,AllCodesCapitated varchar(255) not null
	,SelCodesCapitated varchar(255) not null
	,ReqOrdPrInfo varchar(255) not null
	,sendDupSubNoForPat varchar(255) null
	,prodDateAsCheckDate varchar(255) null
	,ReqUPINInEA021 varchar(255) not null
	,hl7id1 varchar(255) null
	,hl7id2 varchar(255) null
	,insuranceclass varchar(255) null
	,InsTypeMedicare varchar(255) not null
	,InsTypeOthers varchar(255) not null
	,FeeSchedId varchar(255) null
	,SecClaimsElectronic varchar(255) not null
	,PrAssignInd varchar(255) not null
	,Notes varchar(255) null
	,Box31Format varchar(255) not null
	,Box17ProviderType varchar(255) not null
	,Box17ProviderIdType varchar(255) not null
	,Box17ProviderRuleEnabled varchar(255) not null
	,SendInsPinForSupr varchar(255) not null
	,insurancephone2 varchar(255) null
	,InsuranceType varchar(255) null
	,ClaimType varchar(255) not null
	,Box31Line2Format varchar(255) not null
	,sendSubDemAlways varchar(255) not null
	,SplitClaimOnICD varchar(255) not null
	,EnableReferralNumber varchar(255) not null
	,DoNotPrintHcfa29 varchar(255) not null
	,DoNotPrintHcfa30 varchar(255) not null
	,Box17ProviderIdTypeMap varchar(255) not null
	,McaidNYPlanCode varchar(255) not null
	,PrintHcfa22 varchar(255) not null
	,EnableSympDate varchar(255) not null
	,EnableSimilarSympDate varchar(255) not null
	,SupressFacAddrForPOS11Enic varchar(255) not null
	,UseNpi varchar(255) not null
	,UseLegacy varchar(255) null
	,x270payorId varchar(255) not null
	,UseGroupNoForEligibility varchar(255) not null
	,CalculateAllowed varchar(255) not null
	,SupressFacAddrForPOS11Paper varchar(255) not null
	,x270LegacyNPI varchar(255) not null
	,FirstLinePost varchar(255) not null
	,SubscriberMask varchar(255) not null
	,subscriberLength varchar(255) not null
	,CO42MapCode varchar(255) not null
	,PrintEPSDTReferralCodeInHcfa24C varchar(255) not null
	,SendStrictDOS varchar(255) not null
	,UseFacilityPrvForRendProv varchar(255) not null
	,sendP2ProvPrvAlways varchar(255) not null
	,RequiredReferral varchar(255) not null
	,FPStringMandatory varchar(255) not null
	,SubNoMaxLen varchar(255) not null
	,SubNoMinLen varchar(255) not null
	,SendOTAFSeg varchar(255) not null
	,HCFA_Box19 varchar(255) not null
	,SendGrpNoin2310B varchar(255) not null
	,Send2420CAlways varchar(255) not null
	,Send2420CIf2310DOmited varchar(255) not null
	,UseLegacyForPrint varchar(255) not null
	,InsuranceAlert varchar(255) null
	,UseNPIForPrint varchar(255) not null
	,FeeSchedulesByLocation varchar(255) not null
	,InsurancePrimaryType varchar(255) null
	,ExcludeInPtStmts varchar(255) null
	,UseExtendedPrvOption varchar(255) not null
	,Send2000APrv varchar(255) not null
	,Send2310BPrv varchar(255) not null
	,Send2420APrv varchar(255) not null
	,SuppressRefProvUPIN varchar(255) not null
	,SuppressTaxIdInLoop2310A varchar(255) not null
	,SuppressTaxIdInLoop2310B varchar(255) not null
	,SuppressTaxIdInLoop2420A varchar(255) not null
	,SuppressTaxIdInLoop2310DAnd2420C varchar(255) not null
	,SubmitPtPmts varchar(255) not null
	,SuppressPrvInLoop2310A varchar(255) not null
	,SuppressRendProvUPIN varchar(255) not null
	,SuppressSuperProvUPIN varchar(255) not null
	,SuppressOrderProvUPIN varchar(255) not null
	,SuppressPurchasedProvUPIN varchar(255) not null
	,SuppressServiceFacilityUPIN varchar(255) not null
	,SuppressTaxIdInLoop2310C varchar(255) not null
	,SuppressTaxIdInLoop2310E varchar(255) not null
	,SuppressTaxIdInLoop2420E varchar(255) not null
	,X270SendTrnAlways varchar(255) not null
	,X270CustomMapLegacy varchar(255) not null
	,SendOtafInPrimary varchar(255) not null
	,x270SendEbDateRange varchar(255) not null
	,x270SendPrv varchar(255) not null
	,x270SendEbAddlInfo varchar(255) not null
	,BestMatchCpt varchar(255) not null
	,DoNotAddSalesTax varchar(255) not null
	,enrollmentReq varchar(255) not null
	,CountryCode varchar(255) not null
	,NDCFormat varchar(255) null
	,X270SendDoi varchar(255) not null
	,X270SendDosAsDoi varchar(255) not null
	,SendHyphenInTaxId varchar(255) not null
	,IsAnesthesiaMinutesInHCFA varchar(255) not null
	,PrimaryTimelyFiling varchar(255) not null
	,SecondaryTimelyFiling varchar(255) not null
	,IsServiceLocationAddressinLoop2010AA varchar(255) not null
	,NoPrimaryOtafIn2400 varchar(255) not null
	,StripLeadingZeroFromMoney varchar(255) not null
	,SendMedicalRecordNumber varchar(255) not null
	,x270SendGroupNo varchar(255) not null
	,x270SendRelationShip varchar(255) not null
	,x270SendSSN varchar(255) not null
	,x270SendInsuredN4 varchar(255) not null
	,StripTrailingZerosFromMoney varchar(255) not null
	,insuranceNameANSI varchar(255) not null
	,HPSAQualify varchar(255) not null
	,PrintEPSDTDataInHcfa10d varchar(255) not null
	,ConsiderToothNumberAsModifier varchar(255) not null
	,DoNotAddFinanceChrg varchar(255) not null
	,CapitationType varchar(255) null
	,LiabilityCarrierCode varchar(255) not null
	,ecwMasterId varchar(255) not null
	,EnterpriseId varchar(255) not null
	,DoNotChangeClmAssgnmntAfterCapAdj varchar(255) not null
	,modifiedDate varchar(255) not null
	,AdditionalMask varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_insurance] primary key ([insId])

	)

------------------------------

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

create table labdatadetail

	(
	ReportId varchar(255) not null
	,PropId varchar(255) not null
	,Value varchar(255) null
	,importFlag varchar(255) not null
	,Id varchar(255) not null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,TestID varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labdatadetail] primary key ([Id])

	)

------------------------------

create table labdataex

	(
	reportId varchar(255) not null
	,HL7ResultDate varchar(255) null
	,HL7ResultTime varchar(255) null
	,urllink varchar(255) null
	,interfacestatus varchar(255) null
	,processedresult varchar(255) null
	,VisitType varchar(255) not null
	,DateReceived varchar(255) not null
	,resultrcvddatetime varchar(255) not null
	,MigrateFlag varchar(255) not null
	,SentOutReqNo varchar(255) not null
	,facilityId varchar(255) not null
	,specimenReceiveTime varchar(255) not null
	,specimenReceiveDate varchar(255) not null
	,isPACSLinkEnabled varchar(255) not null
	,observationDate varchar(255) not null
	,observationTime varchar(255) not null
	,SpecimenActionCode varchar(255) not null
	,PlacerGroupNumberID varchar(255) not null
	,PatientAltRace varchar(255) not null
	,bodysitecode varchar(255) not null
	,ABNPrompted varchar(255) not null
	,ABNOption varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labdataex] primary key ([reportId])

	)

------------------------------

create table lablist

	(
	ID varchar(255) not null
	,name varchar(255) not null
	,deleteFlag varchar(255) not null
	,LabId varchar(255) not null
	,labaddress varchar(255) not null
	,labaddress2 varchar(255) not null
	,labcity varchar(255) not null
	,labstate varchar(255) not null
	,labzip varchar(255) not null
	,labphone varchar(255) not null
	,labfax varchar(255) not null
	,labemail varchar(255) null
	,interfaceConfigured varchar(255) not null
	,sendoutboundresult varchar(255) null
	,labcompanyType varchar(255) not null
	,inHouseLab varchar(255) not null
	,ResultLabId varchar(255) not null
	,labCode varchar(255) not null
	,superhubInterfaceID varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_lablist] primary key ([ID])

	)

------------------------------

create table labloinccodes

	(
	itemid varchar(255) not null
	,code varchar(255) not null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,deleteflag varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labloinccodes] primary key ([itemid])

	)

------------------------------

create table language_codes

	(
	Name varchar(255) not null
	,Favorite varchar(255) null
	,Code varchar(255) null
	,LangID varchar(255) not null
	,isocode1 varchar(255) null
	,isocode2 varchar(255) null
	,isoname varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_language_codes] primary key ([LangID])

	)

------------------------------

create table letterlogs

	(
	Id varchar(255) not null
	,patientId varchar(255) not null
	,letterId varchar(255) not null
	,letterName varchar(255) not null
	,printedBy varchar(255) not null
	,date varchar(255) not null
	,time varchar(255) not null
	,categoryID varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_letterlogs] primary key ([Id])

	)

------------------------------

create table logptspecificdata

	(
	id varchar(255) not null
	,patientid varchar(255) not null
	,truserid varchar(255) not null
	,modified_date varchar(255) not null
	,modified_time varchar(255) not null
	,timestamp varchar(255) not null
	,status varchar(255) not null
	,truser_name varchar(255) not null
	,action varchar(255) not null
	,dataelementid varchar(255) not null
	,logptspecificid varchar(255) not null
	,itemid varchar(255) not null
	,encounterid varchar(255) not null
	,data varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_logptspecificdata] primary key ([id])

	)

------------------------------

create table oldrxdetail

	(
	OldRxId varchar(255) null
	,Prop varchar(255) not null
	,value varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_oldrxdetail] primary key ([Id])

	)

------------------------------

create table problemlist_ext

	(
	Id varchar(255) not null
	,PatientId varchar(255) not null
	,NKPFlag varchar(255) not null
	,NKPDate varchar(255) null
	,deleteFlag varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_problemlist_ext] primary key ([Id])

	)

------------------------------

create table loincmaster

	(
	LOINC_NUM varchar(255) not null
	,COMPONENT varchar(255) null
	,PROPERTY varchar(255) null
	,TIME_ASPCT varchar(255) null
	,SYSTEM varchar(255) null
	,SCALE_TYP varchar(255) null
	,METHOD_TYP varchar(255) null
	,RELAT_NMS varchar(255) null
	,CLASS varchar(255) null
	,SOURCE varchar(255) null
	,DT_LAST_CH varchar(255) null
	,CHNG_TYPE varchar(255) null
	,COMMENTS varchar(255) null
	,ANSWERLIST varchar(255) null
	,STATUS varchar(255) null
	,MAP_TO varchar(255) null
	,SCOPE varchar(255) null
	,CONSUMER_NAME varchar(255) null
	,IPCC_UNITS varchar(255) null
	,REFERENCE varchar(255) null
	,EXACT_CMP_SY varchar(255) null
	,MOLAR_MASS varchar(255) null
	,CLASSTYPE varchar(255) null
	,FORMULA varchar(255) null
	,SPECIES varchar(255) null
	,EXMPL_ANSWERS varchar(255) null
	,ACSSYM varchar(255) null
	,BASE_NAME varchar(255) null
	,FINAL varchar(255) null
	,NAACCR_ID varchar(255) null
	,CODE_TABLE varchar(255) null
	,SETROOT varchar(255) null
	,PanelElements varchar(255) null
	,SURVEY_QUEST_TEXT varchar(255) null
	,SURVEY_QUEST_SRC varchar(255) null
	,UnitsRequired varchar(255) null
	,SUBMITTED_UNITS varchar(255) null
	,RelatedNames2 varchar(255) null
	,SHORTNAME varchar(255) null
	,ORDER_OBS varchar(255) null
	,CDISC_COMMON_TESTS varchar(255) null
	,HL7_FIELD_SUBFIELD_ID varchar(255) null
	,EXTERNAL_COPYRIGHT_NOTICE varchar(255) null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,deleteflag varchar(255) not null
	,EXAMPLE_UNITS varchar(255) null
	,INPC_PERCENTAGE varchar(255) null
	,LONG_COMMON_NAME varchar(255) null
	,HL7_V2_DATATYPE varchar(255) null
	,HL7_V3_DATATYPE varchar(255) null
	,CURATED_RANGE_AND_UNITS varchar(255) null
	,DOCUMENT_SECTION varchar(255) null
	,DEFINITION_DESCRIPTION_HELP varchar(255) null
	,EXAMPLE_UCUM_UNITS varchar(255) null
	,EXAMPLE_SI_UCUM_UNITS varchar(255) null
	,STATUS_REASON varchar(255) null
	,STATUS_TEXT varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_loincmaster] primary key ([LOINC_NUM])

	)

------------------------------

create table patients

	(
	pid varchar(255) not null
	,ControlNo varchar(255) not null
	,employername varchar(255) not null
	,employeraddress varchar(255) null
	,employeraddress2 varchar(255) not null
	,employercity varchar(255) null
	,employerstate varchar(255) null
	,employerzip varchar(255) null
	,employerPhone varchar(255) null
	,msgflag varchar(255) null
	,insname varchar(255) null
	,insgroupno varchar(255) null
	,inssubscriberno varchar(255) null
	,inscopay varchar(255) null
	,pastHistory varchar(255) null
	,pharmacyname varchar(255) null
	,pharmacyno varchar(255) null
	,surgicalHistory varchar(255) null
	,hospitalization varchar(255) null
	,medications varchar(255) null
	,insname2 varchar(255) null
	,insgroupno2 varchar(255) null
	,inssubscriberno2 varchar(255) null
	,inscopay2 varchar(255) null
	,straddress varchar(255) null
	,city varchar(255) null
	,state varchar(255) null
	,zip varchar(255) null
	,doctorId varchar(255) not null
	,AttendingDoctorId varchar(255) not null
	,pharmacyFax varchar(255) null
	,pmcId varchar(255) null
	,insId varchar(255) null
	,insId2 varchar(255) null
	,maritalstatus varchar(255) not null
	,strAddress2 varchar(255) null
	,notes varchar(255) not null
	,deceased varchar(255) not null
	,deceasedDate varchar(255) not null
	,deceasedNotes varchar(255) not null
	,language varchar(255) not null
	,GrId varchar(255) not null
	,GrRel varchar(255) not null
	,IsGrPt varchar(255) not null
	,GrType varchar(255) not null
	,PrimIns varchar(255) not null
	,ResType varchar(255) not null
	,StudentStatus varchar(255) not null
	,EmpStatus varchar(255) not null
	,picFileName varchar(255) not null
	,RelInfo varchar(255) not null
	,RelInfoDate varchar(255) null
	,PayorType varchar(255) not null
	,SelfPay varchar(255) not null
	,hl7Id varchar(255) not null
	,BillingAlert varchar(255) not null
	,BillingAlertNotes varchar(255) not null
	,givenToColl varchar(255) not null
	,givenDate varchar(255) null
	,DefFeeSchId varchar(255) not null
	,race varchar(255) not null
	,PtStatus varchar(255) null
	,ptStmtDate varchar(255) null
	,refPrId varchar(255) null
	,rendPrId varchar(255) null
	,nostatements varchar(255) not null
	,CurrentCollectionStatus varchar(255) not null
	,CollectionTimestamp varchar(255) not null
	,interpretSvc varchar(255) null
	,GlobalAlert varchar(255) not null
	,characterestic varchar(255) not null
	,CollectionStageDate varchar(255) not null
	,regdate varchar(255) null
	,ethnicity varchar(255) null
	,vfc varchar(255) null
	,empId varchar(255) not null
	,irisenroll varchar(255) not null
	,CollectionAgencyStatus varchar(255) null
	,RxConsent varchar(255) null
	,acctbal varchar(255) null
	,CollStartStopDt varchar(255) null
	,MailOrderPharmacyId varchar(255) null
	,MOMemberId varchar(255) null
	,teamMember varchar(255) not null
	,bTranslator varchar(255) null
	,Address2Country varchar(255) not null
	,VoiceEnabled varchar(255) null
	,assignedtoId varchar(255) not null
	,assignedto varchar(255) not null
	,UseStreetAddressForRxFlag varchar(255) null
	,textenabled varchar(255) null
	,GrStmtDate varchar(255) null
	,msgCellflag varchar(255) null
	,enableEmail varchar(255) null
	,enableLetters varchar(255) null
	,webEnabledDate varchar(255) null
	,preset varchar(255) null
	,encpwd varchar(255) null
	,lognotes varchar(255) null
	,optout varchar(255) null
	,optreasonId varchar(255) null
	,IsMigratedRecord varchar(255) null
	,DefaultLab varchar(255) not null
	,DefaultDI varchar(255) not null
	,emailreasonId varchar(255) null
	,isKioskConsentReceived varchar(255) null
	,isPtOptsOut varchar(255) not null
	,secureMsgKey varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_patients] primary key ([pid])

	)

------------------------------

create table problemlist

	(
	patientId varchar(255) not null
	,encounterId varchar(255) not null
	,asmtId varchar(255) not null
	,specify varchar(255) not null
	,notes varchar(255) not null
	,deleteFlag varchar(255) not null
	,onsetdate varchar(255) null
	,userid varchar(255) not null
	,logdate varchar(255) not null
	,inactiveFlag varchar(255) not null
	,WUStatus varchar(255) not null
	,condition varchar(255) not null
	,SlNo varchar(255) not null
	,displayIndex varchar(255) not null
	,Risk varchar(255) not null
	,AddedDate varchar(255) not null
	,ProblemType varchar(255) not null
	,Resolved varchar(255) not null
	,resolvedon varchar(255) not null
	,SNOMED varchar(255) not null
	,SNOMEDDesc varchar(255) null
	,SNOMEDDescID varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_problemlist] primary key ([SlNo])

	)

------------------------------

create table procedurespl

	(
	encounterId varchar(255) not null
	,catID varchar(255) not null
	,itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,displayIndex varchar(255) not null
	,VALUE2 varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_procedurespl] primary key ([Id])

	)

------------------------------

create table progressnotes

	(
	encounterID varchar(255) not null
	,summary varchar(255) not null
	,xslId varchar(255) not null
	,unlocked varchar(255) not null
	,ModifyDate varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_progressnotes] primary key ([Id])

	)

------------------------------

create table properties

	(
	propID varchar(255) not null
	,name varchar(255) not null
	,description varchar(255) null
	,type varchar(255) null
	,viewtype varchar(255) null
	,size varchar(255) null
	,displayName varchar(255) null
	,pdetailID varchar(255) null
	,displayIndex varchar(255) null
	,delPropFlag varchar(255) not null
	,vmid varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_properties] primary key ([propID])

	)

------------------------------

create table pt_adv_directives

	(
	Id varchar(255) not null
	,PtId varchar(255) not null
	,Code varchar(255) not null
	,Name varchar(255) not null
	,MDate varchar(255) not null
	,delflag varchar(255) null
	,displayindex varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_pt_adv_directives] primary key ([Id])

	)

------------------------------

create table pt_emailreason

	(
	id varchar(255) not null
	,description varchar(255) null
	,delflag varchar(255) null
	,displayindex varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_pt_emailreason] primary key ([id])

	)

------------------------------

create table ref_attachments

	(
	id varchar(255) not null
	,RefId varchar(255) null
	,doctype varchar(255) not null
	,docId varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_ref_attachments] primary key ([id])

	)

------------------------------

create table referral

	(
	ReferralId varchar(255) not null
	,patientID varchar(255) not null
	,insId varchar(255) not null
	,refFrom varchar(255) not null
	,authNo varchar(255) not null
	,date varchar(255) not null
	,reason varchar(255) not null
	,diagnosis varchar(255) not null
	,refStDate varchar(255) not null
	,refEnddate varchar(255) not null
	,visitsAllowed varchar(255) not null
	,visitsUsed varchar(255) not null
	,RefTo varchar(255) not null
	,notes varchar(255) not null
	,deleteFlag varchar(255) not null
	,referralType varchar(255) not null
	,priority varchar(255) not null
	,assignedTo varchar(255) not null
	,assignedToId varchar(255) not null
	,status varchar(255) not null
	,authtype varchar(255) not null
	,procedures varchar(255) not null
	,fromfacility varchar(255) not null
	,ToFacility varchar(255) not null
	,speciality varchar(255) not null
	,POS varchar(255) not null
	,UnitType varchar(255) not null
	,FrontOfficeAuth varchar(255) null
	,ReferralNumber varchar(255) not null
	,apptDate varchar(255) not null
	,clinicalNotes varchar(255) null
	,ReceivedDate varchar(255) not null
	,refEncId varchar(255) not null
	,ApptTime varchar(255) not null
	,extNHXApptBlockId varchar(255) not null
	,extNHXRefTxId varchar(255) not null
	,refReqId varchar(255) not null
	,refFromP2pNPI varchar(255) not null
	,refFromName varchar(255) not null
	,refToP2pNPI varchar(255) not null
	,refToName varchar(255) not null
	,uploadedToPtDocs varchar(255) not null
	,modifiedDate varchar(255) not null
	,refToCCNameList varchar(255) null
	,refToCCNPIList varchar(255) null
	,p2pDeliveryStatus varchar(255) null
	,statusUpdateDate varchar(255) not null
	,ccdaValidationStatus varchar(255) null
	,fromDirectAddress varchar(255) not null
	,toDirectAddress varchar(255) not null
	,toDirectAddress1 varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_referral] primary key ([ReferralId])

	)

------------------------------

create table social

	(
	encounterID varchar(255) not null
	,catID varchar(255) not null
	,itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_social] primary key ([ID])

	)

------------------------------

create table structdatadetail

	(
	Id varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,name varchar(255) not null
	,type varchar(255) not null
	,mandatory varchar(255) not null
	,displayIndex varchar(255) not null
	,deleteFlag varchar(255) not null
	,parentId varchar(255) not null
	,triggerflag varchar(255) not null
	,itemType varchar(255) not null
	,nodeLevel varchar(255) not null
	,tblName varchar(255) not null
	,chartDisplay varchar(255) null
	,multiSelect varchar(255) not null
	,IsSearchable varchar(255) null
	,defaultValue varchar(255) null
	,defaultValueId varchar(255) null
	,modifynotes varchar(255) null
	,readonly varchar(255) null
	,dropdown varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structdatadetail] primary key ([Id])

	)

------------------------------

create table structexam

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,displayIndex varchar(255) not null
	,chartdisplay varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structexam] primary key ([Id])

	)

------------------------------

create table smsmsglogs

	(
	ID varchar(255) not null
	,ToSMSName varchar(255) null
	,ToSMSNumber varchar(255) null
	,ToSMSProvider varchar(255) null
	,Retry varchar(255) null
	,SMSMessageID varchar(255) null
	,SMSMESSAGEBODY varchar(255) null
	,SmsMessageStatus varchar(255) null
	,smsMessageType varchar(255) null
	,SMSSubject varchar(255) null
	,sentdate varchar(255) not null
	,SentTime varchar(255) null
	,ScheduledDate varchar(255) null
	,ScheduledTime varchar(255) null
	,FromSMSName varchar(255) null
	,FromSMSNumber varchar(255) null
	,FromSMSProvider varchar(255) null
	,ClientId varchar(255) null
	,Priority varchar(255) null
	,EcwWebSMSUser varchar(255) null
	,ErrorId varchar(255) null
	,ErrorMsg varchar(255) null
	,DateCreated varchar(255) not null
	,isDeleted varchar(255) null
	,EncounterID varchar(255) null
	,LabID varchar(255) null
	,PatientId varchar(255) null
	,FacilityId varchar(255) null
	,PtStatementId varchar(255) null
	,Language varchar(255) null
	,SMSMsgUser varchar(255) null
	,SMSMsgPwd varchar(255) null
	,AppServMachineName varchar(255) null
	,AppServMachineIP varchar(255) null
	,AppServMacAddr varchar(255) null
	,SentByLastName varchar(255) null
	,SentByFirstName varchar(255) not null
	,SentBy varchar(255) null
	,VendorMsgId varchar(255) null
	,VendorSMSresponse varchar(255) null
	,TemplateId varchar(255) null
	,uploadlocation varchar(255) null
	,DoctorId varchar(255) null
	,RequiredConfirm varchar(255) null
	,ConfirmNumber varchar(255) null
	,smsmsgreply varchar(255) null
	,smsmsgreply_id varchar(255) null
	,parentid varchar(255) not null
	,ActualMessage varchar(255) null
	,ResourceId varchar(255) not null
	,msgSource varchar(255) null
	,ecwversion varchar(255) null
	,ecmversion varchar(255) null
	,AutoUpgradeKey varchar(255) null
	,FaxLogId varchar(255) null
	,eRxReqID varchar(255) null
	,eRxReFillReqID varchar(255) null
	,campaignid varchar(255) not null
	,campaign varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_smsmsglogs] primary key ([ID])

	)

------------------------------

create table structhpi

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) not null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,chartdisplay varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structhpi] primary key ([Id])

	)

------------------------------

create table structpreventive

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,chartdisplay varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structpreventive] primary key ([Id])

	)

------------------------------

create table structsocialhistory

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,chartdisplay varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structsocialhistory] primary key ([Id])

	)

------------------------------

create table surescript_eprescription

	(
	ReqID varchar(255) not null
	,RxType varchar(255) null
	,MessageID varchar(255) null
	,RelatedMessageID varchar(255) null
	,SentTo varchar(255) null
	,SentFrom varchar(255) null
	,SentTime varchar(255) null
	,MessageText varchar(255) null
	,StatusDesc varchar(255) null
	,AttemptNo varchar(255) null
	,LastAttemptTimeStamp varchar(255) null
	,PatientID varchar(255) not null
	,encounterID varchar(255) null
	,Patient_FName varchar(255) null
	,Patient_LName varchar(255) null
	,Patient_MName varchar(255) null
	,DateOfBirth varchar(255) null
	,Sex varchar(255) null
	,Ssn varchar(255) null
	,AddressLine1 varchar(255) null
	,AddressLine2 varchar(255) null
	,City varchar(255) null
	,State varchar(255) null
	,ZipCode varchar(255) null
	,Patient_PrimaryPhone varchar(255) null
	,Patient_CellPhone varchar(255) null
	,Patient_Fax varchar(255) null
	,Patient_Email varchar(255) null
	,DoctorID varchar(255) not null
	,SPI varchar(255) null
	,StateLicenseNumber varchar(255) null
	,doc_ssn varchar(255) null
	,DEANo varchar(255) null
	,doc_FName varchar(255) null
	,doc_LName varchar(255) null
	,doc_MName varchar(255) null
	,doc_suffix varchar(255) null
	,Speciality varchar(255) null
	,SpecialityCode varchar(255) null
	,doc_AddressLine1 varchar(255) null
	,doc_AddressLine2 varchar(255) null
	,doc_City varchar(255) null
	,doc_State varchar(255) null
	,doc_Zipcode varchar(255) null
	,doc_Primaryphone varchar(255) null
	,doc_Pagerno varchar(255) null
	,doc_Mobilephone varchar(255) null
	,PharmacyID varchar(255) not null
	,NCPDPID varchar(255) null
	,PharmacyName varchar(255) null
	,Pharmacy_AddressLine1 varchar(255) null
	,Pharmacy_City varchar(255) null
	,Pharmacy_State varchar(255) null
	,Pharmacy_Zipcode varchar(255) null
	,Pharmacy_Phone varchar(255) null
	,Pharmacy_Fax varchar(255) null
	,Pharmacy_Email varchar(255) null
	,DrugDescription varchar(255) null
	,ProductCode varchar(255) null
	,ProductCodeQualifier varchar(255) null
	,DosageForm varchar(255) null
	,Strength varchar(255) null
	,StrengthUnits varchar(255) null
	,DrugDBCode varchar(255) null
	,DrugDBCodeQualifier varchar(255) null
	,Frequency varchar(255) null
	,duration varchar(255) null
	,Quantity varchar(255) null
	,Take varchar(255) null
	,Refills varchar(255) null
	,SubsMedAllowed varchar(255) null
	,Comments varchar(255) null
	,XMLData varchar(255) null
	,XMLResponseData varchar(255) null
	,RefillsQualifier varchar(255) null
	,bAsynMsgPostedToDoc varchar(255) null
	,bVerified varchar(255) null
	,ScriptVersion varchar(255) null
	,SentBy varchar(255) null
	,RxhubId varchar(255) null
	,RouteSource varchar(255) not null
	,Addressed varchar(255) null
	,AddressedBy varchar(255) null
	,PrescriberOrderNo varchar(255) null
	,SentById varchar(255) null
	,IpAddress varchar(255) null
	,isVoiceMsgSent varchar(255) not null
	,isTextMsgSent varchar(255) null
	,rxOrderNo varchar(255) null
	,DEASchedule varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_surescript_eprescription] primary key ([ReqID])

	)

------------------------------

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

create table users

	(
	uid varchar(255) not null
	,uname varchar(255) not null
	,upwd varchar(255) null
	,udesc varchar(255) null
	,uroomno varchar(255) not null
	,umobileno varchar(255) not null
	,upagerno varchar(255) not null
	,ufname varchar(255) null
	,uminitial varchar(255) null
	,ulname varchar(255) null
	,uemail varchar(255) null
	,uwebpage varchar(255) null
	,upaddress varchar(255) null
	,upcity varchar(255) not null
	,upstate varchar(255) null
	,upPhone varchar(255) null
	,UserType varchar(255) null
	,zipcode varchar(255) null
	,dob varchar(255) null
	,ssn varchar(255) null
	,mflag varchar(255) null
	,updid varchar(255) null
	,cdate varchar(255) null
	,mdate varchar(255) not null
	,sex varchar(255) null
	,upaddress2 varchar(255) null
	,suffix varchar(255) null
	,prefix varchar(255) null
	,initials varchar(255) not null
	,ptDob varchar(255) not null
	,delFlag varchar(255) not null
	,vmid varchar(255) not null
	,status varchar(255) null
	,webenabled varchar(255) null
	,websync varchar(255) null
	,changePass varchar(255) null
	,primaryservicelocation varchar(255) not null
	,upreviousname varchar(255) null
	,IsResource varchar(255) not null
	,EligibilityStatus varchar(255) not null
	,OSUUserType varchar(255) not null
	,DefApptProvForResource varchar(255) not null
	,locked varchar(255) null
	,EncEligibilityStatus2 varchar(255) not null
	,EligibilityMessage2 varchar(255) not null
	,EncEligibilityStatus3 varchar(255) not null
	,EligibilityMessage3 varchar(255) not null
	,EncEligibilityStatus varchar(255) not null
	,EligibilityMessage varchar(255) not null
	,AllFacilities varchar(255) not null
	,Emrsex varchar(255) not null
	,CountryCode varchar(255) not null
	,transgender varchar(255) not null
	,EnterpriseId varchar(255) not null
	,gestationalAge varchar(255) not null
	,timeofbirth varchar(255) null
	,LANGUAGE varchar(255) not null
	,county varchar(255) not null
	,isCredentialed varchar(255) null
	,EncEligibilityStatus4 varchar(255) not null
	,EligibilityMessage4 varchar(255) not null
	,ACOUserType varchar(255) not null
	,credentialschange varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_users] primary key ([uid])

	)

------------------------------

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

create table visitsummarylog

	(
	id varchar(255) not null
	,encId varchar(255) null
	,uid varchar(255) null
	,requestDate varchar(255) null
	,requestedBy varchar(255) null
	,vsdata varchar(255) null
	,status varchar(255) null
	,loggedfrom varchar(255) not null
	,ccddata varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_visitsummarylog] primary key ([id])

	)

------------------------------

create table vitals

	(
	encounterID varchar(255) not null
	,vitalID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) not null
	,Id varchar(255) not null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,defaultValue varchar(255) not null
	,valueHtm varchar(255) not null
	,value2 varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_vitals] primary key ([Id])

	)

------------------------------

create table voicemsglogs

	(
	ID varchar(255) not null
	,ToName varchar(255) null
	,ContactType varchar(255) null
	,ToPhone varchar(255) null
	,Retry varchar(255) null
	,voiceMessageStatus varchar(255) null
	,SentDate varchar(255) null
	,Priority varchar(255) null
	,VoiceMessageType varchar(255) null
	,VoiceMessageLiveText varchar(255) null
	,VoiceMessageLiveAudio varchar(255) null
	,VoiceMessageMachineText varchar(255) null
	,VoiceMessageMachineAudio varchar(255) null
	,InitialGreetingAudio varchar(255) null
	,VoiceMessageId varchar(255) null
	,Date_Created varchar(255) not null
	,Date_Modified varchar(255) null
	,isDeleted varchar(255) null
	,StatusMsg varchar(255) null
	,CallerIDNumber varchar(255) null
	,InitialGreetingAudioText varchar(255) null
	,OtherContactType varchar(255) null
	,EncounterID varchar(255) null
	,MaxLiveReplays varchar(255) null
	,OperatorNumber varchar(255) null
	,ConfirmationStatus varchar(255) null
	,DeliveryType varchar(255) null
	,ErrorMsg varchar(255) null
	,LabID varchar(255) not null
	,ConfirmCancelEnabled varchar(255) null
	,PatientId varchar(255) null
	,PtStatementId varchar(255) null
	,Language varchar(255) null
	,ScheduledDate varchar(255) not null
	,ScheduledTime varchar(255) not null
	,SentByLastName varchar(255) not null
	,SentByFirstName varchar(255) not null
	,SentBy varchar(255) not null
	,FacilityId varchar(255) not null
	,SentTime varchar(255) not null
	,uploadLocation varchar(255) null
	,TTSVoice varchar(255) null
	,VMsgUser varchar(255) null
	,VMsgPwd varchar(255) null
	,AppServMachineName varchar(255) null
	,AppServMachineIP varchar(255) null
	,parentid varchar(255) null
	,recordurl varchar(255) null
	,StatusDetail varchar(255) null
	,ResourceId varchar(255) not null
	,recordedMessageId varchar(255) null
	,ecwVersion varchar(255) null
	,ecmVersion varchar(255) null
	,timeZone varchar(255) null
	,retryfailedmsg varchar(255) not null
	,ApptStatus varchar(255) null
	,ivrvalue varchar(255) not null
	,AutoUpgradeKey varchar(255) null
	,OtherContactNumbers varchar(255) null
	,ErrorCode varchar(255) not null
	,MsgExpireTime varchar(255) null
	,PtPin varchar(255) not null
	,PtPinType varchar(255) null
	,isMsgSecured varchar(255) not null
	,msgSource varchar(255) null
	,providerGreetingsUid varchar(255) null
	,ClientResponse varchar(255) not null
	,messageJobType varchar(255) not null
	,FaxLogId varchar(255) not null
	,eRxReqID varchar(255) not null
	,eRxReFillReqID varchar(255) not null
	,providerid varchar(255) not null
	,campaignid varchar(255) not null
	,campaign varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_voicemsglogs] primary key ([ID])

	)

------------------------------
create table alertdata

	(
	Id varchar(255) not null
	,PatientId varchar(255) not null
	,MeasureId varchar(255) not null
	,MeasureName varchar(255) not null
	,ItemId varchar(255) not null
	,Frequency varchar(255) not null
	,LastDone varchar(255) not null
	,DueDate varchar(255) not null
	,Value varchar(255) not null
	,controlstatus varchar(255) not null
	,RegistryAlert varchar(255) not null
	,labReceived varchar(255) not null
	,mdate varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_alertdata] primary key ([Id])

	)

------------------------------

create table alertoverride

	(
	Id varchar(255) not null
	,PatientId varchar(255) not null
	,MeasureId varchar(255) not null
	,DueDate varchar(255) null
	,NeverRemind varchar(255) not null
	,Reason varchar(255) null
	,status varchar(255) not null
	,statusLabel varchar(255) not null
	,reset varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_alertoverride] primary key ([Id])

	)

------------------------------

create table allergies

	(
	patientID varchar(255) not null
	,drug varchar(255) null
	,allergy varchar(255) not null
	,encounterId varchar(255) null
	,itemID varchar(255) null
	,displayIndex varchar(255) null
	,SMDamConceptID varchar(255) null
	,SMDamConceptIDDesc varchar(255) null
	,ndc_code varchar(255) null
	,allergytype varchar(255) not null
	,type varchar(255) not null
	,status varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_allergies] primary key ([Id])

	)

------------------------------

create table billingdata

	(
	Id varchar(255) not null
	,EncounterId varchar(255) not null
	,itemID varchar(255) not null
	,date varchar(255) null
	,endDate varchar(255) null
	,endData varchar(255) null
	,providerId varchar(255) not null
	,Notes varchar(255) null
	,displayIndex varchar(255) null
	,deleteFlag varchar(255) not null
	,Mod1 varchar(255) not null
	,Mod2 varchar(255) not null
	,Mod3 varchar(255) not null
	,units varchar(255) not null
	,codeFlag varchar(255) not null
	,Icd1 varchar(255) not null
	,Icd2 varchar(255) not null
	,Icd3 varchar(255) not null
	,Icd4 varchar(255) not null
	,icdcode1 varchar(255) not null
	,icdcode2 varchar(255) not null
	,icdcode3 varchar(255) not null
	,icdcode4 varchar(255) not null
	,vitalCpt varchar(255) not null
	,Mod4 varchar(255) not null
	,ToothNumber varchar(255) not null
	,Surface varchar(255) not null
	,documentedTime varchar(255) null
	,ndccode varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_billingdata] primary key ([Id])

	)

------------------------------

create table contacts

	(
	contactId varchar(255) not null
	,pid varchar(255) not null
	,name varchar(255) not null
	,relation varchar(255) not null
	,address varchar(255) not null
	,address2 varchar(255) not null
	,city varchar(255) not null
	,state varchar(255) not null
	,zipcode varchar(255) not null
	,homePhone varchar(255) not null
	,workPhone varchar(255) not null
	,vmid varchar(255) not null
	,delflag varchar(255) not null
	,Lname varchar(255) not null
	,Fname varchar(255) not null
	,MI varchar(255) null
	,Guardian varchar(255) null
	,RelatedPtId varchar(255) not null
	,HExt varchar(255) not null
	,WExt varchar(255) not null
	,Type1 varchar(255) not null
	,Type2 varchar(255) not null
	,Fax varchar(255) not null
	,Email varchar(255) not null
	,Notes varchar(255) not null
	,Hippa varchar(255) null
	,displayorder varchar(255) null
	,maidenname varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_contacts] primary key ([contactId])

	)

------------------------------

create table diagnosis

	(
	EncounterId varchar(255) not null
	,ItemId varchar(255) null
	,PrimaryAsmt varchar(255) null
	,Specify varchar(255) null
	,Notes varchar(255) null
	,displayIndex varchar(255) null
	,axis varchar(255) not null
	,AsmtOnsetDate varchar(255) null
	,SlNo varchar(255) not null
	,websync varchar(255) null
	,Risk varchar(255) not null
	,SNOMED varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_diagnosis] primary key ([SlNo])

	)

------------------------------

create table edi_employmentstatus

	(
	Code varchar(255) not null
	,Name varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_edi_employmentstatus] primary key ([doctorID])

	)

------------------------------

create table edi_speciality

	(
	Id varchar(255) not null
	,Speciality varchar(255) not null
	,Code varchar(255) not null
	,deleteFlag varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_edi_speciality] primary key ([Id])

	)

------------------------------

create table encounter

	(
	encounterID varchar(255) not null
	,doctorID varchar(255) not null
	,patientID varchar(255) not null
	,date varchar(255) null
	,time varchar(255) null
	,reason varchar(255) null
	,visitType varchar(255) null
	,roomno varchar(255) null
	,status varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_encounter] primary key ([encounterID])

	)

------------------------------

create table ethnicity

	(
	Code varchar(255) null
	,Name varchar(255) null
	,EthId varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_ethnicity] primary key ([EthId])

	)

------------------------------

create table familydata

	(
	encounterID varchar(255) not null
	,itemID varchar(255) not null
	,name varchar(255) null
	,status varchar(255) null
	,age varchar(255) null
	,dob varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_familydata] primary key ([EthId])

	)

------------------------------

create table immunizationstatus

	(
	Id varchar(255) not null
	,ImmStatusId varchar(255) not null
	,CODE varchar(255) null
	,Description varchar(255) not null
	,TYPE varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_immunizationstatus] primary key ([Id])

	)

------------------------------

create table itemdetail

	(
	itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_itemdetail] primary key ([Id])

	)

------------------------------

create table labcptmap

	(
	labCode varchar(255) null
	,cptCode varchar(255) null
	,Id varchar(255) not null
	,CptItemId varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labcptmap] primary key ([Id])

	)

------------------------------

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

create table edi_facilities

	(
	Id varchar(255) not null
	,FacilityType varchar(255) not null
	,Name varchar(255) not null
	,AddressLine1 varchar(255) not null
	,AddressLine2 varchar(255) not null
	,City varchar(255) not null
	,State varchar(255) not null
	,Zip varchar(255) not null
	,Tel varchar(255) not null
	,Fax varchar(255) not null
	,EMail varchar(255) not null
	,BillingAddressLine1 varchar(255) not null
	,BillingAddressLine2 varchar(255) not null
	,BillingCity varchar(255) not null
	,BillingState varchar(255) not null
	,BillingZip varchar(255) not null
	,BillingTel varchar(255) not null
	,BillingFax varchar(255) not null
	,BillingEMail varchar(255) not null
	,PracticeType varchar(255) not null
	,PracticeOption varchar(255) not null
	,PayableTo varchar(255) not null
	,BankAccount varchar(255) not null
	,FederalTaxID varchar(255) not null
	,Notes varchar(255) not null
	,PrimaryFacility varchar(255) not null
	,CliaId varchar(255) not null
	,code varchar(255) not null
	,POS varchar(255) not null
	,MammoCertId varchar(255) not null
	,HPSAFlag varchar(255) not null
	,HPSAModifier varchar(255) not null
	,DeleteFlag varchar(255) not null
	,vmid varchar(255) not null
	,hl7id varchar(255) not null
	,Color varchar(255) null
	,FeeSchedule varchar(255) not null
	,FacilityIdType varchar(255) not null
	,PtStmtFacOption varchar(255) not null
	,PtStmtFacId varchar(255) not null
	,RestrictPrintAppts varchar(255) null
	,NPI varchar(255) not null
	,ImmStateId varchar(255) not null
	,TaxonomyCode varchar(255) not null
	,RestrictPrintStmts varchar(255) not null
	,startedOn varchar(255) null
	,RevenueCode varchar(255) null
	,Percent varchar(255) not null
	,OverrideSalesTax varchar(255) not null
	,MerchantID varchar(255) not null
	,ImmLocationId varchar(255) not null
	,TimeZoneCode varchar(255) null
	,MessCallerId varchar(255) null
	,MessOperNum varchar(255) null
	,CreditCardOption varchar(255) not null
	,CountryCode varchar(255) not null
	,BillingCountryCode varchar(255) not null
	,Immfacid varchar(255) null
	,BillType varchar(255) not null
	,takeNewPortalAppts varchar(255) null
	,portal_name varchar(255) null
	,takenewportalmsg varchar(255) null
	,showinpi varchar(255) null
	,modifiedDate varchar(255) not null
	,nsexclude varchar(255) not null
	,facilitysmsname varchar(255) not null
	,birthdayexclude varchar(255) not null
	,ASC_TN_FacilityType varchar(255) null
	,ASC_TN_FacilityId varchar(255) null
	,facilitynickname varchar(255) null
	,exclude varchar(255) not null
	,labexclude varchar(255) not null
	,ASC_WI_FacilityType varchar(255) null
	,rxexclude varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_edi_facilities] primary key ([Id])

	)

------------------------------

create table familyhxdetails

	(
	encounterId varchar(255) not null
	,itemId varchar(255) not null
	,icdItemid varchar(255) not null
	,icdCode varchar(255) not null
	,icdDesc varchar(255) not null
	,snomedCode varchar(255) not null
	,diagnosedYear varchar(255) not null
	,diagnosedAge varchar(255) not null
	,name varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_familyhxdetails] primary key ([EthId])

	)

------------------------------

create table hl7labdatadetail

	(
	ReportId varchar(255) not null
	,NAME varchar(255) not null
	,value varchar(255) not null
	,units varchar(255) not null
	,range varchar(255) not null
	,flag varchar(255) not null
	,notes varchar(255) not null
	,resultStatus varchar(255) not null
	,labId varchar(255) not null
	,hl7id varchar(255) null
	,profileid varchar(255) not null
	,serialno varchar(255) not null
	,obrcode varchar(255) not null
	,corrreportno varchar(255) not null
	,performingSiteId varchar(255) not null
	,prevvalue varchar(255) null
	,AttrResultDate varchar(255) null
	,AttrResultTime varchar(255) null
	,obsubid varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_hl7labdatadetail] primary key ([LogID])

	)

------------------------------

create table enc

	(
	encounterID varchar(255) not null
	,patientID varchar(255) not null
	,doctorID varchar(255) not null
	,date varchar(255) null
	,time varchar(255) null
	,startTime varchar(255) null
	,endTime varchar(255) null
	,reason varchar(255) null
	,VisitType varchar(255) null
	,roomNo varchar(255) null
	,STATUS varchar(255) not null
	,deleteFlag varchar(255) null
	,encType varchar(255) null
	,encLock varchar(255) null
	,Notes varchar(255) null
	,generalNotes varchar(255) not null
	,vmid varchar(255) not null
	,facilityId varchar(255) null
	,POS varchar(255) not null
	,arrivedTime varchar(255) not null
	,timeIn varchar(255) not null
	,timeOut varchar(255) not null
	,stsAfterArr varchar(255) not null
	,depTime varchar(255) not null
	,stsAfterChkIn varchar(255) not null
	,HL7Id varchar(255) not null
	,newPt varchar(255) not null
	,Dx varchar(255) not null
	,reminded varchar(255) null
	,remindedDate varchar(255) null
	,VisitCopay varchar(255) not null
	,CopayChanged varchar(255) not null
	,ClaimRequired varchar(255) not null
	,ClaimReq varchar(255) not null
	,VisitTypeOverriden varchar(255) null
	,refPrName varchar(255) null
	,refPrId varchar(255) null
	,PSACGroup varchar(255) null
	,deptid varchar(255) null
	,ResourceId varchar(255) not null
	,EncEligibilityStatus varchar(255) not null
	,EligibilityMessage varchar(255) not null
	,InvoiceId varchar(255) not null
	,EligSubId varchar(255) not null
	,EncEligibilityStatus2 varchar(255) not null
	,EligibilityMessage2 varchar(255) not null
	,EncEligibilityStatus3 varchar(255) not null
	,EligibilityMessage3 varchar(255) not null
	,trans_dictation varchar(255) null
	,waitTime varchar(255) null
	,websync varchar(255) null
	,dateIn varchar(255) null
	,dateOut varchar(255) null
	,notesDoneTime varchar(255) null
	,notesLoginId varchar(255) null
	,notesLogOutId varchar(255) null
	,visittypeid varchar(255) null
	,UTCStartTime varchar(255) null
	,UTCEndTime varchar(255) null
	,visitstscodeid varchar(255) not null
	,practiceId varchar(255) not null
	,immnotessendstatus varchar(255) null
	,transitionofcare varchar(255) null
	,prNotesSendStatus varchar(255) not null
	,readytobill varchar(255) not null
	,reviewbeforebill varchar(255) not null
	,EncEligibilityStatus4 varchar(255) not null
	,EligibilityMessage4 varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_enc] primary key ([encounterID])

	)

------------------------------

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

create table items

	(
	itemID varchar(255) not null
	,itemName varchar(255) not null
	,itemDesc varchar(255) not null
	,parentID varchar(255) not null
	,xmlPath varchar(255) not null
	,xslPath varchar(255) not null
	,itemType varchar(255) null
	,supplierId varchar(255) not null
	,price varchar(255) not null
	,discount varchar(255) not null
	,specialPrice varchar(255) not null
	,startDate varchar(255) not null
	,endDate varchar(255) not null
	,createdDate varchar(255) not null
	,modifiedDate varchar(255) not null
	,viewType varchar(255) not null
	,displayIndex varchar(255) null
	,deleteFlag varchar(255) not null
	,vmid varchar(255) not null
	,keyName varchar(255) not null
	,gender varchar(255) not null
	,overdue varchar(255) not null
	,inactive varchar(255) null
	,DrugNameId varchar(255) not null
	,showPathologyDetail varchar(255) not null
	,vmsgexclude varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_items] primary key ([itemID])

	)

------------------------------

create table maintenance

	(
	Id varchar(255) not null
	,UserId varchar(255) not null
	,Msg varchar(255) null
	,Comments varchar(255) null
	,Discussion varchar(255) null
	,StatusFlag varchar(255) not null
	,Status varchar(255) null
	,CreateDate varchar(255) null
	,ModifyDate varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_maintenance] primary key ([Id])

	)

------------------------------

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

create table faxlogs

	(
	LogID varchar(255) not null
	,LoginID varchar(255) not null
	,DoctorID varchar(255) not null
	,PatientID varchar(255) not null
	,ToID varchar(255) null
	,ToName varchar(255) not null
	,ToFax varchar(255) not null
	,ToCompany varchar(255) not null
	,EncounterID varchar(255) null
	,FaxInitTime varchar(255) not null
	,Retry varchar(255) null
	,Status varchar(255) not null
	,faxdata varchar(255) not null
	,FaxStatus varchar(255) not null
	,SendDate varchar(255) null
	,FaxType varchar(255) null
	,FaxManLogID varchar(255) not null
	,FaxPrefix varchar(255) not null
	,FaxFile varchar(255) null
	,FaxTransaction varchar(255) null
	,RxIds varchar(255) null
	,FaxLogStatus varchar(255) not null
	,FaxLogBatch varchar(255) null
	,FacilityID varchar(255) not null
	,FacilityName varchar(255) not null
	,reminded varchar(255) null
	,remindedDate varchar(255) null
	,FaxCoverPage varchar(255) not null
	,FaxCoverPageID varchar(255) not null
	,FaxStatusMsg varchar(255) not null
	,FaxSubject varchar(255) not null
	,LoginName varchar(255) not null
	,scheduledDate varchar(255) null
	,sentnotification varchar(255) not null
	,OriginalFaxDoc varchar(255) null
	,FromName varchar(255) null
	,FromVoice varchar(255) null
	,fromcompany varchar(255) not null
	,FaxInitTime2 varchar(255) not null
	,isMsgSent varchar(255) not null
	,isTextMsgSent varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_faxlogs] primary key ([LogID])

	)

------------------------------

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

create table preventive

	(
	encounterID varchar(255) not null
	,catID varchar(255) not null
	,itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_preventive] primary key ([pid])

	)

------------------------------

create table printlogs

	(
	LogID varchar(255) not null
	,LoginID varchar(255) not null
	,DoctorID varchar(255) not null
	,PatientID varchar(255) not null
	,EncounterID varchar(255) null
	,PrintData varchar(255) not null
	,PrintDate varchar(255) not null
	,PrintType varchar(255) null
	,PrintTransaction varchar(255) null
	,RxList varchar(255) null
	,PrintLogStatus varchar(255) not null
	,PrintLogBatch varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_printlogs] primary key ([LogID])

	)

------------------------------

create table insurance

	(
	insId varchar(255) not null
	,insuranceName varchar(255) null
	,insurancephone varchar(255) null
	,insurancefax varchar(255) null
	,insuranceemail varchar(255) null
	,insuranceaddress varchar(255) null
	,insuranceaddress2 varchar(255) not null
	,insurancecity varchar(255) null
	,insurancestate varchar(255) null
	,insurancezip varchar(255) null
	,PayorId varchar(255) not null
	,ClaimOfficeNumber varchar(255) not null
	,ClaimOfficeNumberType varchar(255) not null
	,MedigapID varchar(255) not null
	,carrierCode varchar(255) not null
	,ProviderIdRef varchar(255) not null
	,TestProdIndicator varchar(255) not null
	,ANSI varchar(255) null
	,SendSVT varchar(255) null
	,SendDecimalUnit varchar(255) null
	,PaymentSrc varchar(255) not null
	,capitationplan varchar(255) not null
	,capitationpayment varchar(255) not null
	,deleteFlag varchar(255) not null
	,vmid varchar(255) not null
	,labcorpid varchar(255) null
	,website varchar(255) not null
	,Send2310EAlways varchar(255) not null
	,ClaimSubmitType varchar(255) not null
	,ERAPayorId varchar(255) not null
	,Inactive varchar(255) not null
	,AllCodesCapitated varchar(255) not null
	,SelCodesCapitated varchar(255) not null
	,ReqOrdPrInfo varchar(255) not null
	,sendDupSubNoForPat varchar(255) null
	,prodDateAsCheckDate varchar(255) null
	,ReqUPINInEA021 varchar(255) not null
	,hl7id1 varchar(255) null
	,hl7id2 varchar(255) null
	,insuranceclass varchar(255) null
	,InsTypeMedicare varchar(255) not null
	,InsTypeOthers varchar(255) not null
	,FeeSchedId varchar(255) null
	,SecClaimsElectronic varchar(255) not null
	,PrAssignInd varchar(255) not null
	,Notes varchar(255) null
	,Box31Format varchar(255) not null
	,Box17ProviderType varchar(255) not null
	,Box17ProviderIdType varchar(255) not null
	,Box17ProviderRuleEnabled varchar(255) not null
	,SendInsPinForSupr varchar(255) not null
	,insurancephone2 varchar(255) null
	,InsuranceType varchar(255) null
	,ClaimType varchar(255) not null
	,Box31Line2Format varchar(255) not null
	,sendSubDemAlways varchar(255) not null
	,SplitClaimOnICD varchar(255) not null
	,EnableReferralNumber varchar(255) not null
	,DoNotPrintHcfa29 varchar(255) not null
	,DoNotPrintHcfa30 varchar(255) not null
	,Box17ProviderIdTypeMap varchar(255) not null
	,McaidNYPlanCode varchar(255) not null
	,PrintHcfa22 varchar(255) not null
	,EnableSympDate varchar(255) not null
	,EnableSimilarSympDate varchar(255) not null
	,SupressFacAddrForPOS11Enic varchar(255) not null
	,UseNpi varchar(255) not null
	,UseLegacy varchar(255) null
	,x270payorId varchar(255) not null
	,UseGroupNoForEligibility varchar(255) not null
	,CalculateAllowed varchar(255) not null
	,SupressFacAddrForPOS11Paper varchar(255) not null
	,x270LegacyNPI varchar(255) not null
	,FirstLinePost varchar(255) not null
	,SubscriberMask varchar(255) not null
	,subscriberLength varchar(255) not null
	,CO42MapCode varchar(255) not null
	,PrintEPSDTReferralCodeInHcfa24C varchar(255) not null
	,SendStrictDOS varchar(255) not null
	,UseFacilityPrvForRendProv varchar(255) not null
	,sendP2ProvPrvAlways varchar(255) not null
	,RequiredReferral varchar(255) not null
	,FPStringMandatory varchar(255) not null
	,SubNoMaxLen varchar(255) not null
	,SubNoMinLen varchar(255) not null
	,SendOTAFSeg varchar(255) not null
	,HCFA_Box19 varchar(255) not null
	,SendGrpNoin2310B varchar(255) not null
	,Send2420CAlways varchar(255) not null
	,Send2420CIf2310DOmited varchar(255) not null
	,UseLegacyForPrint varchar(255) not null
	,InsuranceAlert varchar(255) null
	,UseNPIForPrint varchar(255) not null
	,FeeSchedulesByLocation varchar(255) not null
	,InsurancePrimaryType varchar(255) null
	,ExcludeInPtStmts varchar(255) null
	,UseExtendedPrvOption varchar(255) not null
	,Send2000APrv varchar(255) not null
	,Send2310BPrv varchar(255) not null
	,Send2420APrv varchar(255) not null
	,SuppressRefProvUPIN varchar(255) not null
	,SuppressTaxIdInLoop2310A varchar(255) not null
	,SuppressTaxIdInLoop2310B varchar(255) not null
	,SuppressTaxIdInLoop2420A varchar(255) not null
	,SuppressTaxIdInLoop2310DAnd2420C varchar(255) not null
	,SubmitPtPmts varchar(255) not null
	,SuppressPrvInLoop2310A varchar(255) not null
	,SuppressRendProvUPIN varchar(255) not null
	,SuppressSuperProvUPIN varchar(255) not null
	,SuppressOrderProvUPIN varchar(255) not null
	,SuppressPurchasedProvUPIN varchar(255) not null
	,SuppressServiceFacilityUPIN varchar(255) not null
	,SuppressTaxIdInLoop2310C varchar(255) not null
	,SuppressTaxIdInLoop2310E varchar(255) not null
	,SuppressTaxIdInLoop2420E varchar(255) not null
	,X270SendTrnAlways varchar(255) not null
	,X270CustomMapLegacy varchar(255) not null
	,SendOtafInPrimary varchar(255) not null
	,x270SendEbDateRange varchar(255) not null
	,x270SendPrv varchar(255) not null
	,x270SendEbAddlInfo varchar(255) not null
	,BestMatchCpt varchar(255) not null
	,DoNotAddSalesTax varchar(255) not null
	,enrollmentReq varchar(255) not null
	,CountryCode varchar(255) not null
	,NDCFormat varchar(255) null
	,X270SendDoi varchar(255) not null
	,X270SendDosAsDoi varchar(255) not null
	,SendHyphenInTaxId varchar(255) not null
	,IsAnesthesiaMinutesInHCFA varchar(255) not null
	,PrimaryTimelyFiling varchar(255) not null
	,SecondaryTimelyFiling varchar(255) not null
	,IsServiceLocationAddressinLoop2010AA varchar(255) not null
	,NoPrimaryOtafIn2400 varchar(255) not null
	,StripLeadingZeroFromMoney varchar(255) not null
	,SendMedicalRecordNumber varchar(255) not null
	,x270SendGroupNo varchar(255) not null
	,x270SendRelationShip varchar(255) not null
	,x270SendSSN varchar(255) not null
	,x270SendInsuredN4 varchar(255) not null
	,StripTrailingZerosFromMoney varchar(255) not null
	,insuranceNameANSI varchar(255) not null
	,HPSAQualify varchar(255) not null
	,PrintEPSDTDataInHcfa10d varchar(255) not null
	,ConsiderToothNumberAsModifier varchar(255) not null
	,DoNotAddFinanceChrg varchar(255) not null
	,CapitationType varchar(255) null
	,LiabilityCarrierCode varchar(255) not null
	,ecwMasterId varchar(255) not null
	,EnterpriseId varchar(255) not null
	,DoNotChangeClmAssgnmntAfterCapAdj varchar(255) not null
	,modifiedDate varchar(255) not null
	,AdditionalMask varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_insurance] primary key ([insId])

	)

------------------------------

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

create table labdatadetail

	(
	ReportId varchar(255) not null
	,PropId varchar(255) not null
	,Value varchar(255) null
	,importFlag varchar(255) not null
	,Id varchar(255) not null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,TestID varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labdatadetail] primary key ([Id])

	)

------------------------------

create table labdataex

	(
	reportId varchar(255) not null
	,HL7ResultDate varchar(255) null
	,HL7ResultTime varchar(255) null
	,urllink varchar(255) null
	,interfacestatus varchar(255) null
	,processedresult varchar(255) null
	,VisitType varchar(255) not null
	,DateReceived varchar(255) not null
	,resultrcvddatetime varchar(255) not null
	,MigrateFlag varchar(255) not null
	,SentOutReqNo varchar(255) not null
	,facilityId varchar(255) not null
	,specimenReceiveTime varchar(255) not null
	,specimenReceiveDate varchar(255) not null
	,isPACSLinkEnabled varchar(255) not null
	,observationDate varchar(255) not null
	,observationTime varchar(255) not null
	,SpecimenActionCode varchar(255) not null
	,PlacerGroupNumberID varchar(255) not null
	,PatientAltRace varchar(255) not null
	,bodysitecode varchar(255) not null
	,ABNPrompted varchar(255) not null
	,ABNOption varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labdataex] primary key ([reportId])

	)

------------------------------

create table lablist

	(
	ID varchar(255) not null
	,name varchar(255) not null
	,deleteFlag varchar(255) not null
	,LabId varchar(255) not null
	,labaddress varchar(255) not null
	,labaddress2 varchar(255) not null
	,labcity varchar(255) not null
	,labstate varchar(255) not null
	,labzip varchar(255) not null
	,labphone varchar(255) not null
	,labfax varchar(255) not null
	,labemail varchar(255) null
	,interfaceConfigured varchar(255) not null
	,sendoutboundresult varchar(255) null
	,labcompanyType varchar(255) not null
	,inHouseLab varchar(255) not null
	,ResultLabId varchar(255) not null
	,labCode varchar(255) not null
	,superhubInterfaceID varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_lablist] primary key ([ID])

	)

------------------------------

create table labloinccodes

	(
	itemid varchar(255) not null
	,code varchar(255) not null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,deleteflag varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_labloinccodes] primary key ([itemid])

	)

------------------------------

create table language_codes

	(
	Name varchar(255) not null
	,Favorite varchar(255) null
	,Code varchar(255) null
	,LangID varchar(255) not null
	,isocode1 varchar(255) null
	,isocode2 varchar(255) null
	,isoname varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_language_codes] primary key ([LangID])

	)

------------------------------

create table letterlogs

	(
	Id varchar(255) not null
	,patientId varchar(255) not null
	,letterId varchar(255) not null
	,letterName varchar(255) not null
	,printedBy varchar(255) not null
	,date varchar(255) not null
	,time varchar(255) not null
	,categoryID varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_letterlogs] primary key ([Id])

	)

------------------------------

create table logptspecificdata

	(
	id varchar(255) not null
	,patientid varchar(255) not null
	,truserid varchar(255) not null
	,modified_date varchar(255) not null
	,modified_time varchar(255) not null
	,timestamp varchar(255) not null
	,status varchar(255) not null
	,truser_name varchar(255) not null
	,action varchar(255) not null
	,dataelementid varchar(255) not null
	,logptspecificid varchar(255) not null
	,itemid varchar(255) not null
	,encounterid varchar(255) not null
	,data varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_logptspecificdata] primary key ([id])

	)

------------------------------

create table oldrxdetail

	(
	OldRxId varchar(255) null
	,Prop varchar(255) not null
	,value varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_oldrxdetail] primary key ([Id])

	)

------------------------------

create table problemlist_ext

	(
	Id varchar(255) not null
	,PatientId varchar(255) not null
	,NKPFlag varchar(255) not null
	,NKPDate varchar(255) null
	,deleteFlag varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_problemlist_ext] primary key ([Id])

	)

------------------------------

create table loincmaster

	(
	LOINC_NUM varchar(255) not null
	,COMPONENT varchar(255) null
	,PROPERTY varchar(255) null
	,TIME_ASPCT varchar(255) null
	,SYSTEM varchar(255) null
	,SCALE_TYP varchar(255) null
	,METHOD_TYP varchar(255) null
	,RELAT_NMS varchar(255) null
	,CLASS varchar(255) null
	,SOURCE varchar(255) null
	,DT_LAST_CH varchar(255) null
	,CHNG_TYPE varchar(255) null
	,COMMENTS varchar(255) null
	,ANSWERLIST varchar(255) null
	,STATUS varchar(255) null
	,MAP_TO varchar(255) null
	,SCOPE varchar(255) null
	,CONSUMER_NAME varchar(255) null
	,IPCC_UNITS varchar(255) null
	,REFERENCE varchar(255) null
	,EXACT_CMP_SY varchar(255) null
	,MOLAR_MASS varchar(255) null
	,CLASSTYPE varchar(255) null
	,FORMULA varchar(255) null
	,SPECIES varchar(255) null
	,EXMPL_ANSWERS varchar(255) null
	,ACSSYM varchar(255) null
	,BASE_NAME varchar(255) null
	,FINAL varchar(255) null
	,NAACCR_ID varchar(255) null
	,CODE_TABLE varchar(255) null
	,SETROOT varchar(255) null
	,PanelElements varchar(255) null
	,SURVEY_QUEST_TEXT varchar(255) null
	,SURVEY_QUEST_SRC varchar(255) null
	,UnitsRequired varchar(255) null
	,SUBMITTED_UNITS varchar(255) null
	,RelatedNames2 varchar(255) null
	,SHORTNAME varchar(255) null
	,ORDER_OBS varchar(255) null
	,CDISC_COMMON_TESTS varchar(255) null
	,HL7_FIELD_SUBFIELD_ID varchar(255) null
	,EXTERNAL_COPYRIGHT_NOTICE varchar(255) null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,deleteflag varchar(255) not null
	,EXAMPLE_UNITS varchar(255) null
	,INPC_PERCENTAGE varchar(255) null
	,LONG_COMMON_NAME varchar(255) null
	,HL7_V2_DATATYPE varchar(255) null
	,HL7_V3_DATATYPE varchar(255) null
	,CURATED_RANGE_AND_UNITS varchar(255) null
	,DOCUMENT_SECTION varchar(255) null
	,DEFINITION_DESCRIPTION_HELP varchar(255) null
	,EXAMPLE_UCUM_UNITS varchar(255) null
	,EXAMPLE_SI_UCUM_UNITS varchar(255) null
	,STATUS_REASON varchar(255) null
	,STATUS_TEXT varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_loincmaster] primary key ([LOINC_NUM])

	)

------------------------------

create table patients

	(
	pid varchar(255) not null
	,ControlNo varchar(255) not null
	,employername varchar(255) not null
	,employeraddress varchar(255) null
	,employeraddress2 varchar(255) not null
	,employercity varchar(255) null
	,employerstate varchar(255) null
	,employerzip varchar(255) null
	,employerPhone varchar(255) null
	,msgflag varchar(255) null
	,insname varchar(255) null
	,insgroupno varchar(255) null
	,inssubscriberno varchar(255) null
	,inscopay varchar(255) null
	,pastHistory varchar(255) null
	,pharmacyname varchar(255) null
	,pharmacyno varchar(255) null
	,surgicalHistory varchar(255) null
	,hospitalization varchar(255) null
	,medications varchar(255) null
	,insname2 varchar(255) null
	,insgroupno2 varchar(255) null
	,inssubscriberno2 varchar(255) null
	,inscopay2 varchar(255) null
	,straddress varchar(255) null
	,city varchar(255) null
	,state varchar(255) null
	,zip varchar(255) null
	,doctorId varchar(255) not null
	,AttendingDoctorId varchar(255) not null
	,pharmacyFax varchar(255) null
	,pmcId varchar(255) null
	,insId varchar(255) null
	,insId2 varchar(255) null
	,maritalstatus varchar(255) not null
	,strAddress2 varchar(255) null
	,notes varchar(255) not null
	,deceased varchar(255) not null
	,deceasedDate varchar(255) not null
	,deceasedNotes varchar(255) not null
	,language varchar(255) not null
	,GrId varchar(255) not null
	,GrRel varchar(255) not null
	,IsGrPt varchar(255) not null
	,GrType varchar(255) not null
	,PrimIns varchar(255) not null
	,ResType varchar(255) not null
	,StudentStatus varchar(255) not null
	,EmpStatus varchar(255) not null
	,picFileName varchar(255) not null
	,RelInfo varchar(255) not null
	,RelInfoDate varchar(255) null
	,PayorType varchar(255) not null
	,SelfPay varchar(255) not null
	,hl7Id varchar(255) not null
	,BillingAlert varchar(255) not null
	,BillingAlertNotes varchar(255) not null
	,givenToColl varchar(255) not null
	,givenDate varchar(255) null
	,DefFeeSchId varchar(255) not null
	,race varchar(255) not null
	,PtStatus varchar(255) null
	,ptStmtDate varchar(255) null
	,refPrId varchar(255) null
	,rendPrId varchar(255) null
	,nostatements varchar(255) not null
	,CurrentCollectionStatus varchar(255) not null
	,CollectionTimestamp varchar(255) not null
	,interpretSvc varchar(255) null
	,GlobalAlert varchar(255) not null
	,characterestic varchar(255) not null
	,CollectionStageDate varchar(255) not null
	,regdate varchar(255) null
	,ethnicity varchar(255) null
	,vfc varchar(255) null
	,empId varchar(255) not null
	,irisenroll varchar(255) not null
	,CollectionAgencyStatus varchar(255) null
	,RxConsent varchar(255) null
	,acctbal varchar(255) null
	,CollStartStopDt varchar(255) null
	,MailOrderPharmacyId varchar(255) null
	,MOMemberId varchar(255) null
	,teamMember varchar(255) not null
	,bTranslator varchar(255) null
	,Address2Country varchar(255) not null
	,VoiceEnabled varchar(255) null
	,assignedtoId varchar(255) not null
	,assignedto varchar(255) not null
	,UseStreetAddressForRxFlag varchar(255) null
	,textenabled varchar(255) null
	,GrStmtDate varchar(255) null
	,msgCellflag varchar(255) null
	,enableEmail varchar(255) null
	,enableLetters varchar(255) null
	,webEnabledDate varchar(255) null
	,preset varchar(255) null
	,encpwd varchar(255) null
	,lognotes varchar(255) null
	,optout varchar(255) null
	,optreasonId varchar(255) null
	,IsMigratedRecord varchar(255) null
	,DefaultLab varchar(255) not null
	,DefaultDI varchar(255) not null
	,emailreasonId varchar(255) null
	,isKioskConsentReceived varchar(255) null
	,isPtOptsOut varchar(255) not null
	,secureMsgKey varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_patients] primary key ([pid])

	)

------------------------------

create table problemlist

	(
	patientId varchar(255) not null
	,encounterId varchar(255) not null
	,asmtId varchar(255) not null
	,specify varchar(255) not null
	,notes varchar(255) not null
	,deleteFlag varchar(255) not null
	,onsetdate varchar(255) null
	,userid varchar(255) not null
	,logdate varchar(255) not null
	,inactiveFlag varchar(255) not null
	,WUStatus varchar(255) not null
	,condition varchar(255) not null
	,SlNo varchar(255) not null
	,displayIndex varchar(255) not null
	,Risk varchar(255) not null
	,AddedDate varchar(255) not null
	,ProblemType varchar(255) not null
	,Resolved varchar(255) not null
	,resolvedon varchar(255) not null
	,SNOMED varchar(255) not null
	,SNOMEDDesc varchar(255) null
	,SNOMEDDescID varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_problemlist] primary key ([SlNo])

	)

------------------------------

create table procedurespl

	(
	encounterId varchar(255) not null
	,catID varchar(255) not null
	,itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,displayIndex varchar(255) not null
	,VALUE2 varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_procedurespl] primary key ([Id])

	)

------------------------------

create table progressnotes

	(
	encounterID varchar(255) not null
	,summary varchar(255) not null
	,xslId varchar(255) not null
	,unlocked varchar(255) not null
	,ModifyDate varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_progressnotes] primary key ([Id])

	)

------------------------------

create table properties

	(
	propID varchar(255) not null
	,name varchar(255) not null
	,description varchar(255) null
	,type varchar(255) null
	,viewtype varchar(255) null
	,size varchar(255) null
	,displayName varchar(255) null
	,pdetailID varchar(255) null
	,displayIndex varchar(255) null
	,delPropFlag varchar(255) not null
	,vmid varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_properties] primary key ([propID])

	)

------------------------------

create table pt_adv_directives

	(
	Id varchar(255) not null
	,PtId varchar(255) not null
	,Code varchar(255) not null
	,Name varchar(255) not null
	,MDate varchar(255) not null
	,delflag varchar(255) null
	,displayindex varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_pt_adv_directives] primary key ([Id])

	)

------------------------------

create table pt_emailreason

	(
	id varchar(255) not null
	,description varchar(255) null
	,delflag varchar(255) null
	,displayindex varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_pt_emailreason] primary key ([id])

	)

------------------------------

create table ref_attachments

	(
	id varchar(255) not null
	,RefId varchar(255) null
	,doctype varchar(255) not null
	,docId varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_ref_attachments] primary key ([id])

	)

------------------------------

create table referral

	(
	ReferralId varchar(255) not null
	,patientID varchar(255) not null
	,insId varchar(255) not null
	,refFrom varchar(255) not null
	,authNo varchar(255) not null
	,date varchar(255) not null
	,reason varchar(255) not null
	,diagnosis varchar(255) not null
	,refStDate varchar(255) not null
	,refEnddate varchar(255) not null
	,visitsAllowed varchar(255) not null
	,visitsUsed varchar(255) not null
	,RefTo varchar(255) not null
	,notes varchar(255) not null
	,deleteFlag varchar(255) not null
	,referralType varchar(255) not null
	,priority varchar(255) not null
	,assignedTo varchar(255) not null
	,assignedToId varchar(255) not null
	,status varchar(255) not null
	,authtype varchar(255) not null
	,procedures varchar(255) not null
	,fromfacility varchar(255) not null
	,ToFacility varchar(255) not null
	,speciality varchar(255) not null
	,POS varchar(255) not null
	,UnitType varchar(255) not null
	,FrontOfficeAuth varchar(255) null
	,ReferralNumber varchar(255) not null
	,apptDate varchar(255) not null
	,clinicalNotes varchar(255) null
	,ReceivedDate varchar(255) not null
	,refEncId varchar(255) not null
	,ApptTime varchar(255) not null
	,extNHXApptBlockId varchar(255) not null
	,extNHXRefTxId varchar(255) not null
	,refReqId varchar(255) not null
	,refFromP2pNPI varchar(255) not null
	,refFromName varchar(255) not null
	,refToP2pNPI varchar(255) not null
	,refToName varchar(255) not null
	,uploadedToPtDocs varchar(255) not null
	,modifiedDate varchar(255) not null
	,refToCCNameList varchar(255) null
	,refToCCNPIList varchar(255) null
	,p2pDeliveryStatus varchar(255) null
	,statusUpdateDate varchar(255) not null
	,ccdaValidationStatus varchar(255) null
	,fromDirectAddress varchar(255) not null
	,toDirectAddress varchar(255) not null
	,toDirectAddress1 varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_referral] primary key ([ReferralId])

	)

------------------------------

create table social

	(
	encounterID varchar(255) not null
	,catID varchar(255) not null
	,itemID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_social] primary key ([ID])

	)

------------------------------

create table structdatadetail

	(
	Id varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,name varchar(255) not null
	,type varchar(255) not null
	,mandatory varchar(255) not null
	,displayIndex varchar(255) not null
	,deleteFlag varchar(255) not null
	,parentId varchar(255) not null
	,triggerflag varchar(255) not null
	,itemType varchar(255) not null
	,nodeLevel varchar(255) not null
	,tblName varchar(255) not null
	,chartDisplay varchar(255) null
	,multiSelect varchar(255) not null
	,IsSearchable varchar(255) null
	,defaultValue varchar(255) null
	,defaultValueId varchar(255) null
	,modifynotes varchar(255) null
	,readonly varchar(255) null
	,dropdown varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structdatadetail] primary key ([Id])

	)

------------------------------

create table structexam

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,displayIndex varchar(255) not null
	,chartdisplay varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structexam] primary key ([Id])

	)

------------------------------

create table smsmsglogs

	(
	ID varchar(255) not null
	,ToSMSName varchar(255) null
	,ToSMSNumber varchar(255) null
	,ToSMSProvider varchar(255) null
	,Retry varchar(255) null
	,SMSMessageID varchar(255) null
	,SMSMESSAGEBODY varchar(255) null
	,SmsMessageStatus varchar(255) null
	,smsMessageType varchar(255) null
	,SMSSubject varchar(255) null
	,sentdate varchar(255) not null
	,SentTime varchar(255) null
	,ScheduledDate varchar(255) null
	,ScheduledTime varchar(255) null
	,FromSMSName varchar(255) null
	,FromSMSNumber varchar(255) null
	,FromSMSProvider varchar(255) null
	,ClientId varchar(255) null
	,Priority varchar(255) null
	,EcwWebSMSUser varchar(255) null
	,ErrorId varchar(255) null
	,ErrorMsg varchar(255) null
	,DateCreated varchar(255) not null
	,isDeleted varchar(255) null
	,EncounterID varchar(255) null
	,LabID varchar(255) null
	,PatientId varchar(255) null
	,FacilityId varchar(255) null
	,PtStatementId varchar(255) null
	,Language varchar(255) null
	,SMSMsgUser varchar(255) null
	,SMSMsgPwd varchar(255) null
	,AppServMachineName varchar(255) null
	,AppServMachineIP varchar(255) null
	,AppServMacAddr varchar(255) null
	,SentByLastName varchar(255) null
	,SentByFirstName varchar(255) not null
	,SentBy varchar(255) null
	,VendorMsgId varchar(255) null
	,VendorSMSresponse varchar(255) null
	,TemplateId varchar(255) null
	,uploadlocation varchar(255) null
	,DoctorId varchar(255) null
	,RequiredConfirm varchar(255) null
	,ConfirmNumber varchar(255) null
	,smsmsgreply varchar(255) null
	,smsmsgreply_id varchar(255) null
	,parentid varchar(255) not null
	,ActualMessage varchar(255) null
	,ResourceId varchar(255) not null
	,msgSource varchar(255) null
	,ecwversion varchar(255) null
	,ecmversion varchar(255) null
	,AutoUpgradeKey varchar(255) null
	,FaxLogId varchar(255) null
	,eRxReqID varchar(255) null
	,eRxReFillReqID varchar(255) null
	,campaignid varchar(255) not null
	,campaign varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_smsmsglogs] primary key ([ID])

	)

------------------------------

create table structhpi

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) not null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,chartdisplay varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structhpi] primary key ([Id])

	)

------------------------------

create table structpreventive

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,chartdisplay varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structpreventive] primary key ([Id])

	)

------------------------------

create table structsocialhistory

	(
	encounterId varchar(255) not null
	,catId varchar(255) not null
	,itemId varchar(255) not null
	,detailId varchar(255) not null
	,value varchar(255) null
	,valueId varchar(255) not null
	,notes varchar(255) not null
	,chartdisplay varchar(255) null
	,displayIndex varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_structsocialhistory] primary key ([Id])

	)

------------------------------

create table surescript_eprescription

	(
	ReqID varchar(255) not null
	,RxType varchar(255) null
	,MessageID varchar(255) null
	,RelatedMessageID varchar(255) null
	,SentTo varchar(255) null
	,SentFrom varchar(255) null
	,SentTime varchar(255) null
	,MessageText varchar(255) null
	,StatusDesc varchar(255) null
	,AttemptNo varchar(255) null
	,LastAttemptTimeStamp varchar(255) null
	,PatientID varchar(255) not null
	,encounterID varchar(255) null
	,Patient_FName varchar(255) null
	,Patient_LName varchar(255) null
	,Patient_MName varchar(255) null
	,DateOfBirth varchar(255) null
	,Sex varchar(255) null
	,Ssn varchar(255) null
	,AddressLine1 varchar(255) null
	,AddressLine2 varchar(255) null
	,City varchar(255) null
	,State varchar(255) null
	,ZipCode varchar(255) null
	,Patient_PrimaryPhone varchar(255) null
	,Patient_CellPhone varchar(255) null
	,Patient_Fax varchar(255) null
	,Patient_Email varchar(255) null
	,DoctorID varchar(255) not null
	,SPI varchar(255) null
	,StateLicenseNumber varchar(255) null
	,doc_ssn varchar(255) null
	,DEANo varchar(255) null
	,doc_FName varchar(255) null
	,doc_LName varchar(255) null
	,doc_MName varchar(255) null
	,doc_suffix varchar(255) null
	,Speciality varchar(255) null
	,SpecialityCode varchar(255) null
	,doc_AddressLine1 varchar(255) null
	,doc_AddressLine2 varchar(255) null
	,doc_City varchar(255) null
	,doc_State varchar(255) null
	,doc_Zipcode varchar(255) null
	,doc_Primaryphone varchar(255) null
	,doc_Pagerno varchar(255) null
	,doc_Mobilephone varchar(255) null
	,PharmacyID varchar(255) not null
	,NCPDPID varchar(255) null
	,PharmacyName varchar(255) null
	,Pharmacy_AddressLine1 varchar(255) null
	,Pharmacy_City varchar(255) null
	,Pharmacy_State varchar(255) null
	,Pharmacy_Zipcode varchar(255) null
	,Pharmacy_Phone varchar(255) null
	,Pharmacy_Fax varchar(255) null
	,Pharmacy_Email varchar(255) null
	,DrugDescription varchar(255) null
	,ProductCode varchar(255) null
	,ProductCodeQualifier varchar(255) null
	,DosageForm varchar(255) null
	,Strength varchar(255) null
	,StrengthUnits varchar(255) null
	,DrugDBCode varchar(255) null
	,DrugDBCodeQualifier varchar(255) null
	,Frequency varchar(255) null
	,duration varchar(255) null
	,Quantity varchar(255) null
	,Take varchar(255) null
	,Refills varchar(255) null
	,SubsMedAllowed varchar(255) null
	,Comments varchar(255) null
	,XMLData varchar(255) null
	,XMLResponseData varchar(255) null
	,RefillsQualifier varchar(255) null
	,bAsynMsgPostedToDoc varchar(255) null
	,bVerified varchar(255) null
	,ScriptVersion varchar(255) null
	,SentBy varchar(255) null
	,RxhubId varchar(255) null
	,RouteSource varchar(255) not null
	,Addressed varchar(255) null
	,AddressedBy varchar(255) null
	,PrescriberOrderNo varchar(255) null
	,SentById varchar(255) null
	,IpAddress varchar(255) null
	,isVoiceMsgSent varchar(255) not null
	,isTextMsgSent varchar(255) null
	,rxOrderNo varchar(255) null
	,DEASchedule varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_surescript_eprescription] primary key ([ReqID])

	)

------------------------------

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

create table users

	(
	uid varchar(255) not null
	,uname varchar(255) not null
	,upwd varchar(255) null
	,udesc varchar(255) null
	,uroomno varchar(255) not null
	,umobileno varchar(255) not null
	,upagerno varchar(255) not null
	,ufname varchar(255) null
	,uminitial varchar(255) null
	,ulname varchar(255) null
	,uemail varchar(255) null
	,uwebpage varchar(255) null
	,upaddress varchar(255) null
	,upcity varchar(255) not null
	,upstate varchar(255) null
	,upPhone varchar(255) null
	,UserType varchar(255) null
	,zipcode varchar(255) null
	,dob varchar(255) null
	,ssn varchar(255) null
	,mflag varchar(255) null
	,updid varchar(255) null
	,cdate varchar(255) null
	,mdate varchar(255) not null
	,sex varchar(255) null
	,upaddress2 varchar(255) null
	,suffix varchar(255) null
	,prefix varchar(255) null
	,initials varchar(255) not null
	,ptDob varchar(255) not null
	,delFlag varchar(255) not null
	,vmid varchar(255) not null
	,status varchar(255) null
	,webenabled varchar(255) null
	,websync varchar(255) null
	,changePass varchar(255) null
	,primaryservicelocation varchar(255) not null
	,upreviousname varchar(255) null
	,IsResource varchar(255) not null
	,EligibilityStatus varchar(255) not null
	,OSUUserType varchar(255) not null
	,DefApptProvForResource varchar(255) not null
	,locked varchar(255) null
	,EncEligibilityStatus2 varchar(255) not null
	,EligibilityMessage2 varchar(255) not null
	,EncEligibilityStatus3 varchar(255) not null
	,EligibilityMessage3 varchar(255) not null
	,EncEligibilityStatus varchar(255) not null
	,EligibilityMessage varchar(255) not null
	,AllFacilities varchar(255) not null
	,Emrsex varchar(255) not null
	,CountryCode varchar(255) not null
	,transgender varchar(255) not null
	,EnterpriseId varchar(255) not null
	,gestationalAge varchar(255) not null
	,timeofbirth varchar(255) null
	,LANGUAGE varchar(255) not null
	,county varchar(255) not null
	,isCredentialed varchar(255) null
	,EncEligibilityStatus4 varchar(255) not null
	,EligibilityMessage4 varchar(255) not null
	,ACOUserType varchar(255) not null
	,credentialschange varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_users] primary key ([uid])

	)

------------------------------

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

create table visitsummarylog

	(
	id varchar(255) not null
	,encId varchar(255) null
	,uid varchar(255) null
	,requestDate varchar(255) null
	,requestedBy varchar(255) null
	,vsdata varchar(255) null
	,status varchar(255) null
	,loggedfrom varchar(255) not null
	,ccddata varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_visitsummarylog] primary key ([id])

	)

------------------------------

create table vitals

	(
	encounterID varchar(255) not null
	,vitalID varchar(255) not null
	,propID varchar(255) not null
	,value varchar(255) not null
	,Id varchar(255) not null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,defaultValue varchar(255) not null
	,valueHtm varchar(255) not null
	,value2 varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_vitals] primary key ([Id])

	)

------------------------------

create table voicemsglogs

	(
	ID varchar(255) not null
	,ToName varchar(255) null
	,ContactType varchar(255) null
	,ToPhone varchar(255) null
	,Retry varchar(255) null
	,voiceMessageStatus varchar(255) null
	,SentDate varchar(255) null
	,Priority varchar(255) null
	,VoiceMessageType varchar(255) null
	,VoiceMessageLiveText varchar(255) null
	,VoiceMessageLiveAudio varchar(255) null
	,VoiceMessageMachineText varchar(255) null
	,VoiceMessageMachineAudio varchar(255) null
	,InitialGreetingAudio varchar(255) null
	,VoiceMessageId varchar(255) null
	,Date_Created varchar(255) not null
	,Date_Modified varchar(255) null
	,isDeleted varchar(255) null
	,StatusMsg varchar(255) null
	,CallerIDNumber varchar(255) null
	,InitialGreetingAudioText varchar(255) null
	,OtherContactType varchar(255) null
	,EncounterID varchar(255) null
	,MaxLiveReplays varchar(255) null
	,OperatorNumber varchar(255) null
	,ConfirmationStatus varchar(255) null
	,DeliveryType varchar(255) null
	,ErrorMsg varchar(255) null
	,LabID varchar(255) not null
	,ConfirmCancelEnabled varchar(255) null
	,PatientId varchar(255) null
	,PtStatementId varchar(255) null
	,Language varchar(255) null
	,ScheduledDate varchar(255) not null
	,ScheduledTime varchar(255) not null
	,SentByLastName varchar(255) not null
	,SentByFirstName varchar(255) not null
	,SentBy varchar(255) not null
	,FacilityId varchar(255) not null
	,SentTime varchar(255) not null
	,uploadLocation varchar(255) null
	,TTSVoice varchar(255) null
	,VMsgUser varchar(255) null
	,VMsgPwd varchar(255) null
	,AppServMachineName varchar(255) null
	,AppServMachineIP varchar(255) null
	,parentid varchar(255) null
	,recordurl varchar(255) null
	,StatusDetail varchar(255) null
	,ResourceId varchar(255) not null
	,recordedMessageId varchar(255) null
	,ecwVersion varchar(255) null
	,ecmVersion varchar(255) null
	,timeZone varchar(255) null
	,retryfailedmsg varchar(255) not null
	,ApptStatus varchar(255) null
	,ivrvalue varchar(255) not null
	,AutoUpgradeKey varchar(255) null
	,OtherContactNumbers varchar(255) null
	,ErrorCode varchar(255) not null
	,MsgExpireTime varchar(255) null
	,PtPin varchar(255) not null
	,PtPinType varchar(255) null
	,isMsgSecured varchar(255) not null
	,msgSource varchar(255) null
	,providerGreetingsUid varchar(255) null
	,ClientResponse varchar(255) not null
	,messageJobType varchar(255) not null
	,FaxLogId varchar(255) not null
	,eRxReqID varchar(255) not null
	,eRxReFillReqID varchar(255) not null
	,providerid varchar(255) not null
	,campaignid varchar(255) not null
	,campaign varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_voicemsglogs] primary key ([ID])

	)

------------------------------
