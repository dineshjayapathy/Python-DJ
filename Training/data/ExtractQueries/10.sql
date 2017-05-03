
select
replace(replace(replace(cast(a.pid as varchar(max)),char(10),''),char(13),''),'"','') as pid
,replace(replace(replace(cast(a.ControlNo as varchar(max)),char(10),''),char(13),''),'"','') as ControlNo
,replace(replace(replace(cast(a.employername as varchar(max)),char(10),''),char(13),''),'"','') as employername
,replace(replace(replace(cast(a.employeraddress as varchar(max)),char(10),''),char(13),''),'"','') as employeraddress
,replace(replace(replace(cast(a.employeraddress2 as varchar(max)),char(10),''),char(13),''),'"','') as employeraddress2
,replace(replace(replace(cast(a.employercity as varchar(max)),char(10),''),char(13),''),'"','') as employercity
,replace(replace(replace(cast(a.employerstate as varchar(max)),char(10),''),char(13),''),'"','') as employerstate
,replace(replace(replace(cast(a.employerzip as varchar(max)),char(10),''),char(13),''),'"','') as employerzip
,replace(replace(replace(cast(a.employerPhone as varchar(max)),char(10),''),char(13),''),'"','') as employerPhone
,replace(replace(replace(cast(a.msgflag as varchar(max)),char(10),''),char(13),''),'"','') as msgflag
,replace(replace(replace(cast(a.insname as varchar(max)),char(10),''),char(13),''),'"','') as insname
,replace(replace(replace(cast(a.insgroupno as varchar(max)),char(10),''),char(13),''),'"','') as insgroupno
,replace(replace(replace(cast(a.inssubscriberno as varchar(max)),char(10),''),char(13),''),'"','') as inssubscriberno
,replace(replace(replace(cast(a.inscopay as varchar(max)),char(10),''),char(13),''),'"','') as inscopay
,replace(replace(replace(cast(a.pastHistory as varchar(max)),char(10),''),char(13),''),'"','') as pastHistory
,replace(replace(replace(cast(a.pharmacyname as varchar(max)),char(10),''),char(13),''),'"','') as pharmacyname
,replace(replace(replace(cast(a.pharmacyno as varchar(max)),char(10),''),char(13),''),'"','') as pharmacyno
,replace(replace(replace(cast(a.surgicalHistory as varchar(max)),char(10),''),char(13),''),'"','') as surgicalHistory
,replace(replace(replace(cast(a.hospitalization as varchar(max)),char(10),''),char(13),''),'"','') as hospitalization
,replace(replace(replace(cast(a.medications as varchar(max)),char(10),''),char(13),''),'"','') as medications
,replace(replace(replace(cast(a.insname2 as varchar(max)),char(10),''),char(13),''),'"','') as insname2
,replace(replace(replace(cast(a.insgroupno2 as varchar(max)),char(10),''),char(13),''),'"','') as insgroupno2
,replace(replace(replace(cast(a.inssubscriberno2 as varchar(max)),char(10),''),char(13),''),'"','') as inssubscriberno2
,replace(replace(replace(cast(a.inscopay2 as varchar(max)),char(10),''),char(13),''),'"','') as inscopay2
,replace(replace(replace(cast(a.straddress as varchar(max)),char(10),''),char(13),''),'"','') as straddress
,replace(replace(replace(cast(a.city as varchar(max)),char(10),''),char(13),''),'"','') as city
,replace(replace(replace(cast(a.state as varchar(max)),char(10),''),char(13),''),'"','') as state
,replace(replace(replace(cast(a.zip as varchar(max)),char(10),''),char(13),''),'"','') as zip
,replace(replace(replace(cast(a.doctorId as varchar(max)),char(10),''),char(13),''),'"','') as doctorId
,replace(replace(replace(cast(a.AttendingDoctorId as varchar(max)),char(10),''),char(13),''),'"','') as AttendingDoctorId
,replace(replace(replace(cast(a.pharmacyFax as varchar(max)),char(10),''),char(13),''),'"','') as pharmacyFax
,replace(replace(replace(cast(a.pmcId as varchar(max)),char(10),''),char(13),''),'"','') as pmcId
,replace(replace(replace(cast(a.insId as varchar(max)),char(10),''),char(13),''),'"','') as insId
,replace(replace(replace(cast(a.insId2 as varchar(max)),char(10),''),char(13),''),'"','') as insId2
,replace(replace(replace(cast(a.maritalstatus as varchar(max)),char(10),''),char(13),''),'"','') as maritalstatus
,replace(replace(replace(cast(a.strAddress2 as varchar(max)),char(10),''),char(13),''),'"','') as strAddress2
,replace(replace(replace(cast(a.notes as varchar(max)),char(10),''),char(13),''),'"','') as notes
,replace(replace(replace(cast(a.deceased as varchar(max)),char(10),''),char(13),''),'"','') as deceased
,replace(replace(replace(cast(a.deceasedDate as varchar(max)),char(10),''),char(13),''),'"','') as deceasedDate
,replace(replace(replace(cast(a.deceasedNotes as varchar(max)),char(10),''),char(13),''),'"','') as deceasedNotes
,replace(replace(replace(cast(a.language as varchar(max)),char(10),''),char(13),''),'"','') as language
,replace(replace(replace(cast(a.GrId as varchar(max)),char(10),''),char(13),''),'"','') as GrId
,replace(replace(replace(cast(a.GrRel as varchar(max)),char(10),''),char(13),''),'"','') as GrRel
,replace(replace(replace(cast(a.IsGrPt as varchar(max)),char(10),''),char(13),''),'"','') as IsGrPt
,replace(replace(replace(cast(a.GrType as varchar(max)),char(10),''),char(13),''),'"','') as GrType
,replace(replace(replace(cast(a.PrimIns as varchar(max)),char(10),''),char(13),''),'"','') as PrimIns
,replace(replace(replace(cast(a.ResType as varchar(max)),char(10),''),char(13),''),'"','') as ResType
,replace(replace(replace(cast(a.StudentStatus as varchar(max)),char(10),''),char(13),''),'"','') as StudentStatus
,replace(replace(replace(cast(a.EmpStatus as varchar(max)),char(10),''),char(13),''),'"','') as EmpStatus
,replace(replace(replace(cast(a.picFileName as varchar(max)),char(10),''),char(13),''),'"','') as picFileName
,replace(replace(replace(cast(a.RelInfo as varchar(max)),char(10),''),char(13),''),'"','') as RelInfo
,convert(varchar, cast(a.RelInfoDate as datetime), 20) as RelInfoDate
,replace(replace(replace(cast(a.PayorType as varchar(max)),char(10),''),char(13),''),'"','') as PayorType
,replace(replace(replace(cast(a.SelfPay as varchar(max)),char(10),''),char(13),''),'"','') as SelfPay
,replace(replace(replace(cast(a.hl7Id as varchar(max)),char(10),''),char(13),''),'"','') as hl7Id
,replace(replace(replace(cast(a.BillingAlert as varchar(max)),char(10),''),char(13),''),'"','') as BillingAlert
,replace(replace(replace(cast(a.BillingAlertNotes as varchar(max)),char(10),''),char(13),''),'"','') as BillingAlertNotes
,replace(replace(replace(cast(a.givenToColl as varchar(max)),char(10),''),char(13),''),'"','') as givenToColl
,convert(varchar, cast(a.givenDate as datetime), 20) as givenDate
,replace(replace(replace(cast(a.DefFeeSchId as varchar(max)),char(10),''),char(13),''),'"','') as DefFeeSchId
,replace(replace(replace(cast(a.race as varchar(max)),char(10),''),char(13),''),'"','') as race
,replace(replace(replace(cast(a.PtStatus as varchar(max)),char(10),''),char(13),''),'"','') as PtStatus
,convert(varchar, cast(a.ptStmtDate as datetime), 20) as ptStmtDate
,replace(replace(replace(cast(a.refPrId as varchar(max)),char(10),''),char(13),''),'"','') as refPrId
,replace(replace(replace(cast(a.rendPrId as varchar(max)),char(10),''),char(13),''),'"','') as rendPrId
,replace(replace(replace(cast(a.nostatements as varchar(max)),char(10),''),char(13),''),'"','') as nostatements
,replace(replace(replace(cast(a.CurrentCollectionStatus as varchar(max)),char(10),''),char(13),''),'"','') as CurrentCollectionStatus
,convert(varchar, cast(a.CollectionTimestamp as datetime), 20) as CollectionTimestamp
,replace(replace(replace(cast(a.interpretSvc as varchar(max)),char(10),''),char(13),''),'"','') as interpretSvc
,replace(replace(replace(cast(a.GlobalAlert as varchar(max)),char(10),''),char(13),''),'"','') as GlobalAlert
,replace(replace(replace(cast(a.characterestic as varchar(max)),char(10),''),char(13),''),'"','') as characterestic
,convert(varchar, cast(a.CollectionStageDate as datetime), 20) as CollectionStageDate
,convert(varchar, cast(a.regdate as datetime), 20) as regdate
,replace(replace(replace(cast(a.ethnicity as varchar(max)),char(10),''),char(13),''),'"','') as ethnicity
,replace(replace(replace(cast(a.vfc as varchar(max)),char(10),''),char(13),''),'"','') as vfc
,replace(replace(replace(cast(a.empId as varchar(max)),char(10),''),char(13),''),'"','') as empId
,replace(replace(replace(cast(a.irisenroll as varchar(max)),char(10),''),char(13),''),'"','') as irisenroll
,replace(replace(replace(cast(a.CollectionAgencyStatus as varchar(max)),char(10),''),char(13),''),'"','') as CollectionAgencyStatus
,replace(replace(replace(cast(a.RxConsent as varchar(max)),char(10),''),char(13),''),'"','') as RxConsent
,replace(replace(replace(cast(a.acctbal as varchar(max)),char(10),''),char(13),''),'"','') as acctbal
,convert(varchar, cast(a.CollStartStopDt as datetime), 20) as CollStartStopDt
,replace(replace(replace(cast(a.MailOrderPharmacyId as varchar(max)),char(10),''),char(13),''),'"','') as MailOrderPharmacyId
,replace(replace(replace(cast(a.MOMemberId as varchar(max)),char(10),''),char(13),''),'"','') as MOMemberId
,replace(replace(replace(cast(a.teamMember as varchar(max)),char(10),''),char(13),''),'"','') as teamMember
,replace(replace(replace(cast(a.bTranslator as varchar(max)),char(10),''),char(13),''),'"','') as bTranslator
,replace(replace(replace(cast(a.Address2Country as varchar(max)),char(10),''),char(13),''),'"','') as Address2Country
,replace(replace(replace(cast(a.VoiceEnabled as varchar(max)),char(10),''),char(13),''),'"','') as VoiceEnabled
,replace(replace(replace(cast(a.assignedtoId as varchar(max)),char(10),''),char(13),''),'"','') as assignedtoId
,replace(replace(replace(cast(a.assignedto as varchar(max)),char(10),''),char(13),''),'"','') as assignedto
,replace(replace(replace(cast(a.UseStreetAddressForRxFlag as varchar(max)),char(10),''),char(13),''),'"','') as UseStreetAddressForRxFlag
,replace(replace(replace(cast(a.textenabled as varchar(max)),char(10),''),char(13),''),'"','') as textenabled
,convert(varchar, cast(a.GrStmtDate as datetime), 20) as GrStmtDate
,replace(replace(replace(cast(a.msgCellflag as varchar(max)),char(10),''),char(13),''),'"','') as msgCellflag
,replace(replace(replace(cast(a.enableEmail as varchar(max)),char(10),''),char(13),''),'"','') as enableEmail
,replace(replace(replace(cast(a.enableLetters as varchar(max)),char(10),''),char(13),''),'"','') as enableLetters
,convert(varchar, cast(a.webEnabledDate as datetime), 20) as webEnabledDate
,replace(replace(replace(cast(a.preset as varchar(max)),char(10),''),char(13),''),'"','') as preset
,replace(replace(replace(cast(a.encpwd as varchar(max)),char(10),''),char(13),''),'"','') as encpwd
,replace(replace(replace(cast(a.lognotes as varchar(max)),char(10),''),char(13),''),'"','') as lognotes
,replace(replace(replace(cast(a.optout as varchar(max)),char(10),''),char(13),''),'"','') as optout
,replace(replace(replace(cast(a.optreasonId as varchar(max)),char(10),''),char(13),''),'"','') as optreasonId
,replace(replace(replace(cast(a.IsMigratedRecord as varchar(max)),char(10),''),char(13),''),'"','') as IsMigratedRecord
,replace(replace(replace(cast(a.DefaultLab as varchar(max)),char(10),''),char(13),''),'"','') as DefaultLab
,replace(replace(replace(cast(a.DefaultDI as varchar(max)),char(10),''),char(13),''),'"','') as DefaultDI
,replace(replace(replace(cast(a.emailreasonId as varchar(max)),char(10),''),char(13),''),'"','') as emailreasonId
,replace(replace(replace(cast(a.isKioskConsentReceived as varchar(max)),char(10),''),char(13),''),'"','') as isKioskConsentReceived
,replace(replace(replace(cast(a.isPtOptsOut as varchar(max)),char(10),''),char(13),''),'"','') as isPtOptsOut
,replace(replace(replace(cast(a.secureMsgKey as varchar(max)),char(10),''),char(13),''),'"','') as secureMsgKey


from patients a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
