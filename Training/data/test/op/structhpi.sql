
select
replace(replace(replace(cast(a.ReqID as varchar(max)),char(10),''),char(13),''),'"','') as ReqID
,replace(replace(replace(cast(a.RxType as varchar(max)),char(10),''),char(13),''),'"','') as RxType
,replace(replace(replace(cast(a.MessageID as varchar(max)),char(10),''),char(13),''),'"','') as MessageID
,replace(replace(replace(cast(a.RelatedMessageID as varchar(max)),char(10),''),char(13),''),'"','') as RelatedMessageID
,replace(replace(replace(cast(a.SentTo as varchar(max)),char(10),''),char(13),''),'"','') as SentTo
,replace(replace(replace(cast(a.SentFrom as varchar(max)),char(10),''),char(13),''),'"','') as SentFrom
,replace(replace(replace(cast(a.SentTime as varchar(max)),char(10),''),char(13),''),'"','') as SentTime
,replace(replace(replace(cast(a.MessageText as varchar(max)),char(10),''),char(13),''),'"','') as MessageText
,replace(replace(replace(cast(a.StatusDesc as varchar(max)),char(10),''),char(13),''),'"','') as StatusDesc
,replace(replace(replace(cast(a.AttemptNo as varchar(max)),char(10),''),char(13),''),'"','') as AttemptNo
,convert(varchar, cast(a.LastAttemptTimeStamp as datetime), 20) as LastAttemptTimeStamp
,replace(replace(replace(cast(a.PatientID as varchar(max)),char(10),''),char(13),''),'"','') as PatientID
,replace(replace(replace(cast(a.encounterID as varchar(max)),char(10),''),char(13),''),'"','') as encounterID
,replace(replace(replace(cast(a.Patient_FName as varchar(max)),char(10),''),char(13),''),'"','') as Patient_FName
,replace(replace(replace(cast(a.Patient_LName as varchar(max)),char(10),''),char(13),''),'"','') as Patient_LName
,replace(replace(replace(cast(a.Patient_MName as varchar(max)),char(10),''),char(13),''),'"','') as Patient_MName
,replace(replace(replace(cast(a.DateOfBirth as varchar(max)),char(10),''),char(13),''),'"','') as DateOfBirth
,replace(replace(replace(cast(a.Sex as varchar(max)),char(10),''),char(13),''),'"','') as Sex
,replace(replace(replace(cast(a.Ssn as varchar(max)),char(10),''),char(13),''),'"','') as Ssn
,replace(replace(replace(cast(a.AddressLine1 as varchar(max)),char(10),''),char(13),''),'"','') as AddressLine1
,replace(replace(replace(cast(a.AddressLine2 as varchar(max)),char(10),''),char(13),''),'"','') as AddressLine2
,replace(replace(replace(cast(a.City as varchar(max)),char(10),''),char(13),''),'"','') as City
,replace(replace(replace(cast(a.State as varchar(max)),char(10),''),char(13),''),'"','') as State
,replace(replace(replace(cast(a.ZipCode as varchar(max)),char(10),''),char(13),''),'"','') as ZipCode
,replace(replace(replace(cast(a.Patient_PrimaryPhone as varchar(max)),char(10),''),char(13),''),'"','') as Patient_PrimaryPhone
,replace(replace(replace(cast(a.Patient_CellPhone as varchar(max)),char(10),''),char(13),''),'"','') as Patient_CellPhone
,replace(replace(replace(cast(a.Patient_Fax as varchar(max)),char(10),''),char(13),''),'"','') as Patient_Fax
,replace(replace(replace(cast(a.Patient_Email as varchar(max)),char(10),''),char(13),''),'"','') as Patient_Email
,replace(replace(replace(cast(a.DoctorID as varchar(max)),char(10),''),char(13),''),'"','') as DoctorID
,replace(replace(replace(cast(a.SPI as varchar(max)),char(10),''),char(13),''),'"','') as SPI
,replace(replace(replace(cast(a.StateLicenseNumber as varchar(max)),char(10),''),char(13),''),'"','') as StateLicenseNumber
,replace(replace(replace(cast(a.doc_ssn as varchar(max)),char(10),''),char(13),''),'"','') as doc_ssn
,replace(replace(replace(cast(a.DEANo as varchar(max)),char(10),''),char(13),''),'"','') as DEANo
,replace(replace(replace(cast(a.doc_FName as varchar(max)),char(10),''),char(13),''),'"','') as doc_FName
,replace(replace(replace(cast(a.doc_LName as varchar(max)),char(10),''),char(13),''),'"','') as doc_LName
,replace(replace(replace(cast(a.doc_MName as varchar(max)),char(10),''),char(13),''),'"','') as doc_MName
,replace(replace(replace(cast(a.doc_suffix as varchar(max)),char(10),''),char(13),''),'"','') as doc_suffix
,replace(replace(replace(cast(a.Speciality as varchar(max)),char(10),''),char(13),''),'"','') as Speciality
,replace(replace(replace(cast(a.SpecialityCode as varchar(max)),char(10),''),char(13),''),'"','') as SpecialityCode
,replace(replace(replace(cast(a.doc_AddressLine1 as varchar(max)),char(10),''),char(13),''),'"','') as doc_AddressLine1
,replace(replace(replace(cast(a.doc_AddressLine2 as varchar(max)),char(10),''),char(13),''),'"','') as doc_AddressLine2
,replace(replace(replace(cast(a.doc_City as varchar(max)),char(10),''),char(13),''),'"','') as doc_City
,replace(replace(replace(cast(a.doc_State as varchar(max)),char(10),''),char(13),''),'"','') as doc_State
,replace(replace(replace(cast(a.doc_Zipcode as varchar(max)),char(10),''),char(13),''),'"','') as doc_Zipcode
,replace(replace(replace(cast(a.doc_Primaryphone as varchar(max)),char(10),''),char(13),''),'"','') as doc_Primaryphone
,replace(replace(replace(cast(a.doc_Pagerno as varchar(max)),char(10),''),char(13),''),'"','') as doc_Pagerno
,replace(replace(replace(cast(a.doc_Mobilephone as varchar(max)),char(10),''),char(13),''),'"','') as doc_Mobilephone
,replace(replace(replace(cast(a.PharmacyID as varchar(max)),char(10),''),char(13),''),'"','') as PharmacyID
,replace(replace(replace(cast(a.NCPDPID as varchar(max)),char(10),''),char(13),''),'"','') as NCPDPID
,replace(replace(replace(cast(a.PharmacyName as varchar(max)),char(10),''),char(13),''),'"','') as PharmacyName
,replace(replace(replace(cast(a.Pharmacy_AddressLine1 as varchar(max)),char(10),''),char(13),''),'"','') as Pharmacy_AddressLine1
,replace(replace(replace(cast(a.Pharmacy_City as varchar(max)),char(10),''),char(13),''),'"','') as Pharmacy_City
,replace(replace(replace(cast(a.Pharmacy_State as varchar(max)),char(10),''),char(13),''),'"','') as Pharmacy_State
,replace(replace(replace(cast(a.Pharmacy_Zipcode as varchar(max)),char(10),''),char(13),''),'"','') as Pharmacy_Zipcode
,replace(replace(replace(cast(a.Pharmacy_Phone as varchar(max)),char(10),''),char(13),''),'"','') as Pharmacy_Phone
,replace(replace(replace(cast(a.Pharmacy_Fax as varchar(max)),char(10),''),char(13),''),'"','') as Pharmacy_Fax
,replace(replace(replace(cast(a.Pharmacy_Email as varchar(max)),char(10),''),char(13),''),'"','') as Pharmacy_Email
,replace(replace(replace(cast(a.DrugDescription as varchar(max)),char(10),''),char(13),''),'"','') as DrugDescription
,replace(replace(replace(cast(a.ProductCode as varchar(max)),char(10),''),char(13),''),'"','') as ProductCode
,replace(replace(replace(cast(a.ProductCodeQualifier as varchar(max)),char(10),''),char(13),''),'"','') as ProductCodeQualifier
,replace(replace(replace(cast(a.DosageForm as varchar(max)),char(10),''),char(13),''),'"','') as DosageForm
,replace(replace(replace(cast(a.Strength as varchar(max)),char(10),''),char(13),''),'"','') as Strength
,replace(replace(replace(cast(a.StrengthUnits as varchar(max)),char(10),''),char(13),''),'"','') as StrengthUnits
,replace(replace(replace(cast(a.DrugDBCode as varchar(max)),char(10),''),char(13),''),'"','') as DrugDBCode
,replace(replace(replace(cast(a.DrugDBCodeQualifier as varchar(max)),char(10),''),char(13),''),'"','') as DrugDBCodeQualifier
,replace(replace(replace(cast(a.Frequency as varchar(max)),char(10),''),char(13),''),'"','') as Frequency
,replace(replace(replace(cast(a.duration as varchar(max)),char(10),''),char(13),''),'"','') as duration
,replace(replace(replace(cast(a.Quantity as varchar(max)),char(10),''),char(13),''),'"','') as Quantity
,replace(replace(replace(cast(a.Take as varchar(max)),char(10),''),char(13),''),'"','') as Take
,replace(replace(replace(cast(a.Refills as varchar(max)),char(10),''),char(13),''),'"','') as Refills
,replace(replace(replace(cast(a.SubsMedAllowed as varchar(max)),char(10),''),char(13),''),'"','') as SubsMedAllowed
,replace(replace(replace(cast(a.Comments as varchar(max)),char(10),''),char(13),''),'"','') as Comments
,replace(replace(replace(cast(a.XMLData as varchar(max)),char(10),''),char(13),''),'"','') as XMLData
,replace(replace(replace(cast(a.XMLResponseData as varchar(max)),char(10),''),char(13),''),'"','') as XMLResponseData
,replace(replace(replace(cast(a.RefillsQualifier as varchar(max)),char(10),''),char(13),''),'"','') as RefillsQualifier
,replace(replace(replace(cast(a.bAsynMsgPostedToDoc as varchar(max)),char(10),''),char(13),''),'"','') as bAsynMsgPostedToDoc
,replace(replace(replace(cast(a.bVerified as varchar(max)),char(10),''),char(13),''),'"','') as bVerified
,replace(replace(replace(cast(a.ScriptVersion as varchar(max)),char(10),''),char(13),''),'"','') as ScriptVersion
,replace(replace(replace(cast(a.SentBy as varchar(max)),char(10),''),char(13),''),'"','') as SentBy
,replace(replace(replace(cast(a.RxhubId as varchar(max)),char(10),''),char(13),''),'"','') as RxhubId
,replace(replace(replace(cast(a.RouteSource as varchar(max)),char(10),''),char(13),''),'"','') as RouteSource
,replace(replace(replace(cast(a.Addressed as varchar(max)),char(10),''),char(13),''),'"','') as Addressed
,replace(replace(replace(cast(a.AddressedBy as varchar(max)),char(10),''),char(13),''),'"','') as AddressedBy
,replace(replace(replace(cast(a.PrescriberOrderNo as varchar(max)),char(10),''),char(13),''),'"','') as PrescriberOrderNo
,replace(replace(replace(cast(a.SentById as varchar(max)),char(10),''),char(13),''),'"','') as SentById
,replace(replace(replace(cast(a.IpAddress as varchar(max)),char(10),''),char(13),''),'"','') as IpAddress
,replace(replace(replace(cast(a.isVoiceMsgSent as varchar(max)),char(10),''),char(13),''),'"','') as isVoiceMsgSent
,replace(replace(replace(cast(a.isTextMsgSent as varchar(max)),char(10),''),char(13),''),'"','') as isTextMsgSent
,replace(replace(replace(cast(a.rxOrderNo as varchar(max)),char(10),''),char(13),''),'"','') as rxOrderNo
,replace(replace(replace(cast(a.DEASchedule as varchar(max)),char(10),''),char(13),''),'"','') as DEASchedule


from surescript_eprescription a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
