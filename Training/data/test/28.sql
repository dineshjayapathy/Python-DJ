
select
replace(replace(replace(cast(a.ImmunizationId as varchar(max)),char(10),''),char(13),''),'"','') as ImmunizationId
,replace(replace(replace(cast(a.patientId as varchar(max)),char(10),''),char(13),''),'"','') as patientId
,replace(replace(replace(cast(a.ItemId as varchar(max)),char(10),''),char(13),''),'"','') as ItemId
,replace(replace(replace(cast(a.location as varchar(max)),char(10),''),char(13),''),'"','') as location
,convert(varchar, cast(a.givenDate as datetime), 20) as givenDate
,replace(replace(replace(cast(a.givenBy as varchar(max)),char(10),''),char(13),''),'"','') as givenBy
,replace(replace(replace(cast(a.lotNumber as varchar(max)),char(10),''),char(13),''),'"','') as lotNumber
,replace(replace(replace(cast(a.Dose as varchar(max)),char(10),''),char(13),''),'"','') as Dose
,replace(replace(replace(cast(a.VaccineManufacturer as varchar(max)),char(10),''),char(13),''),'"','') as VaccineManufacturer
,replace(replace(replace(cast(a.dueDate as varchar(max)),char(10),''),char(13),''),'"','') as dueDate
,replace(replace(replace(cast(a.dateVISgiven as varchar(max)),char(10),''),char(13),''),'"','') as dateVISgiven
,replace(replace(replace(cast(a.DateonVIS as varchar(max)),char(10),''),char(13),''),'"','') as DateonVIS
,replace(replace(replace(cast(a.Notes as varchar(max)),char(10),''),char(13),''),'"','') as Notes
,replace(replace(replace(cast(a.deleteFlag as varchar(max)),char(10),''),char(13),''),'"','') as deleteFlag
,replace(replace(replace(cast(a.billable as varchar(max)),char(10),''),char(13),''),'"','') as billable
,replace(replace(replace(cast(a.ImmtracDispatchStatus as varchar(max)),char(10),''),char(13),''),'"','') as ImmtracDispatchStatus
,replace(replace(replace(cast(a.Selected as varchar(max)),char(10),''),char(13),''),'"','') as Selected
,replace(replace(replace(cast(a.HistoryFlag as varchar(max)),char(10),''),char(13),''),'"','') as HistoryFlag
,replace(replace(replace(cast(a.DoseNumber as varchar(max)),char(10),''),char(13),''),'"','') as DoseNumber
,replace(replace(replace(cast(a.Facility as varchar(max)),char(10),''),char(13),''),'"','') as Facility
,replace(replace(replace(cast(a.race_code as varchar(max)),char(10),''),char(13),''),'"','') as race_code
,replace(replace(replace(cast(a.contactId as varchar(max)),char(10),''),char(13),''),'"','') as contactId
,replace(replace(replace(cast(a.relation_code as varchar(max)),char(10),''),char(13),''),'"','') as relation_code
,replace(replace(replace(cast(a.glname as varchar(max)),char(10),''),char(13),''),'"','') as glname
,replace(replace(replace(cast(a.gfname as varchar(max)),char(10),''),char(13),''),'"','') as gfname
,replace(replace(replace(cast(a.gminitial as varchar(max)),char(10),''),char(13),''),'"','') as gminitial
,replace(replace(replace(cast(a.cptcvx as varchar(max)),char(10),''),char(13),''),'"','') as cptcvx
,replace(replace(replace(cast(a.vaccinename as varchar(max)),char(10),''),char(13),''),'"','') as vaccinename
,replace(replace(replace(cast(a.mvx_code as varchar(max)),char(10),''),char(13),''),'"','') as mvx_code
,replace(replace(replace(cast(a.cvx_code as varchar(max)),char(10),''),char(13),''),'"','') as cvx_code
,replace(replace(replace(cast(a.vfc_code as varchar(max)),char(10),''),char(13),''),'"','') as vfc_code
,replace(replace(replace(cast(a.encounterid as varchar(max)),char(10),''),char(13),''),'"','') as encounterid
,replace(replace(replace(cast(a.action as varchar(max)),char(10),''),char(13),''),'"','') as action
,replace(replace(replace(cast(a.lotId as varchar(max)),char(10),''),char(13),''),'"','') as lotId
,replace(replace(replace(cast(a.decDoses as varchar(max)),char(10),''),char(13),''),'"','') as decDoses
,replace(replace(replace(cast(a.Route as varchar(max)),char(10),''),char(13),''),'"','') as Route
,convert(varchar, cast(a.ExportedDate as datetime), 20) as ExportedDate
,replace(replace(replace(cast(a.medicaidno as varchar(max)),char(10),''),char(13),''),'"','') as medicaidno
,convert(varchar, cast(a.GivenTime as datetime), 20) as GivenTime
,replace(replace(replace(cast(a.ReadBy as varchar(max)),char(10),''),char(13),''),'"','') as ReadBy
,convert(varchar, cast(a.ReadDate as datetime), 20) as ReadDate
,replace(replace(replace(cast(a.MMInduration as varchar(max)),char(10),''),char(13),''),'"','') as MMInduration
,replace(replace(replace(cast(a.Impression as varchar(max)),char(10),''),char(13),''),'"','') as Impression
,replace(replace(replace(cast(a.GivenById as varchar(max)),char(10),''),char(13),''),'"','') as GivenById
,replace(replace(replace(cast(a.logBatchId as varchar(max)),char(10),''),char(13),''),'"','') as logBatchId
,replace(replace(replace(cast(a.logStatus as varchar(max)),char(10),''),char(13),''),'"','') as logStatus
,replace(replace(replace(cast(a.immsendstatus as varchar(max)),char(10),''),char(13),''),'"','') as immsendstatus
,replace(replace(replace(cast(a.immprocessed as varchar(max)),char(10),''),char(13),''),'"','') as immprocessed
,replace(replace(replace(cast(a.fromImmRegistry as varchar(max)),char(10),''),char(13),''),'"','') as fromImmRegistry
,replace(replace(replace(cast(a.immstatus as varchar(max)),char(10),''),char(13),''),'"','') as immstatus
,replace(replace(replace(cast(a.notAdminReasonCode as varchar(max)),char(10),''),char(13),''),'"','') as notAdminReasonCode
,replace(replace(replace(cast(a.notAdminotherReason as varchar(max)),char(10),''),char(13),''),'"','') as notAdminotherReason
,replace(replace(replace(cast(a.sourceOfHistory as varchar(max)),char(10),''),char(13),''),'"','') as sourceOfHistory
,replace(replace(replace(cast(a.docfacilityId as varchar(max)),char(10),''),char(13),''),'"','') as docfacilityId
,replace(replace(replace(cast(a.counselling as varchar(max)),char(10),''),char(13),''),'"','') as counselling


from immunizations a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
