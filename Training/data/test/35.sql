
select
replace(replace(replace(cast(a.LOINC_NUM as varchar(max)),char(10),''),char(13),''),'"','') as LOINC_NUM
,replace(replace(replace(cast(a.COMPONENT as varchar(max)),char(10),''),char(13),''),'"','') as COMPONENT
,replace(replace(replace(cast(a.PROPERTY as varchar(max)),char(10),''),char(13),''),'"','') as PROPERTY
,replace(replace(replace(cast(a.TIME_ASPCT as varchar(max)),char(10),''),char(13),''),'"','') as TIME_ASPCT
,replace(replace(replace(cast(a.SYSTEM as varchar(max)),char(10),''),char(13),''),'"','') as SYSTEM
,replace(replace(replace(cast(a.SCALE_TYP as varchar(max)),char(10),''),char(13),''),'"','') as SCALE_TYP
,replace(replace(replace(cast(a.METHOD_TYP as varchar(max)),char(10),''),char(13),''),'"','') as METHOD_TYP
,replace(replace(replace(cast(a.RELAT_NMS as varchar(max)),char(10),''),char(13),''),'"','') as RELAT_NMS
,replace(replace(replace(cast(a.CLASS as varchar(max)),char(10),''),char(13),''),'"','') as CLASS
,replace(replace(replace(cast(a.SOURCE as varchar(max)),char(10),''),char(13),''),'"','') as SOURCE
,replace(replace(replace(cast(a.DT_LAST_CH as varchar(max)),char(10),''),char(13),''),'"','') as DT_LAST_CH
,replace(replace(replace(cast(a.CHNG_TYPE as varchar(max)),char(10),''),char(13),''),'"','') as CHNG_TYPE
,replace(replace(replace(cast(a.COMMENTS as varchar(max)),char(10),''),char(13),''),'"','') as COMMENTS
,replace(replace(replace(cast(a.ANSWERLIST as varchar(max)),char(10),''),char(13),''),'"','') as ANSWERLIST
,replace(replace(replace(cast(a.STATUS as varchar(max)),char(10),''),char(13),''),'"','') as STATUS
,replace(replace(replace(cast(a.MAP_TO as varchar(max)),char(10),''),char(13),''),'"','') as MAP_TO
,replace(replace(replace(cast(a.SCOPE as varchar(max)),char(10),''),char(13),''),'"','') as SCOPE
,replace(replace(replace(cast(a.CONSUMER_NAME as varchar(max)),char(10),''),char(13),''),'"','') as CONSUMER_NAME
,replace(replace(replace(cast(a.IPCC_UNITS as varchar(max)),char(10),''),char(13),''),'"','') as IPCC_UNITS
,replace(replace(replace(cast(a.REFERENCE as varchar(max)),char(10),''),char(13),''),'"','') as REFERENCE
,replace(replace(replace(cast(a.EXACT_CMP_SY as varchar(max)),char(10),''),char(13),''),'"','') as EXACT_CMP_SY
,replace(replace(replace(cast(a.MOLAR_MASS as varchar(max)),char(10),''),char(13),''),'"','') as MOLAR_MASS
,replace(replace(replace(cast(a.CLASSTYPE as varchar(max)),char(10),''),char(13),''),'"','') as CLASSTYPE
,replace(replace(replace(cast(a.FORMULA as varchar(max)),char(10),''),char(13),''),'"','') as FORMULA
,replace(replace(replace(cast(a.SPECIES as varchar(max)),char(10),''),char(13),''),'"','') as SPECIES
,replace(replace(replace(cast(a.EXMPL_ANSWERS as varchar(max)),char(10),''),char(13),''),'"','') as EXMPL_ANSWERS
,replace(replace(replace(cast(a.ACSSYM as varchar(max)),char(10),''),char(13),''),'"','') as ACSSYM
,replace(replace(replace(cast(a.BASE_NAME as varchar(max)),char(10),''),char(13),''),'"','') as BASE_NAME
,replace(replace(replace(cast(a.FINAL as varchar(max)),char(10),''),char(13),''),'"','') as FINAL
,replace(replace(replace(cast(a.NAACCR_ID as varchar(max)),char(10),''),char(13),''),'"','') as NAACCR_ID
,replace(replace(replace(cast(a.CODE_TABLE as varchar(max)),char(10),''),char(13),''),'"','') as CODE_TABLE
,replace(replace(replace(cast(a.SETROOT as varchar(max)),char(10),''),char(13),''),'"','') as SETROOT
,replace(replace(replace(cast(a.PanelElements as varchar(max)),char(10),''),char(13),''),'"','') as PanelElements
,replace(replace(replace(cast(a.SURVEY_QUEST_TEXT as varchar(max)),char(10),''),char(13),''),'"','') as SURVEY_QUEST_TEXT
,replace(replace(replace(cast(a.SURVEY_QUEST_SRC as varchar(max)),char(10),''),char(13),''),'"','') as SURVEY_QUEST_SRC
,replace(replace(replace(cast(a.UnitsRequired as varchar(max)),char(10),''),char(13),''),'"','') as UnitsRequired
,replace(replace(replace(cast(a.SUBMITTED_UNITS as varchar(max)),char(10),''),char(13),''),'"','') as SUBMITTED_UNITS
,replace(replace(replace(cast(a.RelatedNames2 as varchar(max)),char(10),''),char(13),''),'"','') as RelatedNames2
,replace(replace(replace(cast(a.SHORTNAME as varchar(max)),char(10),''),char(13),''),'"','') as SHORTNAME
,replace(replace(replace(cast(a.ORDER_OBS as varchar(max)),char(10),''),char(13),''),'"','') as ORDER_OBS
,replace(replace(replace(cast(a.CDISC_COMMON_TESTS as varchar(max)),char(10),''),char(13),''),'"','') as CDISC_COMMON_TESTS
,replace(replace(replace(cast(a.HL7_FIELD_SUBFIELD_ID as varchar(max)),char(10),''),char(13),''),'"','') as HL7_FIELD_SUBFIELD_ID
,replace(replace(replace(cast(a.EXTERNAL_COPYRIGHT_NOTICE as varchar(max)),char(10),''),char(13),''),'"','') as EXTERNAL_COPYRIGHT_NOTICE
,replace(replace(replace(cast(a.UpdatedBy as varchar(max)),char(10),''),char(13),''),'"','') as UpdatedBy
,convert(varchar, cast(a.UpdatedTime as datetime), 20) as UpdatedTime
,replace(replace(replace(cast(a.deleteflag as varchar(max)),char(10),''),char(13),''),'"','') as deleteflag
,replace(replace(replace(cast(a.EXAMPLE_UNITS as varchar(max)),char(10),''),char(13),''),'"','') as EXAMPLE_UNITS
,replace(replace(replace(cast(a.INPC_PERCENTAGE as varchar(max)),char(10),''),char(13),''),'"','') as INPC_PERCENTAGE
,replace(replace(replace(cast(a.LONG_COMMON_NAME as varchar(max)),char(10),''),char(13),''),'"','') as LONG_COMMON_NAME
,replace(replace(replace(cast(a.HL7_V2_DATATYPE as varchar(max)),char(10),''),char(13),''),'"','') as HL7_V2_DATATYPE
,replace(replace(replace(cast(a.HL7_V3_DATATYPE as varchar(max)),char(10),''),char(13),''),'"','') as HL7_V3_DATATYPE
,replace(replace(replace(cast(a.CURATED_RANGE_AND_UNITS as varchar(max)),char(10),''),char(13),''),'"','') as CURATED_RANGE_AND_UNITS
,replace(replace(replace(cast(a.DOCUMENT_SECTION as varchar(max)),char(10),''),char(13),''),'"','') as DOCUMENT_SECTION
,replace(replace(replace(cast(a.DEFINITION_DESCRIPTION_HELP as varchar(max)),char(10),''),char(13),''),'"','') as DEFINITION_DESCRIPTION_HELP
,replace(replace(replace(cast(a.EXAMPLE_UCUM_UNITS as varchar(max)),char(10),''),char(13),''),'"','') as EXAMPLE_UCUM_UNITS
,replace(replace(replace(cast(a.EXAMPLE_SI_UCUM_UNITS as varchar(max)),char(10),''),char(13),''),'"','') as EXAMPLE_SI_UCUM_UNITS
,replace(replace(replace(cast(a.STATUS_REASON as varchar(max)),char(10),''),char(13),''),'"','') as STATUS_REASON
,replace(replace(replace(cast(a.STATUS_TEXT as varchar(max)),char(10),''),char(13),''),'"','') as STATUS_TEXT


from loincmaster a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
