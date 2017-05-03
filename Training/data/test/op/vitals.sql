
select
replace(replace(replace(cast(a.uid as varchar(max)),char(10),''),char(13),''),'"','') as uid
,replace(replace(replace(cast(a.uname as varchar(max)),char(10),''),char(13),''),'"','') as uname
,replace(replace(replace(cast(a.upwd as varchar(max)),char(10),''),char(13),''),'"','') as upwd
,replace(replace(replace(cast(a.udesc as varchar(max)),char(10),''),char(13),''),'"','') as udesc
,replace(replace(replace(cast(a.uroomno as varchar(max)),char(10),''),char(13),''),'"','') as uroomno
,replace(replace(replace(cast(a.umobileno as varchar(max)),char(10),''),char(13),''),'"','') as umobileno
,replace(replace(replace(cast(a.upagerno as varchar(max)),char(10),''),char(13),''),'"','') as upagerno
,replace(replace(replace(cast(a.ufname as varchar(max)),char(10),''),char(13),''),'"','') as ufname
,replace(replace(replace(cast(a.uminitial as varchar(max)),char(10),''),char(13),''),'"','') as uminitial
,replace(replace(replace(cast(a.ulname as varchar(max)),char(10),''),char(13),''),'"','') as ulname
,replace(replace(replace(cast(a.uemail as varchar(max)),char(10),''),char(13),''),'"','') as uemail
,replace(replace(replace(cast(a.uwebpage as varchar(max)),char(10),''),char(13),''),'"','') as uwebpage
,replace(replace(replace(cast(a.upaddress as varchar(max)),char(10),''),char(13),''),'"','') as upaddress
,replace(replace(replace(cast(a.upcity as varchar(max)),char(10),''),char(13),''),'"','') as upcity
,replace(replace(replace(cast(a.upstate as varchar(max)),char(10),''),char(13),''),'"','') as upstate
,replace(replace(replace(cast(a.upPhone as varchar(max)),char(10),''),char(13),''),'"','') as upPhone
,replace(replace(replace(cast(a.UserType as varchar(max)),char(10),''),char(13),''),'"','') as UserType
,replace(replace(replace(cast(a.zipcode as varchar(max)),char(10),''),char(13),''),'"','') as zipcode
,replace(replace(replace(cast(a.dob as varchar(max)),char(10),''),char(13),''),'"','') as dob
,replace(replace(replace(cast(a.ssn as varchar(max)),char(10),''),char(13),''),'"','') as ssn
,replace(replace(replace(cast(a.mflag as varchar(max)),char(10),''),char(13),''),'"','') as mflag
,replace(replace(replace(cast(a.updid as varchar(max)),char(10),''),char(13),''),'"','') as updid
,convert(varchar, cast(a.cdate as datetime), 20) as cdate
,convert(varchar, cast(a.mdate as datetime), 20) as mdate
,replace(replace(replace(cast(a.sex as varchar(max)),char(10),''),char(13),''),'"','') as sex
,replace(replace(replace(cast(a.upaddress2 as varchar(max)),char(10),''),char(13),''),'"','') as upaddress2
,replace(replace(replace(cast(a.suffix as varchar(max)),char(10),''),char(13),''),'"','') as suffix
,replace(replace(replace(cast(a.prefix as varchar(max)),char(10),''),char(13),''),'"','') as prefix
,replace(replace(replace(cast(a.initials as varchar(max)),char(10),''),char(13),''),'"','') as initials
,convert(varchar, cast(a.ptDob as datetime), 20) as ptDob
,replace(replace(replace(cast(a.delFlag as varchar(max)),char(10),''),char(13),''),'"','') as delFlag
,replace(replace(replace(cast(a.vmid as varchar(max)),char(10),''),char(13),''),'"','') as vmid
,replace(replace(replace(cast(a.status as varchar(max)),char(10),''),char(13),''),'"','') as status
,replace(replace(replace(cast(a.webenabled as varchar(max)),char(10),''),char(13),''),'"','') as webenabled
,replace(replace(replace(cast(a.websync as varchar(max)),char(10),''),char(13),''),'"','') as websync
,replace(replace(replace(cast(a.changePass as varchar(max)),char(10),''),char(13),''),'"','') as changePass
,replace(replace(replace(cast(a.primaryservicelocation as varchar(max)),char(10),''),char(13),''),'"','') as primaryservicelocation
,replace(replace(replace(cast(a.upreviousname as varchar(max)),char(10),''),char(13),''),'"','') as upreviousname
,replace(replace(replace(cast(a.IsResource as varchar(max)),char(10),''),char(13),''),'"','') as IsResource
,replace(replace(replace(cast(a.EligibilityStatus as varchar(max)),char(10),''),char(13),''),'"','') as EligibilityStatus
,replace(replace(replace(cast(a.OSUUserType as varchar(max)),char(10),''),char(13),''),'"','') as OSUUserType
,replace(replace(replace(cast(a.DefApptProvForResource as varchar(max)),char(10),''),char(13),''),'"','') as DefApptProvForResource
,replace(replace(replace(cast(a.locked as varchar(max)),char(10),''),char(13),''),'"','') as locked
,replace(replace(replace(cast(a.EncEligibilityStatus2 as varchar(max)),char(10),''),char(13),''),'"','') as EncEligibilityStatus2
,replace(replace(replace(cast(a.EligibilityMessage2 as varchar(max)),char(10),''),char(13),''),'"','') as EligibilityMessage2
,replace(replace(replace(cast(a.EncEligibilityStatus3 as varchar(max)),char(10),''),char(13),''),'"','') as EncEligibilityStatus3
,replace(replace(replace(cast(a.EligibilityMessage3 as varchar(max)),char(10),''),char(13),''),'"','') as EligibilityMessage3
,replace(replace(replace(cast(a.EncEligibilityStatus as varchar(max)),char(10),''),char(13),''),'"','') as EncEligibilityStatus
,replace(replace(replace(cast(a.EligibilityMessage as varchar(max)),char(10),''),char(13),''),'"','') as EligibilityMessage
,replace(replace(replace(cast(a.AllFacilities as varchar(max)),char(10),''),char(13),''),'"','') as AllFacilities
,replace(replace(replace(cast(a.Emrsex as varchar(max)),char(10),''),char(13),''),'"','') as Emrsex
,replace(replace(replace(cast(a.CountryCode as varchar(max)),char(10),''),char(13),''),'"','') as CountryCode
,replace(replace(replace(cast(a.transgender as varchar(max)),char(10),''),char(13),''),'"','') as transgender
,replace(replace(replace(cast(a.EnterpriseId as varchar(max)),char(10),''),char(13),''),'"','') as EnterpriseId
,replace(replace(replace(cast(a.gestationalAge as varchar(max)),char(10),''),char(13),''),'"','') as gestationalAge
,convert(varchar, cast(a.timeofbirth as datetime), 20) as timeofbirth
,replace(replace(replace(cast(a.LANGUAGE as varchar(max)),char(10),''),char(13),''),'"','') as LANGUAGE
,replace(replace(replace(cast(a.county as varchar(max)),char(10),''),char(13),''),'"','') as county
,replace(replace(replace(cast(a.isCredentialed as varchar(max)),char(10),''),char(13),''),'"','') as isCredentialed
,replace(replace(replace(cast(a.EncEligibilityStatus4 as varchar(max)),char(10),''),char(13),''),'"','') as EncEligibilityStatus4
,replace(replace(replace(cast(a.EligibilityMessage4 as varchar(max)),char(10),''),char(13),''),'"','') as EligibilityMessage4
,replace(replace(replace(cast(a.ACOUserType as varchar(max)),char(10),''),char(13),''),'"','') as ACOUserType
,replace(replace(replace(cast(a.credentialschange as varchar(max)),char(10),''),char(13),''),'"','') as credentialschange


from users a

where a.createddate >= ?Lower_Bound?
and coalesce(a.modifieddate,a.createddate) <= ?Upper_Bound?

~OtherParam~

-----------------------------------------------------------------------
