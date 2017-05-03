
select
replace(replace(replace(cast(a.Id as varchar(max)),char(10),''),char(13),''),'"','') as Id
,replace(replace(replace(cast(a.pid as varchar(max)),char(10),''),char(13),''),'"','') as pid
,replace(replace(replace(cast(a.insid as varchar(max)),char(10),''),char(13),''),'"','') as insid
,replace(replace(replace(cast(a.startDate as varchar(max)),char(10),''),char(13),''),'"','') as startDate
,replace(replace(replace(cast(a.endDate as varchar(max)),char(10),''),char(13),''),'"','') as endDate
,replace(replace(replace(cast(a.groupNo as varchar(max)),char(10),''),char(13),''),'"','') as groupNo
,replace(replace(replace(cast(a.subscriberNo as varchar(max)),char(10),''),char(13),''),'"','') as subscriberNo
,replace(replace(replace(cast(a.copays as varchar(max)),char(10),''),char(13),''),'"','') as copays
,replace(replace(replace(cast(a.copayType as varchar(max)),char(10),''),char(13),''),'"','') as copayType
,replace(replace(replace(cast(a.insOrder as varchar(max)),char(10),''),char(13),''),'"','') as insOrder
,replace(replace(replace(cast(a.DeleteFlag as varchar(max)),char(10),''),char(13),''),'"','') as DeleteFlag
,replace(replace(replace(cast(a.GrId as varchar(max)),char(10),''),char(13),''),'"','') as GrId
,replace(replace(replace(cast(a.GrRel as varchar(max)),char(10),''),char(13),''),'"','') as GrRel
,replace(replace(replace(cast(a.IsGrPt as varchar(max)),char(10),''),char(13),''),'"','') as IsGrPt
,replace(replace(replace(cast(a.PaymentSource as varchar(max)),char(10),''),char(13),''),'"','') as PaymentSource
,replace(replace(replace(cast(a.groupName as varchar(max)),char(10),''),char(13),''),'"','') as groupName
,replace(replace(replace(cast(a.InsType as varchar(max)),char(10),''),char(13),''),'"','') as InsType
,replace(replace(replace(cast(a.AssignBenefits as varchar(max)),char(10),''),char(13),''),'"','') as AssignBenefits
,replace(replace(replace(cast(a.SeqNo as varchar(max)),char(10),''),char(13),''),'"','') as SeqNo
,replace(replace(replace(cast(a.PtSigSource as varchar(max)),char(10),''),char(13),''),'"','') as PtSigSource
,replace(replace(replace(cast(a.PPOIndex as varchar(max)),char(10),''),char(13),''),'"','') as PPOIndex
,replace(replace(replace(cast(a.PPOId as varchar(max)),char(10),''),char(13),''),'"','') as PPOId
,replace(replace(replace(cast(a.PayerClaimOfficeNo as varchar(max)),char(10),''),char(13),''),'"','') as PayerClaimOfficeNo
,replace(replace(replace(cast(a.SuppInsInd as varchar(max)),char(10),''),char(13),''),'"','') as SuppInsInd
,replace(replace(replace(cast(a.MedicaidId as varchar(max)),char(10),''),char(13),''),'"','') as MedicaidId
,replace(replace(replace(cast(a.patSubscriberNo as varchar(max)),char(10),''),char(13),''),'"','') as patSubscriberNo
,replace(replace(replace(cast(a.KenPAC as varchar(max)),char(10),''),char(13),''),'"','') as KenPAC
,replace(replace(replace(cast(a.InsuranceClass as varchar(max)),char(10),''),char(13),''),'"','') as InsuranceClass
,replace(replace(replace(cast(a.MedicaidSeqNo as varchar(max)),char(10),''),char(13),''),'"','') as MedicaidSeqNo
,replace(replace(replace(cast(a.EncEligibilityStatus as varchar(max)),char(10),''),char(13),''),'"','') as EncEligibilityStatus
,replace(replace(replace(cast(a.EligibilityMessage as varchar(max)),char(10),''),char(13),''),'"','') as EligibilityMessage
,replace(replace(replace(cast(a.InsuredAltLName as varchar(max)),char(10),''),char(13),''),'"','') as InsuredAltLName
,replace(replace(replace(cast(a.InsuredAltFName as varchar(max)),char(10),''),char(13),''),'"','') as InsuredAltFName
,replace(replace(replace(cast(a.InsuredAltMiddleInitial as varchar(max)),char(10),''),char(13),''),'"','') as InsuredAltMiddleInitial
,replace(replace(replace(cast(a.notes as varchar(max)),char(10),''),char(13),''),'"','') as notes
,replace(replace(replace(cast(a.PatientAltLName as varchar(max)),char(10),''),char(13),''),'"','') as PatientAltLName
,replace(replace(replace(cast(a.PatientAltFName as varchar(max)),char(10),''),char(13),''),'"','') as PatientAltFName
,replace(replace(replace(cast(a.PatientAltMiddleInitial as varchar(max)),char(10),''),char(13),''),'"','') as PatientAltMiddleInitial
,replace(replace(replace(cast(a.SubscriberSecondaryIdentifier as varchar(max)),char(10),''),char(13),''),'"','') as SubscriberSecondaryIdentifier
,replace(replace(replace(cast(a.SubscriberIdentificationQualifier as varchar(max)),char(10),''),char(13),''),'"','') as SubscriberIdentificationQualifier
,replace(replace(replace(cast(a.DentalIns as varchar(max)),char(10),''),char(13),''),'"','') as DentalIns
,replace(replace(replace(cast(a.MedicaidSubId as varchar(max)),char(10),''),char(13),''),'"','') as MedicaidSubId
,replace(replace(replace(cast(a.SubscriberSecondaryInvRef as varchar(max)),char(10),''),char(13),''),'"','') as SubscriberSecondaryInvRef
,replace(replace(replace(cast(a.SubscriberSecondaryInvRefQualifier as varchar(max)),char(10),''),char(13),''),'"','') as SubscriberSecondaryInvRefQualifier
,replace(replace(replace(cast(a.InsuranceImgName as varchar(max)),char(10),''),char(13),''),'"','') as InsuranceImgName
,replace(replace(replace(cast(a.MultipleCoPay as varchar(max)),char(10),''),char(13),''),'"','') as MultipleCoPay
,replace(replace(replace(cast(a.PCPCoPay as varchar(max)),char(10),''),char(13),''),'"','') as PCPCoPay
,replace(replace(replace(cast(a.SpecialistCoPay as varchar(max)),char(10),''),char(13),''),'"','') as SpecialistCoPay
,replace(replace(replace(cast(a.OtherCoPay as varchar(max)),char(10),''),char(13),''),'"','') as OtherCoPay
,replace(replace(replace(cast(a.CoInsurance as varchar(max)),char(10),''),char(13),''),'"','') as CoInsurance
,replace(replace(replace(cast(a.hl7id as varchar(max)),char(10),''),char(13),''),'"','') as hl7id


from insurancedetail a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
