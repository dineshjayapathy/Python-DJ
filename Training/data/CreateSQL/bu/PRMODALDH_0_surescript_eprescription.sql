
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
