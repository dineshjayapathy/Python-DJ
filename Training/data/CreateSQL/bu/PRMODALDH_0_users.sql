
create table users

	(
	uid varchar(255) not null
	,uname varchar(255) not null
	,upwd varchar(255) null
	,udesc varchar(255) null
	,uroomno varchar(255) not null
	,umobileno varchar(255) not null
	,upagerno varchar(255) not null
	,ufname varchar(255) null
	,uminitial varchar(255) null
	,ulname varchar(255) null
	,uemail varchar(255) null
	,uwebpage varchar(255) null
	,upaddress varchar(255) null
	,upcity varchar(255) not null
	,upstate varchar(255) null
	,upPhone varchar(255) null
	,UserType varchar(255) null
	,zipcode varchar(255) null
	,dob varchar(255) null
	,ssn varchar(255) null
	,mflag varchar(255) null
	,updid varchar(255) null
	,cdate varchar(255) null
	,mdate varchar(255) not null
	,sex varchar(255) null
	,upaddress2 varchar(255) null
	,suffix varchar(255) null
	,prefix varchar(255) null
	,initials varchar(255) not null
	,ptDob varchar(255) not null
	,delFlag varchar(255) not null
	,vmid varchar(255) not null
	,status varchar(255) null
	,webenabled varchar(255) null
	,websync varchar(255) null
	,changePass varchar(255) null
	,primaryservicelocation varchar(255) not null
	,upreviousname varchar(255) null
	,IsResource varchar(255) not null
	,EligibilityStatus varchar(255) not null
	,OSUUserType varchar(255) not null
	,DefApptProvForResource varchar(255) not null
	,locked varchar(255) null
	,EncEligibilityStatus2 varchar(255) not null
	,EligibilityMessage2 varchar(255) not null
	,EncEligibilityStatus3 varchar(255) not null
	,EligibilityMessage3 varchar(255) not null
	,EncEligibilityStatus varchar(255) not null
	,EligibilityMessage varchar(255) not null
	,AllFacilities varchar(255) not null
	,Emrsex varchar(255) not null
	,CountryCode varchar(255) not null
	,transgender varchar(255) not null
	,EnterpriseId varchar(255) not null
	,gestationalAge varchar(255) not null
	,timeofbirth varchar(255) null
	,LANGUAGE varchar(255) not null
	,county varchar(255) not null
	,isCredentialed varchar(255) null
	,EncEligibilityStatus4 varchar(255) not null
	,EligibilityMessage4 varchar(255) not null
	,ACOUserType varchar(255) not null
	,credentialschange varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_users] primary key ([uid])

	)

------------------------------
