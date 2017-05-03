
select
replace(replace(replace(cast(a.encounterID as varchar(max)),char(10),''),char(13),''),'"','') as encounterID
,replace(replace(replace(cast(a.chiefComplaint as varchar(max)),char(10),''),char(13),''),'"','') as chiefComplaint
,replace(replace(replace(cast(a.currentMedication as varchar(max)),char(10),''),char(13),''),'"','') as currentMedication
,replace(replace(replace(cast(a.HPINotes as varchar(max)),char(10),''),char(13),''),'"','') as HPINotes
,replace(replace(replace(cast(a.ExamNotes as varchar(max)),char(10),''),char(13),''),'"','') as ExamNotes
,replace(replace(replace(cast(a.AsmtNotes as varchar(max)),char(10),''),char(13),''),'"','') as AsmtNotes
,replace(replace(replace(cast(a.TreatNotes as varchar(max)),char(10),''),char(13),''),'"','') as TreatNotes
,replace(replace(replace(cast(a.NextAppt as varchar(max)),char(10),''),char(13),''),'"','') as NextAppt
,replace(replace(replace(cast(a.NextApptOpt as varchar(max)),char(10),''),char(13),''),'"','') as NextApptOpt
,replace(replace(replace(cast(a.LockEnc as varchar(max)),char(10),''),char(13),''),'"','') as LockEnc
,replace(replace(replace(cast(a.AddtlNotes as varchar(max)),char(10),''),char(13),''),'"','') as AddtlNotes
,replace(replace(replace(cast(a.pastHistory as varchar(max)),char(10),''),char(13),''),'"','') as pastHistory
,replace(replace(replace(cast(a.AllergiesFlag as varchar(max)),char(10),''),char(13),''),'"','') as AllergiesFlag
,replace(replace(replace(cast(a.complaintsFlag as varchar(max)),char(10),''),char(13),''),'"','') as complaintsFlag
,replace(replace(replace(cast(a.historyFlag as varchar(max)),char(10),''),char(13),''),'"','') as historyFlag
,replace(replace(replace(cast(a.vitalsFlag as varchar(max)),char(10),''),char(13),''),'"','') as vitalsFlag
,replace(replace(replace(cast(a.medicationFlag as varchar(max)),char(10),''),char(13),''),'"','') as medicationFlag
,replace(replace(replace(cast(a.copay as varchar(max)),char(10),''),char(13),''),'"','') as copay
,replace(replace(replace(cast(a.paymentType as varchar(max)),char(10),''),char(13),''),'"','') as paymentType
,replace(replace(replace(cast(a.checkNo as varchar(max)),char(10),''),char(13),''),'"','') as checkNo
,replace(replace(replace(cast(a.notesstatus as varchar(max)),char(10),''),char(13),''),'"','') as notesstatus
,replace(replace(replace(cast(a.displayIndex as varchar(max)),char(10),''),char(13),''),'"','') as displayIndex
,replace(replace(replace(cast(a.HospitalizationFlag as varchar(max)),char(10),''),char(13),''),'"','') as HospitalizationFlag
,replace(replace(replace(cast(a.SurgicalFlag as varchar(max)),char(10),''),char(13),''),'"','') as SurgicalFlag
,replace(replace(replace(cast(a.PregnantFlag as varchar(max)),char(10),''),char(13),''),'"','') as PregnantFlag
,replace(replace(replace(cast(a.BreastFeedingFlag as varchar(max)),char(10),''),char(13),''),'"','') as BreastFeedingFlag
,replace(replace(replace(cast(a.NonContributoryFlag as varchar(max)),char(10),''),char(13),''),'"','') as NonContributoryFlag
,replace(replace(replace(cast(a.SurgicalHistoryFlag as varchar(max)),char(10),''),char(13),''),'"','') as SurgicalHistoryFlag
,replace(replace(replace(cast(a.HospitalizationHistoryFlag as varchar(max)),char(10),''),char(13),''),'"','') as HospitalizationHistoryFlag
,replace(replace(replace(cast(a.chieficds as varchar(max)),char(10),''),char(13),''),'"','') as chieficds
,replace(replace(replace(cast(a.historyicds as varchar(max)),char(10),''),char(13),''),'"','') as historyicds
,replace(replace(replace(cast(a.AsmtNotesHeader as varchar(max)),char(10),''),char(13),''),'"','') as AsmtNotesHeader
,replace(replace(replace(cast(a.NextApptReason as varchar(max)),char(10),''),char(13),''),'"','') as NextApptReason
,replace(replace(replace(cast(a.FollowUpNA as varchar(max)),char(10),''),char(13),''),'"','') as FollowUpNA
,convert(varchar, cast(a.LockOrDoneDate as datetime), 20) as LockOrDoneDate
,replace(replace(replace(cast(a.SocialHistoryFlag as varchar(max)),char(10),''),char(13),''),'"','') as SocialHistoryFlag
,replace(replace(replace(cast(a.FamilyHistoryFlag as varchar(max)),char(10),''),char(13),''),'"','') as FamilyHistoryFlag
,replace(replace(replace(cast(a.doneBy as varchar(max)),char(10),''),char(13),''),'"','') as doneBy
,convert(varchar, cast(a.doneDate as datetime), 20) as doneDate
,replace(replace(replace(cast(a.ImmunizationsVerified as varchar(max)),char(10),''),char(13),''),'"','') as ImmunizationsVerified
,replace(replace(replace(cast(a.medreconciliationinternalflag as varchar(max)),char(10),''),char(13),''),'"','') as medreconciliationinternalflag
,replace(replace(replace(cast(a.historyicdids as varchar(max)),char(10),''),char(13),''),'"','') as historyicdids
,convert(varchar, cast(a.mddatelastseen as datetime), 20) as mddatelastseen


from encounterdata a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
