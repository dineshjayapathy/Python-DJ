
select
replace(replace(replace(cast(a.doctorID as varchar(max)),char(10),''),char(13),''),'"','') as doctorID
,replace(replace(replace(cast(a.deaNo as varchar(max)),char(10),''),char(13),''),'"','') as deaNo
,replace(replace(replace(cast(a.FaxNo as varchar(max)),char(10),''),char(13),''),'"','') as FaxNo
,replace(replace(replace(cast(a.speciality as varchar(max)),char(10),''),char(13),''),'"','') as speciality
,replace(replace(replace(cast(a.SpecialityCode as varchar(max)),char(10),''),char(13),''),'"','') as SpecialityCode
,replace(replace(replace(cast(a.PrintName as varchar(max)),char(10),''),char(13),''),'"','') as PrintName
,replace(replace(replace(cast(a.providerCode as varchar(max)),char(10),''),char(13),''),'"','') as providerCode
,replace(replace(replace(cast(a.LicenseKey as varchar(max)),char(10),''),char(13),''),'"','') as LicenseKey
,replace(replace(replace(cast(a.TaxID as varchar(max)),char(10),''),char(13),''),'"','') as TaxID
,replace(replace(replace(cast(a.TaxIDType as varchar(max)),char(10),''),char(13),''),'"','') as TaxIDType
,replace(replace(replace(cast(a.TaxIDSuffix as varchar(max)),char(10),''),char(13),''),'"','') as TaxIDSuffix
,replace(replace(replace(cast(a.EMCProviderID as varchar(max)),char(10),''),char(13),''),'"','') as EMCProviderID
,replace(replace(replace(cast(a.OrgType as varchar(max)),char(10),''),char(13),''),'"','') as OrgType
,replace(replace(replace(cast(a.FacilityId as varchar(max)),char(10),''),char(13),''),'"','') as FacilityId
,replace(replace(replace(cast(a.NPI as varchar(max)),char(10),''),char(13),''),'"','') as NPI
,replace(replace(replace(cast(a.UPIN as varchar(max)),char(10),''),char(13),''),'"','') as UPIN
,replace(replace(replace(cast(a.MamoCerNo as varchar(max)),char(10),''),char(13),''),'"','') as MamoCerNo
,replace(replace(replace(cast(a.MedicareNo as varchar(max)),char(10),''),char(13),''),'"','') as MedicareNo
,replace(replace(replace(cast(a.MedicaidNo as varchar(max)),char(10),''),char(13),''),'"','') as MedicaidNo
,replace(replace(replace(cast(a.ChampusNo as varchar(max)),char(10),''),char(13),''),'"','') as ChampusNo
,replace(replace(replace(cast(a.BlueShieldNo as varchar(max)),char(10),''),char(13),''),'"','') as BlueShieldNo
,replace(replace(replace(cast(a.SpLicNo as varchar(max)),char(10),''),char(13),''),'"','') as SpLicNo
,replace(replace(replace(cast(a.StLicNo as varchar(max)),char(10),''),char(13),''),'"','') as StLicNo
,replace(replace(replace(cast(a.AneLicNo as varchar(max)),char(10),''),char(13),''),'"','') as AneLicNo
,replace(replace(replace(cast(a.inactive as varchar(max)),char(10),''),char(13),''),'"','') as inactive
,replace(replace(replace(cast(a.TaxonomyCode as varchar(max)),char(10),''),char(13),''),'"','') as TaxonomyCode
,replace(replace(replace(cast(a.HPSAFlag as varchar(max)),char(10),''),char(13),''),'"','') as HPSAFlag
,replace(replace(replace(cast(a.hl7id as varchar(max)),char(10),''),char(13),''),'"','') as hl7id
,replace(replace(replace(cast(a.SuprPrId as varchar(max)),char(10),''),char(13),''),'"','') as SuprPrId
,replace(replace(replace(cast(a.DefStaffID as varchar(max)),char(10),''),char(13),''),'"','') as DefStaffID
,replace(replace(replace(cast(a.ClaimPrefix as varchar(max)),char(10),''),char(13),''),'"','') as ClaimPrefix
,replace(replace(replace(cast(a.CarolinaAccessNo as varchar(max)),char(10),''),char(13),''),'"','') as CarolinaAccessNo
,replace(replace(replace(cast(a.KenPAC as varchar(max)),char(10),''),char(13),''),'"','') as KenPAC
,replace(replace(replace(cast(a.ProfCode as varchar(max)),char(10),''),char(13),''),'"','') as ProfCode
,replace(replace(replace(cast(a.SPI as varchar(max)),char(10),''),char(13),''),'"','') as SPI
,replace(replace(replace(cast(a.ActiveStartDate as varchar(max)),char(10),''),char(13),''),'"','') as ActiveStartDate
,replace(replace(replace(cast(a.ActiveEndDate as varchar(max)),char(10),''),char(13),''),'"','') as ActiveEndDate
,replace(replace(replace(cast(a.PostURL as varchar(max)),char(10),''),char(13),''),'"','') as PostURL
,replace(replace(replace(cast(a.VisitTypeSearch as varchar(max)),char(10),''),char(13),''),'"','') as VisitTypeSearch
,replace(replace(replace(cast(a.VisitTypeIndicator as varchar(max)),char(10),''),char(13),''),'"','') as VisitTypeIndicator
,replace(replace(replace(cast(a.DefRefillRxAssignedTo as varchar(max)),char(10),''),char(13),''),'"','') as DefRefillRxAssignedTo
,replace(replace(replace(cast(a.doctorType as varchar(max)),char(10),''),char(13),''),'"','') as doctorType
,replace(replace(replace(cast(a.PhotoMedicId as varchar(max)),char(10),''),char(13),''),'"','') as PhotoMedicId
,replace(replace(replace(cast(a.TakeNewAppts as varchar(max)),char(10),''),char(13),''),'"','') as TakeNewAppts
,replace(replace(replace(cast(a.AHCAID as varchar(max)),char(10),''),char(13),''),'"','') as AHCAID
,replace(replace(replace(cast(a.DefaultRefAssignedTo as varchar(max)),char(10),''),char(13),''),'"','') as DefaultRefAssignedTo
,replace(replace(replace(cast(a.ucpid as varchar(max)),char(10),''),char(13),''),'"','') as ucpid
,replace(replace(replace(cast(a.GrpNPI as varchar(max)),char(10),''),char(13),''),'"','') as GrpNPI
,replace(replace(replace(cast(a.DefaultFaxRxStyleId as varchar(max)),char(10),''),char(13),''),'"','') as DefaultFaxRxStyleId
,replace(replace(replace(cast(a.DefaultPrintRxStyleId as varchar(max)),char(10),''),char(13),''),'"','') as DefaultPrintRxStyleId
,replace(replace(replace(cast(a.SeqNoExempted as varchar(max)),char(10),''),char(13),''),'"','') as SeqNoExempted
,replace(replace(replace(cast(a.EntityType as varchar(max)),char(10),''),char(13),''),'"','') as EntityType
,replace(replace(replace(cast(a.ProviderType as varchar(max)),char(10),''),char(13),''),'"','') as ProviderType
,replace(replace(replace(cast(a.DPSNo as varchar(max)),char(10),''),char(13),''),'"','') as DPSNo
,replace(replace(replace(cast(a.RxhubId as varchar(max)),char(10),''),char(13),''),'"','') as RxhubId
,replace(replace(replace(cast(a.ProvRoleType as varchar(max)),char(10),''),char(13),''),'"','') as ProvRoleType
,replace(replace(replace(cast(a.DefStaffIDForProcedure as varchar(max)),char(10),''),char(13),''),'"','') as DefStaffIDForProcedure
,replace(replace(replace(cast(a.DefStaffIDForDI as varchar(max)),char(10),''),char(13),''),'"','') as DefStaffIDForDI
,replace(replace(replace(cast(a.isResident as varchar(max)),char(10),''),char(13),''),'"','') as isResident
,replace(replace(replace(cast(a.PrescriptiveAuthNo as varchar(max)),char(10),''),char(13),''),'"','') as PrescriptiveAuthNo
,replace(replace(replace(cast(a.isNurseAncProv as varchar(max)),char(10),''),char(13),''),'"','') as isNurseAncProv
,replace(replace(replace(cast(a.DefRefillRxAssignedTo2 as varchar(max)),char(10),''),char(13),''),'"','') as DefRefillRxAssignedTo2
,replace(replace(replace(cast(a.DefRefillRxAssignedTo3 as varchar(max)),char(10),''),char(13),''),'"','') as DefRefillRxAssignedTo3
,replace(replace(replace(cast(a.regNHX as varchar(max)),char(10),''),char(13),''),'"','') as regNHX
,replace(replace(replace(cast(a.p2pimport as varchar(max)),char(10),''),char(13),''),'"','') as p2pimport
,replace(replace(replace(cast(a.regp2pnpi as varchar(max)),char(10),''),char(13),''),'"','') as regp2pnpi
,replace(replace(replace(cast(a.DefaultIncomingRefAssignedTo as varchar(max)),char(10),''),char(13),''),'"','') as DefaultIncomingRefAssignedTo
,replace(replace(replace(cast(a.NetAffId as varchar(max)),char(10),''),char(13),''),'"','') as NetAffId
,replace(replace(replace(cast(a.SS_Deactivated as varchar(max)),char(10),''),char(13),''),'"','') as SS_Deactivated
,replace(replace(replace(cast(a.CoPayType as varchar(max)),char(10),''),char(13),''),'"','') as CoPayType
,replace(replace(replace(cast(a.takenewportalmsg as varchar(max)),char(10),''),char(13),''),'"','') as takenewportalmsg
,replace(replace(replace(cast(a.DefaultPRAssignedTo as varchar(max)),char(10),''),char(13),''),'"','') as DefaultPRAssignedTo
,replace(replace(replace(cast(a.regOA as varchar(max)),char(10),''),char(13),''),'"','') as regOA
,replace(replace(replace(cast(a.diwapptprotectiontype as varchar(max)),char(10),''),char(13),''),'"','') as diwapptprotectiontype
,replace(replace(replace(cast(a.defaultstate as varchar(max)),char(10),''),char(13),''),'"','') as defaultstate
,replace(replace(replace(cast(a.regTV as varchar(max)),char(10),''),char(13),''),'"','') as regTV


from doctors a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
