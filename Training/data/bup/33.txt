
select
replace(replace(replace(cast(a.reportId as varchar(max)),char(10),''),char(13),''),'"','') as reportId
,convert(varchar, cast(a.HL7ResultDate as datetime), 20) as HL7ResultDate
,convert(varchar, cast(a.HL7ResultTime as datetime), 20) as HL7ResultTime
,replace(replace(replace(cast(a.urllink as varchar(max)),char(10),''),char(13),''),'"','') as urllink
,replace(replace(replace(cast(a.interfacestatus as varchar(max)),char(10),''),char(13),''),'"','') as interfacestatus
,replace(replace(replace(cast(a.processedresult as varchar(max)),char(10),''),char(13),''),'"','') as processedresult
,replace(replace(replace(cast(a.VisitType as varchar(max)),char(10),''),char(13),''),'"','') as VisitType
,convert(varchar, cast(a.DateReceived as datetime), 20) as DateReceived
,convert(varchar, cast(a.resultrcvddatetime as datetime), 20) as resultrcvddatetime
,replace(replace(replace(cast(a.MigrateFlag as varchar(max)),char(10),''),char(13),''),'"','') as MigrateFlag
,replace(replace(replace(cast(a.SentOutReqNo as varchar(max)),char(10),''),char(13),''),'"','') as SentOutReqNo
,replace(replace(replace(cast(a.facilityId as varchar(max)),char(10),''),char(13),''),'"','') as facilityId
,convert(varchar, cast(a.specimenReceiveTime as datetime), 20) as specimenReceiveTime
,convert(varchar, cast(a.specimenReceiveDate as datetime), 20) as specimenReceiveDate
,replace(replace(replace(cast(a.isPACSLinkEnabled as varchar(max)),char(10),''),char(13),''),'"','') as isPACSLinkEnabled
,convert(varchar, cast(a.observationDate as datetime), 20) as observationDate
,convert(varchar, cast(a.observationTime as datetime), 20) as observationTime
,replace(replace(replace(cast(a.SpecimenActionCode as varchar(max)),char(10),''),char(13),''),'"','') as SpecimenActionCode
,replace(replace(replace(cast(a.PlacerGroupNumberID as varchar(max)),char(10),''),char(13),''),'"','') as PlacerGroupNumberID
,replace(replace(replace(cast(a.PatientAltRace as varchar(max)),char(10),''),char(13),''),'"','') as PatientAltRace
,replace(replace(replace(cast(a.bodysitecode as varchar(max)),char(10),''),char(13),''),'"','') as bodysitecode
,replace(replace(replace(cast(a.ABNPrompted as varchar(max)),char(10),''),char(13),''),'"','') as ABNPrompted
,replace(replace(replace(cast(a.ABNOption as varchar(max)),char(10),''),char(13),''),'"','') as ABNOption


from labdataex a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
