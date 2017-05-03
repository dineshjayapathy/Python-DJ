
create table items

	(
	itemID varchar(255) not null
	,itemName varchar(255) not null
	,itemDesc varchar(255) not null
	,parentID varchar(255) not null
	,xmlPath varchar(255) not null
	,xslPath varchar(255) not null
	,itemType varchar(255) null
	,supplierId varchar(255) not null
	,price varchar(255) not null
	,discount varchar(255) not null
	,specialPrice varchar(255) not null
	,startDate varchar(255) not null
	,endDate varchar(255) not null
	,createdDate varchar(255) not null
	,modifiedDate varchar(255) not null
	,viewType varchar(255) not null
	,displayIndex varchar(255) null
	,deleteFlag varchar(255) not null
	,vmid varchar(255) not null
	,keyName varchar(255) not null
	,gender varchar(255) not null
	,overdue varchar(255) not null
	,inactive varchar(255) null
	,DrugNameId varchar(255) not null
	,showPathologyDetail varchar(255) not null
	,vmsgexclude varchar(255) not null
	,arc_insert_timestamp datetime 
	,arc_orig_filename varchar(255) 
	,arc_config_version varchar(255) 
	constraint [pk_items] primary key ([itemID])

	)

------------------------------
