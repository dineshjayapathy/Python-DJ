
create table insurance

	(
	insId varchar(255) not null
	,insuranceName varchar(255) null
	,insurancephone varchar(255) null
	,insurancefax varchar(255) null
	,insuranceemail varchar(255) null
	,insuranceaddress varchar(255) null
	,insuranceaddress2 varchar(255) not null
	,insurancecity varchar(255) null
	,insurancestate varchar(255) null
	,insurancezip varchar(255) null
	,PayorId varchar(255) not null
	,ClaimOfficeNumber varchar(255) not null
	,ClaimOfficeNumberType varchar(255) not null
	,MedigapID varchar(255) not null
	,carrierCode varchar(255) not null
	,ProviderIdRef varchar(255) not null
	,TestProdIndicator varchar(255) not null
	,ANSI varchar(255) null
	,SendSVT varchar(255) null
	,SendDecimalUnit varchar(255) null
	,PaymentSrc varchar(255) not null
	,capitationplan varchar(255) not null
	,capitationpayment varchar(255) not null
	,deleteFlag varchar(255) not null
	,vmid varchar(255) not null
	,labcorpid varchar(255) null
	,website varchar(255) not null
	,Send2310EAlways varchar(255) not null
	,ClaimSubmitType varchar(255) not null
	,ERAPayorId varchar(255) not null
	,Inactive varchar(255) not null
	,AllCodesCapitated varchar(255) not null
	,SelCodesCapitated varchar(255) not null
	,ReqOrdPrInfo varchar(255) not null
	,sendDupSubNoForPat varchar(255) null
	,prodDateAsCheckDate varchar(255) null
	,ReqUPINInEA021 varchar(255) not null
	,hl7id1 varchar(255) null
	,hl7id2 varchar(255) null
	,insuranceclass varchar(255) null
	,InsTypeMedicare varchar(255) not null
	,InsTypeOthers varchar(255) not null
	,FeeSchedId varchar(255) null
	,SecClaimsElectronic varchar(255) not null
	,PrAssignInd varchar(255) not null
	,Notes varchar(255) null
	,Box31Format varchar(255) not null
	,Box17ProviderType varchar(255) not null
	,Box17ProviderIdType varchar(255) not null
	,Box17ProviderRuleEnabled varchar(255) not null
	,SendInsPinForSupr varchar(255) not null
	,insurancephone2 varchar(255) null
	,InsuranceType varchar(255) null
	,ClaimType varchar(255) not null
	,Box31Line2Format varchar(255) not null
	,sendSubDemAlways varchar(255) not null
	,SplitClaimOnICD varchar(255) not null
	,EnableReferralNumber varchar(255) not null
	,DoNotPrintHcfa29 varchar(255) not null
	,DoNotPrintHcfa30 varchar(255) not null
	,Box17ProviderIdTypeMap varchar(255) not null
	,McaidNYPlanCode varchar(255) not null
	,PrintHcfa22 varchar(255) not null
	,EnableSympDate varchar(255) not null
	,EnableSimilarSympDate varchar(255) not null
	,SupressFacAddrForPOS11Enic varchar(255) not null
	,UseNpi varchar(255) not null
	,UseLegacy varchar(255) null
	,x270payorId varchar(255) not null
	,UseGroupNoForEligibility varchar(255) not null
	,CalculateAllowed varchar(255) not null
	,SupressFacAddrForPOS11Paper varchar(255) not null
	,x270LegacyNPI varchar(255) not null
	,FirstLinePost varchar(255) not null
	,SubscriberMask varchar(255) not null
	,subscriberLength varchar(255) not null
	,CO42MapCode varchar(255) not null
	,PrintEPSDTReferralCodeInHcfa24C varchar(255) not null
	,SendStrictDOS varchar(255) not null
	,UseFacilityPrvForRendProv varchar(255) not null
	,sendP2ProvPrvAlways varchar(255) not null
	,RequiredReferral varchar(255) not null
	,FPStringMandatory varchar(255) not null
	,SubNoMaxLen varchar(255) not null
	,SubNoMinLen varchar(255) not null
	,SendOTAFSeg varchar(255) not null
	,HCFA_Box19 varchar(255) not null
	,SendGrpNoin2310B varchar(255) not null
	,Send2420CAlways varchar(255) not null
	,Send2420CIf2310DOmited varchar(255) not null
	,UseLegacyForPrint varchar(255) not null
	,InsuranceAlert varchar(255) null
	,UseNPIForPrint varchar(255) not null
	,FeeSchedulesByLocation varchar(255) not null
	,InsurancePrimaryType varchar(255) null
	,ExcludeInPtStmts varchar(255) null
	,UseExtendedPrvOption varchar(255) not null
	,Send2000APrv varchar(255) not null
	,Send2310BPrv varchar(255) not null
	,Send2420APrv varchar(255) not null
	,SuppressRefProvUPIN varchar(255) not null
	,SuppressTaxIdInLoop2310A varchar(255) not null
	,SuppressTaxIdInLoop2310B varchar(255) not null
	,SuppressTaxIdInLoop2420A varchar(255) not null
	,SuppressTaxIdInLoop2310DAnd2420C varchar(255) not null
	,SubmitPtPmts varchar(255) not null
	,SuppressPrvInLoop2310A varchar(255) not null
	,SuppressRendProvUPIN varchar(255) not null
	,SuppressSuperProvUPIN varchar(255) not null
	,SuppressOrderProvUPIN varchar(255) not null
	,SuppressPurchasedProvUPIN varchar(255) not null
	,SuppressServiceFacilityUPIN varchar(255) not null
	,SuppressTaxIdInLoop2310C varchar(255) not null
	,SuppressTaxIdInLoop2310E varchar(255) not null
	,SuppressTaxIdInLoop2420E varchar(255) not null
	,X270SendTrnAlways varchar(255) not null
	,X270CustomMapLegacy varchar(255) not null
	,SendOtafInPrimary varchar(255) not null
	,x270SendEbDateRange varchar(255) not null
	,x270SendPrv varchar(255) not null
	,x270SendEbAddlInfo varchar(255) not null
	,BestMatchCpt varchar(255) not null
	,DoNotAddSalesTax varchar(255) not null
	,enrollmentReq varchar(255) not null
	,CountryCode varchar(255) not null
	,NDCFormat varchar(255) null
	,X270SendDoi varchar(255) not null
	,X270SendDosAsDoi varchar(255) not null
	,SendHyphenInTaxId varchar(255) not null
	,IsAnesthesiaMinutesInHCFA varchar(255) not null
	,PrimaryTimelyFiling varchar(255) not null
	,SecondaryTimelyFiling varchar(255) not null
	,IsServiceLocationAddressinLoop2010AA varchar(255) not null
	,NoPrimaryOtafIn2400 varchar(255) not null
	,StripLeadingZeroFromMoney varchar(255) not null
	,SendMedicalRecordNumber varchar(255) not null
	,x270SendGroupNo varchar(255) not null
	,x270SendRelationShip varchar(255) not null
	,x270SendSSN varchar(255) not null
	,x270SendInsuredN4 varchar(255) not null
	,StripTrailingZerosFromMoney varchar(255) not null
	,insuranceNameANSI varchar(255) not null
	,HPSAQualify varchar(255) not null
	,PrintEPSDTDataInHcfa10d varchar(255) not null
	,ConsiderToothNumberAsModifier varchar(255) not null
	,DoNotAddFinanceChrg varchar(255) not null
	,CapitationType varchar(255) null
	,LiabilityCarrierCode varchar(255) not null
	,ecwMasterId varchar(255) not null
	,EnterpriseId varchar(255) not null
	,DoNotChangeClmAssgnmntAfterCapAdj varchar(255) not null
	,modifiedDate varchar(255) not null
	,AdditionalMask varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_insurance] primary key ([insId])

	)

------------------------------
