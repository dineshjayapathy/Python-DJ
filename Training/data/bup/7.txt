
select
replace(replace(replace(cast(a.Id as varchar(max)),char(10),''),char(13),''),'"','') as Id
,replace(replace(replace(cast(a.FacilityType as varchar(max)),char(10),''),char(13),''),'"','') as FacilityType
,replace(replace(replace(cast(a.Name as varchar(max)),char(10),''),char(13),''),'"','') as Name
,replace(replace(replace(cast(a.AddressLine1 as varchar(max)),char(10),''),char(13),''),'"','') as AddressLine1
,replace(replace(replace(cast(a.AddressLine2 as varchar(max)),char(10),''),char(13),''),'"','') as AddressLine2
,replace(replace(replace(cast(a.City as varchar(max)),char(10),''),char(13),''),'"','') as City
,replace(replace(replace(cast(a.State as varchar(max)),char(10),''),char(13),''),'"','') as State
,replace(replace(replace(cast(a.Zip as varchar(max)),char(10),''),char(13),''),'"','') as Zip
,replace(replace(replace(cast(a.Tel as varchar(max)),char(10),''),char(13),''),'"','') as Tel
,replace(replace(replace(cast(a.Fax as varchar(max)),char(10),''),char(13),''),'"','') as Fax
,replace(replace(replace(cast(a.EMail as varchar(max)),char(10),''),char(13),''),'"','') as EMail
,replace(replace(replace(cast(a.BillingAddressLine1 as varchar(max)),char(10),''),char(13),''),'"','') as BillingAddressLine1
,replace(replace(replace(cast(a.BillingAddressLine2 as varchar(max)),char(10),''),char(13),''),'"','') as BillingAddressLine2
,replace(replace(replace(cast(a.BillingCity as varchar(max)),char(10),''),char(13),''),'"','') as BillingCity
,replace(replace(replace(cast(a.BillingState as varchar(max)),char(10),''),char(13),''),'"','') as BillingState
,replace(replace(replace(cast(a.BillingZip as varchar(max)),char(10),''),char(13),''),'"','') as BillingZip
,replace(replace(replace(cast(a.BillingTel as varchar(max)),char(10),''),char(13),''),'"','') as BillingTel
,replace(replace(replace(cast(a.BillingFax as varchar(max)),char(10),''),char(13),''),'"','') as BillingFax
,replace(replace(replace(cast(a.BillingEMail as varchar(max)),char(10),''),char(13),''),'"','') as BillingEMail
,replace(replace(replace(cast(a.PracticeType as varchar(max)),char(10),''),char(13),''),'"','') as PracticeType
,replace(replace(replace(cast(a.PracticeOption as varchar(max)),char(10),''),char(13),''),'"','') as PracticeOption
,replace(replace(replace(cast(a.PayableTo as varchar(max)),char(10),''),char(13),''),'"','') as PayableTo
,replace(replace(replace(cast(a.BankAccount as varchar(max)),char(10),''),char(13),''),'"','') as BankAccount
,replace(replace(replace(cast(a.FederalTaxID as varchar(max)),char(10),''),char(13),''),'"','') as FederalTaxID
,replace(replace(replace(cast(a.Notes as varchar(max)),char(10),''),char(13),''),'"','') as Notes
,replace(replace(replace(cast(a.PrimaryFacility as varchar(max)),char(10),''),char(13),''),'"','') as PrimaryFacility
,replace(replace(replace(cast(a.CliaId as varchar(max)),char(10),''),char(13),''),'"','') as CliaId
,replace(replace(replace(cast(a.code as varchar(max)),char(10),''),char(13),''),'"','') as code
,replace(replace(replace(cast(a.POS as varchar(max)),char(10),''),char(13),''),'"','') as POS
,replace(replace(replace(cast(a.MammoCertId as varchar(max)),char(10),''),char(13),''),'"','') as MammoCertId
,replace(replace(replace(cast(a.HPSAFlag as varchar(max)),char(10),''),char(13),''),'"','') as HPSAFlag
,replace(replace(replace(cast(a.HPSAModifier as varchar(max)),char(10),''),char(13),''),'"','') as HPSAModifier
,replace(replace(replace(cast(a.DeleteFlag as varchar(max)),char(10),''),char(13),''),'"','') as DeleteFlag
,replace(replace(replace(cast(a.vmid as varchar(max)),char(10),''),char(13),''),'"','') as vmid
,replace(replace(replace(cast(a.hl7id as varchar(max)),char(10),''),char(13),''),'"','') as hl7id
,replace(replace(replace(cast(a.Color as varchar(max)),char(10),''),char(13),''),'"','') as Color
,replace(replace(replace(cast(a.FeeSchedule as varchar(max)),char(10),''),char(13),''),'"','') as FeeSchedule
,replace(replace(replace(cast(a.FacilityIdType as varchar(max)),char(10),''),char(13),''),'"','') as FacilityIdType
,replace(replace(replace(cast(a.PtStmtFacOption as varchar(max)),char(10),''),char(13),''),'"','') as PtStmtFacOption
,replace(replace(replace(cast(a.PtStmtFacId as varchar(max)),char(10),''),char(13),''),'"','') as PtStmtFacId
,replace(replace(replace(cast(a.RestrictPrintAppts as varchar(max)),char(10),''),char(13),''),'"','') as RestrictPrintAppts
,replace(replace(replace(cast(a.NPI as varchar(max)),char(10),''),char(13),''),'"','') as NPI
,replace(replace(replace(cast(a.ImmStateId as varchar(max)),char(10),''),char(13),''),'"','') as ImmStateId
,replace(replace(replace(cast(a.TaxonomyCode as varchar(max)),char(10),''),char(13),''),'"','') as TaxonomyCode
,replace(replace(replace(cast(a.RestrictPrintStmts as varchar(max)),char(10),''),char(13),''),'"','') as RestrictPrintStmts
,convert(varchar, cast(a.startedOn as datetime), 20) as startedOn
,replace(replace(replace(cast(a.RevenueCode as varchar(max)),char(10),''),char(13),''),'"','') as RevenueCode
,replace(replace(replace(cast(a.Percent as varchar(max)),char(10),''),char(13),''),'"','') as Percent
,replace(replace(replace(cast(a.OverrideSalesTax as varchar(max)),char(10),''),char(13),''),'"','') as OverrideSalesTax
,replace(replace(replace(cast(a.MerchantID as varchar(max)),char(10),''),char(13),''),'"','') as MerchantID
,replace(replace(replace(cast(a.ImmLocationId as varchar(max)),char(10),''),char(13),''),'"','') as ImmLocationId
,replace(replace(replace(cast(a.TimeZoneCode as varchar(max)),char(10),''),char(13),''),'"','') as TimeZoneCode
,replace(replace(replace(cast(a.MessCallerId as varchar(max)),char(10),''),char(13),''),'"','') as MessCallerId
,replace(replace(replace(cast(a.MessOperNum as varchar(max)),char(10),''),char(13),''),'"','') as MessOperNum
,replace(replace(replace(cast(a.CreditCardOption as varchar(max)),char(10),''),char(13),''),'"','') as CreditCardOption
,replace(replace(replace(cast(a.CountryCode as varchar(max)),char(10),''),char(13),''),'"','') as CountryCode
,replace(replace(replace(cast(a.BillingCountryCode as varchar(max)),char(10),''),char(13),''),'"','') as BillingCountryCode
,replace(replace(replace(cast(a.Immfacid as varchar(max)),char(10),''),char(13),''),'"','') as Immfacid
,replace(replace(replace(cast(a.BillType as varchar(max)),char(10),''),char(13),''),'"','') as BillType
,replace(replace(replace(cast(a.takeNewPortalAppts as varchar(max)),char(10),''),char(13),''),'"','') as takeNewPortalAppts
,replace(replace(replace(cast(a.portal_name as varchar(max)),char(10),''),char(13),''),'"','') as portal_name
,replace(replace(replace(cast(a.takenewportalmsg as varchar(max)),char(10),''),char(13),''),'"','') as takenewportalmsg
,replace(replace(replace(cast(a.showinpi as varchar(max)),char(10),''),char(13),''),'"','') as showinpi
,convert(varchar, cast(a.modifiedDate as datetime), 20) as modifiedDate
,replace(replace(replace(cast(a.nsexclude as varchar(max)),char(10),''),char(13),''),'"','') as nsexclude
,replace(replace(replace(cast(a.facilitysmsname as varchar(max)),char(10),''),char(13),''),'"','') as facilitysmsname
,replace(replace(replace(cast(a.birthdayexclude as varchar(max)),char(10),''),char(13),''),'"','') as birthdayexclude
,replace(replace(replace(cast(a.ASC_TN_FacilityType as varchar(max)),char(10),''),char(13),''),'"','') as ASC_TN_FacilityType
,replace(replace(replace(cast(a.ASC_TN_FacilityId as varchar(max)),char(10),''),char(13),''),'"','') as ASC_TN_FacilityId
,replace(replace(replace(cast(a.facilitynickname as varchar(max)),char(10),''),char(13),''),'"','') as facilitynickname
,replace(replace(replace(cast(a.exclude as varchar(max)),char(10),''),char(13),''),'"','') as exclude
,replace(replace(replace(cast(a.labexclude as varchar(max)),char(10),''),char(13),''),'"','') as labexclude
,replace(replace(replace(cast(a.ASC_WI_FacilityType as varchar(max)),char(10),''),char(13),''),'"','') as ASC_WI_FacilityType
,replace(replace(replace(cast(a.rxexclude as varchar(max)),char(10),''),char(13),''),'"','') as rxexclude


from edi_facilities a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
