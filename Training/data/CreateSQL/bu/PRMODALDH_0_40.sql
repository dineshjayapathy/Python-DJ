
create table loincmaster

	(
	LOINC_NUM varchar(255) not null
	,COMPONENT varchar(255) null
	,PROPERTY varchar(255) null
	,TIME_ASPCT varchar(255) null
	,SYSTEM varchar(255) null
	,SCALE_TYP varchar(255) null
	,METHOD_TYP varchar(255) null
	,RELAT_NMS varchar(255) null
	,CLASS varchar(255) null
	,SOURCE varchar(255) null
	,DT_LAST_CH varchar(255) null
	,CHNG_TYPE varchar(255) null
	,COMMENTS varchar(255) null
	,ANSWERLIST varchar(255) null
	,STATUS varchar(255) null
	,MAP_TO varchar(255) null
	,SCOPE varchar(255) null
	,CONSUMER_NAME varchar(255) null
	,IPCC_UNITS varchar(255) null
	,REFERENCE varchar(255) null
	,EXACT_CMP_SY varchar(255) null
	,MOLAR_MASS varchar(255) null
	,CLASSTYPE varchar(255) null
	,FORMULA varchar(255) null
	,SPECIES varchar(255) null
	,EXMPL_ANSWERS varchar(255) null
	,ACSSYM varchar(255) null
	,BASE_NAME varchar(255) null
	,FINAL varchar(255) null
	,NAACCR_ID varchar(255) null
	,CODE_TABLE varchar(255) null
	,SETROOT varchar(255) null
	,PanelElements varchar(255) null
	,SURVEY_QUEST_TEXT varchar(255) null
	,SURVEY_QUEST_SRC varchar(255) null
	,UnitsRequired varchar(255) null
	,SUBMITTED_UNITS varchar(255) null
	,RelatedNames2 varchar(255) null
	,SHORTNAME varchar(255) null
	,ORDER_OBS varchar(255) null
	,CDISC_COMMON_TESTS varchar(255) null
	,HL7_FIELD_SUBFIELD_ID varchar(255) null
	,EXTERNAL_COPYRIGHT_NOTICE varchar(255) null
	,UpdatedBy varchar(255) not null
	,UpdatedTime varchar(255) not null
	,deleteflag varchar(255) not null
	,EXAMPLE_UNITS varchar(255) null
	,INPC_PERCENTAGE varchar(255) null
	,LONG_COMMON_NAME varchar(255) null
	,HL7_V2_DATATYPE varchar(255) null
	,HL7_V3_DATATYPE varchar(255) null
	,CURATED_RANGE_AND_UNITS varchar(255) null
	,DOCUMENT_SECTION varchar(255) null
	,DEFINITION_DESCRIPTION_HELP varchar(255) null
	,EXAMPLE_UCUM_UNITS varchar(255) null
	,EXAMPLE_SI_UCUM_UNITS varchar(255) null
	,STATUS_REASON varchar(255) null
	,STATUS_TEXT varchar(255) null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_loincmaster] primary key ([LOINC_NUM])

	)

------------------------------
