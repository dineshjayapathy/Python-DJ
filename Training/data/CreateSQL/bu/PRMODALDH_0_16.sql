
create table edi_facilities

	(
	Id varchar(255) not null
	,FacilityType varchar(255) not null
	,Name varchar(255) not null
	,AddressLine1 varchar(255) not null
	,AddressLine2 varchar(255) not null
	,City varchar(255) not null
	,State varchar(255) not null
	,Zip varchar(255) not null
	,Tel varchar(255) not null
	,Fax varchar(255) not null
	,EMail varchar(255) not null
	,BillingAddressLine1 varchar(255) not null
	,BillingAddressLine2 varchar(255) not null
	,BillingCity varchar(255) not null
	,BillingState varchar(255) not null
	,BillingZip varchar(255) not null
	,BillingTel varchar(255) not null
	,BillingFax varchar(255) not null
	,BillingEMail varchar(255) not null
	,PracticeType varchar(255) not null
	,PracticeOption varchar(255) not null
	,PayableTo varchar(255) not null
	,BankAccount varchar(255) not null
	,FederalTaxID varchar(255) not null
	,Notes varchar(255) not null
	,PrimaryFacility varchar(255) not null
	,CliaId varchar(255) not null
	,code varchar(255) not null
	,POS varchar(255) not null
	,MammoCertId varchar(255) not null
	,HPSAFlag varchar(255) not null
	,HPSAModifier varchar(255) not null
	,DeleteFlag varchar(255) not null
	,vmid varchar(255) not null
	,hl7id varchar(255) not null
	,Color varchar(255) null
	,FeeSchedule varchar(255) not null
	,FacilityIdType varchar(255) not null
	,PtStmtFacOption varchar(255) not null
	,PtStmtFacId varchar(255) not null
	,RestrictPrintAppts varchar(255) null
	,NPI varchar(255) not null
	,ImmStateId varchar(255) not null
	,TaxonomyCode varchar(255) not null
	,RestrictPrintStmts varchar(255) not null
	,startedOn varchar(255) null
	,RevenueCode varchar(255) null
	,Percent varchar(255) not null
	,OverrideSalesTax varchar(255) not null
	,MerchantID varchar(255) not null
	,ImmLocationId varchar(255) not null
	,TimeZoneCode varchar(255) null
	,MessCallerId varchar(255) null
	,MessOperNum varchar(255) null
	,CreditCardOption varchar(255) not null
	,CountryCode varchar(255) not null
	,BillingCountryCode varchar(255) not null
	,Immfacid varchar(255) null
	,BillType varchar(255) not null
	,takeNewPortalAppts varchar(255) null
	,portal_name varchar(255) null
	,takenewportalmsg varchar(255) null
	,showinpi varchar(255) null
	,modifiedDate varchar(255) not null
	,nsexclude varchar(255) not null
	,facilitysmsname varchar(255) not null
	,birthdayexclude varchar(255) not null
	,ASC_TN_FacilityType varchar(255) null
	,ASC_TN_FacilityId varchar(255) null
	,facilitynickname varchar(255) null
	,exclude varchar(255) not null
	,labexclude varchar(255) not null
	,ASC_WI_FacilityType varchar(255) null
	,rxexclude varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_edi_facilities] primary key ([Id])

	)

------------------------------
