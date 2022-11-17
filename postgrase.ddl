
DROP DOMAIN IF EXISTS  "Udt"."Address";

DROP DOMAIN IF EXISTS  "Udt"."CategoryName";

DROP DOMAIN IF EXISTS  "Udt"."City";

DROP DOMAIN IF EXISTS  "ClassTime";

DROP DOMAIN IF EXISTS  "Udt"."CompanyName";

DROP DOMAIN IF EXISTS  "Udt"."ContactName";

DROP DOMAIN IF EXISTS  "Udt"."ContactTitle";

DROP DOMAIN IF EXISTS  "Udt"."Country";

DROP DOMAIN IF EXISTS  "Udt"."Currency";

DROP DOMAIN IF EXISTS  "myudt"."DateAdded";

DROP DOMAIN IF EXISTS  "DateOfLastUpdate";

DROP DOMAIN IF EXISTS  "Udt"."DateYYYYMMDD";

DROP DOMAIN IF EXISTS  "myudt"."dBlob";

DROP DOMAIN IF EXISTS  "myudt"."dDateTime";

DROP DOMAIN IF EXISTS  "Udt"."Description";

DROP DOMAIN IF EXISTS  "myudt"."dNumber";

DROP DOMAIN IF EXISTS  "myudt"."dString";

DROP DOMAIN IF EXISTS  "FaxNumber";

DROP DOMAIN IF EXISTS  "Udt"."FirstName";

DROP DOMAIN IF EXISTS  "Udt"."FlagBit";

DROP DOMAIN IF EXISTS  "Udt"."FlagChar";

DROP DOMAIN IF EXISTS  "Udt"."Grade";

DROP DOMAIN IF EXISTS  "GroupMemberFirstName";

DROP DOMAIN IF EXISTS  "GroupMemberLastName";

DROP DOMAIN IF EXISTS  "GroupName";

DROP DOMAIN IF EXISTS  "IndividualProject";

DROP DOMAIN IF EXISTS  "Udt"."IsDeletion";

DROP DOMAIN IF EXISTS  "Udt"."LastName";

DROP DOMAIN IF EXISTS  "myudt"."MidtermDataModelingCSCI381";

DROP DOMAIN IF EXISTS  "Udt"."Name";

DROP DOMAIN IF EXISTS  "Udt"."Note";

DROP DOMAIN IF EXISTS  "Udt"."Percentage";

DROP DOMAIN IF EXISTS  "Udt"."PostalCode";

DROP DOMAIN IF EXISTS  "Udt"."ProductName";

DROP DOMAIN IF EXISTS  "Udt"."QuantitySmall";

DROP DOMAIN IF EXISTS  "Udt"."Region";

DROP DOMAIN IF EXISTS  "Salary";

DROP DOMAIN IF EXISTS  "Udt"."Score";

DROP DOMAIN IF EXISTS  "sdAddress.String";

DROP DOMAIN IF EXISTS  "Udt"."sdBlobDefinition.BYTEA";

DROP DOMAIN IF EXISTS  "sdClassTime.String";

DROP DOMAIN IF EXISTS  "sdCurrency.Integer";

DROP DOMAIN IF EXISTS  "sdDateYYYY.String";

DROP DOMAIN IF EXISTS  "sdDescription.String";

DROP DOMAIN IF EXISTS  "sdFlag.Integer";

DROP DOMAIN IF EXISTS  "sdFlag.String";

DROP DOMAIN IF EXISTS  "sdGrade.Integer";

DROP DOMAIN IF EXISTS  "sdGroupMember.String";

DROP DOMAIN IF EXISTS  "sdIdentification.String";

DROP DOMAIN IF EXISTS  "sdIndividualProject.String";

DROP DOMAIN IF EXISTS  "sdKeyVarchar.String";

DROP DOMAIN IF EXISTS  "sdLocation.String";

DROP DOMAIN IF EXISTS  "sdName.String";

DROP DOMAIN IF EXISTS  "sdNotes.String";

DROP DOMAIN IF EXISTS  "sdPercentage.Integer";

DROP DOMAIN IF EXISTS  "sdPhoneNumber.String";

DROP DOMAIN IF EXISTS  "sdPostalCode.String";

DROP DOMAIN IF EXISTS  "sdQuantity.Integer";

DROP DOMAIN IF EXISTS  "sdSalary.Integer";

DROP DOMAIN IF EXISTS  "sdSequence.Integer";

DROP DOMAIN IF EXISTS  "sdSurrogateKey.Integer";

DROP DOMAIN IF EXISTS  "sdTimeStamp.DateTime";

DROP DOMAIN IF EXISTS  "sdTitle.String";

DROP DOMAIN IF EXISTS  "sdTriggers.String";

DROP DOMAIN IF EXISTS  "sdVersion.Integer";

DROP DOMAIN IF EXISTS  "Udt"."SequenceNo";

DROP DOMAIN IF EXISTS  "Udt"."ShortDescription";

DROP DOMAIN IF EXISTS  "Udt"."StateName";

DROP DOMAIN IF EXISTS  "Udt"."StudentIdentification";

DROP DOMAIN IF EXISTS  "Udt"."SurrogateKeyInt";

DROP DOMAIN IF EXISTS  "SysEnd";

DROP DOMAIN IF EXISTS  "SysStart";

DROP DOMAIN IF EXISTS  "Udt"."TelephoneNumber";

DROP DOMAIN IF EXISTS  "Udt"."TextKeyVarchar10";

DROP DOMAIN IF EXISTS  "Udt"."TimeStampNow";

DROP DOMAIN IF EXISTS  "Udt"."Title";

DROP DOMAIN IF EXISTS  "Udt"."TitleOfCourtesy";

DROP DOMAIN IF EXISTS  "Udt"."TriggerOption";

DROP DOMAIN IF EXISTS  "Udt"."Version";

DROP DOMAIN IF EXISTS  "Udt"."YYYY";

CREATE SCHEMA "Audit";

CREATE SCHEMA "DbSecurity";

CREATE SCHEMA "Example";

CREATE SCHEMA "HumanResources";

CREATE SCHEMA "JsonOutput";

CREATE SCHEMA "myudt";

CREATE SCHEMA "Production";

CREATE SCHEMA "RelationalCalculii";

CREATE SCHEMA "RelationalCrossJoin";

CREATE SCHEMA "Sales";

CREATE SCHEMA "SystemVersioned";

CREATE SCHEMA "Temporal";

CREATE SCHEMA "Triggered";

CREATE SCHEMA "Udt";

CREATE SCHEMA "Utils";

CREATE SCHEMA "validations";

CREATE Domain "Udt"."Address"
	AS VARCHAR(60) NULL;

CREATE Domain "Udt"."CategoryName"
	AS VARCHAR(15) NULL;

CREATE Domain "Udt"."City"
	AS VARCHAR(15) NULL;

CREATE Domain "ClassTime"
	AS CHAR(5) NULL;

CREATE Domain "Udt"."CompanyName"
	AS VARCHAR(15) NULL;

CREATE Domain "Udt"."ContactName"
	AS VARCHAR(15) NULL;

CREATE Domain "Udt"."ContactTitle"
	AS VARCHAR(15) NULL;

CREATE Domain "Udt"."Country"
	AS VARCHAR(15) NULL;

CREATE Domain "Udt"."Currency"
	AS MONEY NULL;

CREATE Domain "myudt"."DateAdded"
	AS TIMESTAMP NULL
	CHECK @col <= CONVERT([date],sysdatetime);

CREATE Domain "DateOfLastUpdate"
	AS TIMESTAMP NULL
	CHECK @col <= CONVERT([date],sysdatetime);

CREATE Domain "Udt"."DateYYYYMMDD"
	AS DATE NOT NULL;

CREATE Domain "myudt"."dBlob"
	AS BYTEA NULL;

CREATE Domain "myudt"."dDateTime"
	AS TIMESTAMP NULL;

CREATE Domain "Udt"."Description"
	AS VARCHAR(200) NULL
	CHECK len([@col]) <= 200;

CREATE Domain "myudt"."dNumber"
	AS INTEGER NULL;

CREATE Domain "myudt"."dString"
	AS VARCHAR() NULL;

CREATE Domain "FaxNumber"
	AS VARCHAR(24) NULL
	CHECK len(@col) Between 10 AND 24;

CREATE Domain "Udt"."FirstName"
	AS VARCHAR(25) NULL;

CREATE Domain "Udt"."FlagBit"
	AS BIT NULL;

CREATE Domain "Udt"."FlagChar"
	AS CHAR(1) NOT NULL;

CREATE Domain "Udt"."Grade"
	AS TINYINT NULL;

CREATE Domain "GroupMemberFirstName"
	AS VARCHAR(25) NOT NULL
	CHECK len([%AttFieldName]) <= 25;

CREATE Domain "GroupMemberLastName"
	AS VARCHAR(35) NOT NULL
	CHECK len([@col]) <= 35
;

CREATE Domain "GroupName"
	AS VARCHAR(20) NOT NULL;

CREATE Domain "IndividualProject"
	AS VARCHAR(60) NULL;

CREATE Domain "Udt"."IsDeletion"
	AS CHAR(1) NOT NULL;

CREATE Domain "Udt"."LastName"
	AS VARCHAR(35) NULL;

CREATE Domain "myudt"."MidtermDataModelingCSCI381"
	AS VARCHAR() NULL;

CREATE Domain "Udt"."Name"
	AS VARCHAR(40) NULL;

CREATE Domain "Udt"."Note"
	AS VARCHAR(200) NULL;

CREATE Domain "Udt"."Percentage"
	AS NUMERIC(4,3) NULL;

CREATE Domain "Udt"."PostalCode"
	AS VARCHAR(10) NULL;

CREATE Domain "Udt"."ProductName"
	AS VARCHAR(40) NULL;

CREATE Domain "Udt"."QuantitySmall"
	AS SMALLINT NULL;

CREATE Domain "Udt"."Region"
	AS VARCHAR(15) NULL;

CREATE Domain "Salary"
	AS MONEY NULL;

CREATE Domain "Udt"."Score"
	AS TINYINT NOT NULL;

CREATE Domain "sdAddress.String"
	AS VARCHAR(60) NULL;

CREATE Domain "Udt"."sdBlobDefinition.BYTEA"
	AS BYTEA NULL;

CREATE Domain "sdClassTime.String"
	AS CHAR(5) NULL;

CREATE Domain "sdCurrency.Integer"
	AS DECIMAL(12,2) NULL;

CREATE Domain "sdDateYYYY.String"
	AS CHAR(4) NULL;

CREATE Domain "sdDescription.String"
	AS VARCHAR(200) NULL
	CHECK len([@col]) <= 200;

CREATE Domain "sdFlag.Integer"
	AS BIT NULL;

CREATE Domain "sdFlag.String"
	AS CHAR(1) NULL;

CREATE Domain "sdGrade.Integer"
	AS TINYINT NULL;

CREATE Domain "sdGroupMember.String"
	AS VARCHAR() NOT NULL;

CREATE Domain "sdIdentification.String"
	AS VARCHAR(10) NULL;

CREATE Domain "sdIndividualProject.String"
	AS VARCHAR() NULL;

CREATE Domain "sdKeyVarchar.String"
	AS VARCHAR(10) NULL;

CREATE Domain "sdLocation.String"
	AS VARCHAR(15) NULL;

CREATE Domain "sdName.String"
	AS VARCHAR(15) NULL;

CREATE Domain "sdNotes.String"
	AS VARCHAR(200) NULL;

CREATE Domain "sdPercentage.Integer"
	AS NUMBERIC(4,3) NULL;

CREATE Domain "sdPhoneNumber.String"
	AS VARCHAR(24) NULL
	CHECK len(@col) Between 10 AND 24;

CREATE Domain "sdPostalCode.String"
	AS VARCHAR(10) NULL;

CREATE Domain "sdQuantity.Integer"
	AS SMALLINT NULL;

CREATE Domain "sdSalary.Integer"
	AS INTEGER NULL;

CREATE Domain "sdSequence.Integer"
	AS INTEGER NULL;

CREATE Domain "sdSurrogateKey.Integer"
	AS INTEGER NULL;

CREATE Domain "sdTimeStamp.DateTime"
	AS TIMESTAMP NULL;

CREATE Domain "sdTitle.String"
	AS VARCHAR(15) NULL;

CREATE Domain "sdTriggers.String"
	AS CHAR(1) NULL;

CREATE Domain "sdVersion.Integer"
	AS INTEGER NULL;

CREATE Domain "Udt"."SequenceNo"
	AS INT NULL
	CHECK %AttFieldName BETWEEN 1 AND 100000;

CREATE Domain "Udt"."ShortDescription"
	AS VARCHAR(200) NULL
	CHECK len([@col]) <= 200;

CREATE Domain "Udt"."StateName"
	AS VARCHAR(15) NOT NULL;

CREATE Domain "Udt"."StudentIdentification"
	AS VARCHAR(10) NULL;

CREATE Domain "Udt"."SurrogateKeyInt"
	AS INT NULL;

CREATE Domain "SysEnd"
	AS TIMESTAMP NULL;

CREATE Domain "SysStart"
	AS TIMESTAMP NULL;

CREATE Domain "Udt"."TelephoneNumber"
	AS VARCHAR(24) NULL
	CHECK len(@col) Between 10 AND 24;

CREATE Domain "Udt"."TextKeyVarchar10"
	AS VARCHAR(10) NOT NULL;

CREATE Domain "Udt"."TimeStampNow"
	AS TIMESTAMP NOT NULL;

CREATE Domain "Udt"."Title"
	AS VARCHAR(30) NOT NULL;

CREATE Domain "Udt"."TitleOfCourtesy"
	AS VARCHAR(5) NOT NULL;

CREATE Domain "Udt"."TriggerOption"
	AS CHAR(1) NOT NULL;

CREATE Domain "Udt"."Version"
	AS INT NULL;

CREATE Domain "Udt"."YYYY"
	AS CHAR(4) NOT NULL;

CREATE FUNCTION "JsonOutput"."MongoOrder"() AS $$CREATE FUNCTION MongoOrder ()  
  
  
as RETURN
(
    select o.OrderId as OrderObjectId
         , o.OrderDate
         , o.RequiredDate
         , o.ShipToDate
         , o.Freight
         , o.ShipToName
         , o.ShipToAddress
         , o.ShipToCity
         , o.ShipToRegion
         , o.ShipToPostalCode
         , o.ShipToCountry
         , (
               select SalesCustomer.CustomerId          as 'CustomerObjectId'
                    , SalesCustomer.CustomerCompanyName as 'CustomerCompanyName'
                    , SalesCustomer.CustomerContactName as 'CustomerContactName'
                    , SalesCustomer.CustomerPhoneNumber as 'CustomerPhoneNumber'
                    , SalesCustomer.CustomerFaxNumber   as 'CustomerFaxNumber'
               from Sales.[Order]            as o2
                   inner join Sales.Customer as SalesCustomer
                       on SalesCustomer.CustomerId = o.CustomerId
               where o.OrderId = o2.OrderId
               for json path, include_null_values
           )         as SalesCustomer
         , (
               select HumanResourcesEmployee.EmployeeId          as 'EmployeeObjectId'
                    , HumanResourcesEmployee.EmployeeLastName    as 'EmployeeLastName'
                    , HumanResourcesEmployee.EmployeeFirstName   as 'EmployeeFirstName'
                    , HumanResourcesEmployee.EmployeePhoneNumber as 'EmployeePhoneNumber'
                    , HumanResourcesEmployee.EmployeeManagerId   as 'EmployeeManagerId'
               from Sales.[Order]                     as o2
                   inner join HumanResources.Employee as HumanResourcesEmployee
                       on HumanResourcesEmployee.EmployeeId = o2.EmployeeId
               where o.OrderId = o2.OrderId
               for json path, include_null_values
           )         as HumanResourcesEmployee
         , (
               select SalesShipper.ShipperId          as 'ShipperObjectId'
                    , SalesShipper.ShipperCompanyName as 'ShipperCompanyName'
                    , SalesShipper.PhoneNumber        as 'PhoneNumber'
               from Sales.[Order]           as o2
                   inner join Sales.Shipper as SalesShipper
                       on SalesShipper.ShipperId = o2.ShipperId
               where o.OrderId = o2.OrderId
               for json path, include_null_values
           )         as SalesShipper
    from Sales.[Order]                     as o
        inner join Sales.Customer          as SalesCustomer
            on SalesCustomer.CustomerId = o.CustomerId
        inner join HumanResources.Employee as HumanResourcesEmployee
            on HumanResourcesEmployee.EmployeeId = o.EmployeeId
        inner join Sales.Shipper           as SalesShipper
            on SalesShipper.ShipperId = o.ShipperId
);



$$
VOLATILE;

CREATE FUNCTION "JsonOutput"."MongoOrderDetail"() AS $$CREATE FUNCTION MongoOrderDetail ()  
  
  
as RETURN
(
    select OrderDetail.OrderId                                                                    as OrderObjectId
         , row_number() over (partition by OrderDetail.OrderId order by OrderDetail.OrderId)      as LineItemNumer
         , OrderDetail.UnitPrice
         , OrderDetail.Quantity
         , OrderDetail.DiscountPercentage
         , OrderDetail.UnitPrice * OrderDetail.Quantity                                           as TotalCost
         , (OrderDetail.UnitPrice * OrderDetail.Quantity) * (1. - OrderDetail.DiscountPercentage) as TotalDiscountedCost
         , OrderDetail.OrderId
         , (
               select distinct
                      ProductionProduct.ProductId    as 'ProductionProduct.ProductObjectId'
                    , ProductionProduct.ProductName  as 'ProductionProduct.ProductName'
                    , ProductionProduct.SupplierId   as 'ProductionProduct.SupplierId'
                    , ProductionProduct.CategoryId   as 'ProductionProduct.CategoryId'
                    , ProductionProduct.UnitPrice    as 'ProductionProduct.UnitPrice'
                    , ProductionProduct.Discontinued as 'ProductionProduct.Discontinued'
               from Production.Product            as ProductionProduct
                   inner join Production.Category as ProductionCategory
                       on ProductionCategory.CategoryId = ProductionProduct.CategoryId
                   inner join Production.Supplier as ProductionSupplier
                       on ProductionSupplier.SupplierId = ProductionProduct.SupplierId
                   inner join Sales.OrderDetail   as od
                       on OrderDetail.ProductId = ProductionProduct.ProductId
               where od.OrderId = OrderDetail.OrderId
               for json path, include_null_values
           )                                                                                      as ProductionProduct
         , (
               select distinct
                      ProductionCategory.CategoryId   as 'ProductionCategory.CategoryObjectId'
                    , ProductionCategory.CategoryName as 'ProductionCategory.CategoryName'
                    , ProductionCategory.Description  as 'ProductionCategory.Description'
               from Production.Product            as ProductionProduct
                   inner join Production.Category as ProductionCategory
                       on ProductionCategory.CategoryId = ProductionProduct.CategoryId
                   inner join Sales.OrderDetail   as od
                       on OrderDetail.ProductId = ProductionProduct.ProductId
               where od.OrderId = OrderDetail.OrderId
               for json path, include_null_values
           )                                                                                      as ProductionCategory
         , (
               select distinct
                      ProductionSupplier.SupplierId          as 'ProductionSupplier.SupplierObjectId'
                    , ProductionSupplier.SupplierCompanyName as 'ProductionSupplier.SupplierCompanyName'
                    , ProductionSupplier.SupplierContactName as 'ProductionSupplier.SupplierContactName'
                    , ProductionSupplier.SupplierPhoneNumber as 'ProductionSupplier.SupplierPhoneNumber'
                    , ProductionSupplier.SupplierFaxNumber   as 'ProductionSupplier.SupplierFaxNumber'
               from Production.Product            as ProductionProduct
                   inner join Production.Supplier as ProductionSupplier
                       on ProductionSupplier.SupplierId = ProductionProduct.SupplierId
                   inner join Sales.OrderDetail   as od
                       on OrderDetail.ProductId = ProductionProduct.ProductId
               where od.OrderId = OrderDetail.OrderId
               for json path, include_null_values
           )                                                                                      as ProductionSupplier
    from Production.Product            as ProductionProduct
        inner join Production.Category as ProductionCategory
            on ProductionCategory.CategoryId = ProductionProduct.CategoryId
        inner join Production.Supplier as ProductionSupplier
            on ProductionSupplier.SupplierId = ProductionProduct.SupplierId
        inner join Sales.OrderDetail   as OrderDetail
            on OrderDetail.ProductId = ProductionProduct.ProductId
    where OrderDetail.OrderId = @OrderId
);



$$
VOLATILE;

CREATE FUNCTION "Triggered"."utvf_EmployeeCurrentAndHistoryCTE"() AS $$CREATE FUNCTION utvf_EmployeeCurrentAndHistoryCTE ()  
  
  
as RETURN
	(
		with AllTransactions
		as (select 'Current row' as TransactionRow
				 , EmployeeId
				 , EmployeeFullName
				 , Department
				 , Salary
				 , Notes
				 , IsDeleted
				 , TransactionNumber
				 , UserAuthenticatedKey
				 , SysStartTime
				 , SysEndTime
				 , TimestampRowChanged
			from [Triggered].[Employee]
			where EmployeeId = @EmployeeId
			union
			select case
					   when IsDeleted = 'N' then
						   'History row'
					   else
						   'Deleted row'
				   end as TransactionRow
				 , EmployeeId
				 , EmployeeFullName
				 , Department
				 , Salary
				 , Notes
				 , IsDeleted
				 , TransactionNumber
				 , UserAuthenticatedKey
				 , SysStartTime
				 , SysEndTime
				 , TimestampRowChanged
			from [Triggered].[AuditTriggeredEmployeeHistory]
			where EmployeeId = @EmployeeId)
		select AllTransactions.TransactionRow
			 , AllTransactions.EmployeeId
			 , AllTransactions.EmployeeFullName
			 , AllTransactions.Department
			 , AllTransactions.Salary
			 , AllTransactions.Notes
			 , AllTransactions.IsDeleted
			 , AllTransactions.TransactionNumber
			 , AllTransactions.UserAuthenticatedKey
			 , AllTransactions.SysStartTime
			 , AllTransactions.SysEndTime
			 , AllTransactions.TimestampRowChanged
		from AllTransactions
	);



$$
VOLATILE;

CREATE FUNCTION "Triggered"."utvf_EmployeeCurrentAndHistory"() AS $$CREATE FUNCTION utvf_EmployeeCurrentAndHistory ()  
  
  
as RETURN
		(
			select 'Current row' as TransactionRow
				 , EmployeeId
				 , EmployeeFullName
				 , Department
				 , Salary
				 , Notes
				 , IsDeleted
				 , TransactionNumber
				 , UserAuthenticatedKey
				 , SysStartTime
				 , SysEndTime
				 , TimestampRowChanged
			from [Triggered].[Employee]
			where EmployeeId = @EmployeeId
			union all
			select case
					   when IsDeleted = 'N' then
						   'History row'
					   else
						   'Deleted Row'
				   end as TransactionRow
				 , EmployeeId
				 , EmployeeFullName
				 , Department
				 , Salary
				 , Notes
				 , IsDeleted
				 , TransactionNumber
				 , UserAuthenticatedKey
				 , SysStartTime
				 , SysEndTime
				 , TimestampRowChanged
			from [Triggered].[AuditTriggeredEmployeeHistory]
			where EmployeeId = @EmployeeId
		);




$$
VOLATILE;

CREATE TABLE "Triggered"."AuditTriggeredEmployeeHistory"
( 
	"TriggeredEmployeeHistoryId" integer  NOT NULL ,
	"AuditTriggeredEmployeeHistoryTimestamp" timestamp  NULL   DEFAULT  sysdatetime(),
	"TriggerOption"      char(1)  NULL   DEFAULT  'U',
	"EmployeeId"         integer  NOT NULL ,
	"EmployeeFullName"   varchar(40)  NOT NULL ,
	"Department"         varchar(40)  NOT NULL ,
	"Salary"             DECIMAL(12,2)  NOT NULL ,
	"Notes"              varchar(200)  NOT NULL   DEFAULT  'Internal: ',
	"IsDeleted"          char(1)  NULL   DEFAULT  'N',
	"TransactionNumber"  integer  NULL   DEFAULT  1,
	CONSTRAINT "CHK_TransactionNumber_1766004043" CHECK  ( "TransactionNumber" BETWEEN 1 AND 100000 ) ,
	"UserAuthenticatedKey" integer  NULL   DEFAULT  37,
	"SysStartTime"       timestamp  NULL   DEFAULT  sysdatetime(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59',
	"TimestampRowChanged" timestamp  NULL   DEFAULT  sysdatetime(),
	"UserAuthorizationId" integer  NOT NULL ,
	"DateAdded"          timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT "CHK_Date_158675063" CHECK  ( @col <= CONVERT([date],sysdatetime) ) ,
	"DateOfLastUpdate"   timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT "CHK_Date_823111003" CHECK  ( @col <= CONVERT([date],sysdatetime) ) 
);

ALTER TABLE "Triggered"."AuditTriggeredEmployeeHistory"
	ADD CONSTRAINT "PK_TriggeredEmployeeHistoryId" PRIMARY KEY ("TriggeredEmployeeHistoryId");

CREATE UNIQUE INDEX "ix_Employees" ON "Triggered"."AuditTriggeredEmployeeHistory"
( 
	"EmployeeId",
	"SysStartTime",
	"SysEndTime",
	"TriggeredEmployeeHistoryId"
);

CREATE TABLE "Production"."Category"
( 
	"CategoryId"         integer  NOT NULL ,
	"CategoryName"       varchar(15)  NOT NULL ,
	"Description"        varchar(200)  NOT NULL   DEFAULT  'Add a description',
	CONSTRAINT "CHK_Length_Description_2095411" CHECK  ( len([@col]) <= 200 ) ,
	"UserAuthorizationId" integer  NOT NULL ,
	"DateAdded"          timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT "CHK_Date_510224729" CHECK  ( @col <= CONVERT([date],sysdatetime) ) ,
	"DateOfLastUpdate"   timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT "CHK_Date_1642581697" CHECK  ( @col <= CONVERT([date],sysdatetime) ) 
);

ALTER TABLE "Production"."Category"
	ADD CONSTRAINT "PK_Categories" PRIMARY KEY ("CategoryId");

CREATE TABLE "Sales"."Customer"
( 
	"CustomerId"         integer  NOT NULL ,
	"CustomerCompanyName" varchar(15)  NOT NULL ,
	"CustomerContactName" varchar(15)  NOT NULL ,
	"CustomerContactTitle" varchar(30)  NOT NULL ,
	"CustomerAddress"    varchar(60)  NOT NULL ,
	"CustomerCity"       varchar(15)  NOT NULL ,
	"CustomerRegion"     varchar(15)  NULL ,
	"CustomerPostalCode" varchar(10)  NULL ,
	"CustomerCountry"    varchar(15)  NOT NULL ,
	"CustomerPhoneNumber" varchar(24)  NOT NULL ,
	CONSTRAINT "CHK_PhoneNumber_1141170820" CHECK  ( len(@col) Between 10 AND 24 ) ,
	"CustomerFaxNumber"  varchar(24)  NULL ,
	CONSTRAINT "CHK_PhoneNumber_823135965" CHECK  ( len(@col) Between 10 AND 24 ) ,
	"UserAuthrorizationId" integer  NULL ,
	"DateAdded"          timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT "CHK_Date_811299169" CHECK  ( @col <= CONVERT([date],sysdatetime) ) ,
	"DateOfLastUpdate"   timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT "CHK_Date_1507187897" CHECK  ( @col <= CONVERT([date],sysdatetime) ) ,
	"UserAuthorizationId" integer  NULL 
);

ALTER TABLE "Sales"."Customer"
	ADD CONSTRAINT "PK_Customers" PRIMARY KEY ("CustomerId");

CREATE TABLE "HumanResources"."Employee"
( 
	"EmployeeId"         integer  NOT NULL ,
	"EmployeeLastName"   varchar(35)  NOT NULL ,
	"EmployeeFirstName"  varchar(25)  NOT NULL ,
	"EmployeeTitle"      varchar(30)  NOT NULL ,
	"EmployeeTitleOfCourtesy" varchar(5)  NOT NULL ,
	"BirthDate"          date  NOT NULL ,
	CONSTRAINT "CHK_birthdate" CHECK  ( "BirthDate" <= CONVERT([date],sysdatetime) ) ,
	"HireDate"           date  NOT NULL ,
	"EmployeeAddress"    varchar(60)  NOT NULL ,
	"EmployeeCity"       varchar(15)  NULL ,
	"EmployeeRegion"     varchar(15)  NULL ,
	"EmployeePostalCode" varchar(10)  NULL ,
	"EmployeeCountry"    varchar(15)  NOT NULL ,
	"EmployeePhoneNumber" varchar(24)  NOT NULL ,
	CONSTRAINT "CHK_PhoneNumber_1037756044" CHECK  ( len(@col) Between 10 AND 24 ) ,
	"EmployeeManagerId"  integer  NULL ,
	"DateAdded"          timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT "CHK_Date_878206051" CHECK  ( @col <= CONVERT([date],sysdatetime) ) ,
	"DateOfLastUpdate"   timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT "CHK_Date_1473372110" CHECK  ( @col <= CONVERT([date],sysdatetime) ) ,
	"UserAuthorizationId" integer  NOT NULL 
);

ALTER TABLE "HumanResources"."Employee"
	ADD CONSTRAINT "PK_Employees" PRIMARY KEY ("EmployeeId");

CREATE TABLE "SystemVersioned"."Employee"
( 
	"EmployeeId"         integer  NOT NULL ,
	"EmployeeFullName"   varchar(40)  NOT NULL ,
	"Department"         varchar(40)  NOT NULL ,
	"Salary"             DECIMAL(12,2)  NOT NULL ,
	"Notes"              varchar(200)  NOT NULL   DEFAULT  'Internal: ',
	"SysStart"           timestamp  NOT NULL   DEFAULT  '19000101',
	"SysEnd"             timestamp  NOT NULL   DEFAULT  '99991231 23:59:59',
	"UserAuthorizationId" integer  NOT NULL ,
	"DateAdded"          timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT "CHK_Date_878206051" CHECK  ( @col <= CONVERT([date],sysdatetime) ) ,
	"DateOfLastUpdate"   timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT "CHK_Date_1473372110" CHECK  ( @col <= CONVERT([date],sysdatetime) ) 
);

ALTER TABLE "SystemVersioned"."Employee"
	ADD CONSTRAINT "PK_EmployeeVersioned" PRIMARY KEY ("EmployeeId");

CREATE TABLE "Triggered"."Employee"
( 
	"EmployeeId"         integer  NOT NULL ,
	"EmployeeFullName"   varchar(40)  NOT NULL ,
	"Department"         varchar(40)  NOT NULL ,
	"Salary"             DECIMAL(12,2)  NOT NULL ,
	"Notes"              varchar(200)  NOT NULL   DEFAULT  'Internal: ',
	"IsDeleted"          char(1)  NULL   DEFAULT  'N',
	"TransactionNumber"  integer  NULL   DEFAULT  1,
	CONSTRAINT "CHK_TransactionNumber_1682555891" CHECK  ( "TransactionNumber" BETWEEN 1 AND 100000 ) ,
	"UserAuthenticatedKey" integer  NULL   DEFAULT  37,
	"SysStartTime"       timestamp  NULL   DEFAULT  sysdatetime(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59',
	"TimestampRowChanged" timestamp  NULL   DEFAULT  sysdatetime(),
	"UserAuthrorizationId" integer  NULL ,
	"DateAdded"          timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT "CHK_Date_878206051" CHECK  ( @col <= CONVERT([date],sysdatetime) ) ,
	"DateOfLastUpdate"   timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT "CHK_Date_1473372110" CHECK  ( @col <= CONVERT([date],sysdatetime) ) ,
	"UserAuthorizationId" integer  NOT NULL 
);

ALTER TABLE "Triggered"."Employee"
	ADD CONSTRAINT "PK_TriggeredEmployee" PRIMARY KEY ("EmployeeId");

CREATE INDEX "ix_Employees" ON "Triggered"."Employee"
( 
	"EmployeeId",
	"SysStartTime",
	"SysEndTime"
);

CREATE TABLE "dbo"."Nums"
( 
	"N"                  integer  NOT NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"DateAdded"          timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT "CHK_Date_1024459268" CHECK  ( @col <= CONVERT([date],sysdatetime) ) ,
	"DateOfLastUpdate"   timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT "CHK_Date_1102886868" CHECK  ( @col <= CONVERT([date],sysdatetime) ) 
);

ALTER TABLE "dbo"."Nums"
	ADD CONSTRAINT "PK_Nums" PRIMARY KEY ("N");

CREATE TABLE "Sales"."Order"
( 
	"OrderId"            integer  NOT NULL ,
	"CustomerId"         integer  NULL ,
	"EmployeeId"         integer  NOT NULL ,
	"OrderDate"          date  NOT NULL ,
	"RequiredDate"       date  NOT NULL ,
	"ShipToDate"         date  NULL ,
	"Freight"            DECIMAL(12,2)  NOT NULL   DEFAULT  0,
	"ShipToName"         varchar(15)  NOT NULL ,
	"ShipToAddress"      varchar(60)  NOT NULL ,
	"ShipToCity"         varchar(15)  NOT NULL ,
	"ShipToRegion"       varchar(15)  NULL ,
	"ShipToPostalCode"   varchar(10)  NULL ,
	"ShipToCountry"      varchar(15)  NOT NULL ,
	"UserAuthenticationId" integer  NULL ,
	"DateAdded"          timestamp  NULL ,
	"DateOfLastUpdate"   timestamp  NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"ShipperId"          integer  NULL 
);

ALTER TABLE "Sales"."Order"
	ADD CONSTRAINT "PK_Orders" PRIMARY KEY ("OrderId");

CREATE TABLE "Sales"."OrderDetail"
( 
	"OrderId"            integer  NOT NULL ,
	"ProductId"          integer  NOT NULL ,
	"UnitPrice"          DECIMAL(12,2)  NOT NULL   DEFAULT  0,
	"Quantity"           smallint  NOT NULL   DEFAULT  1,
	CONSTRAINT "CHK_Quantity" CHECK  ( [Quantity]>(0) ) ,
	"DiscountPercentage" numeric(4,3)  NOT NULL   DEFAULT  0,
	CONSTRAINT "CHK_DiscountPercentage" CHECK  ( "DiscountPercentage" BETWEEN 0 AND 1 ) ,
	"DateAdded"          timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT "CHK_Date_1889714312" CHECK  ( @col <= CONVERT([date],sysdatetime) ) ,
	"DateOfLastUpdate"   timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT "CHK_Date_848663914" CHECK  ( @col <= CONVERT([date],sysdatetime) ) ,
	"UserAuthorizationId" integer  NOT NULL 
);

ALTER TABLE "Sales"."OrderDetail"
	ADD CONSTRAINT "PK_OrderDetails" PRIMARY KEY ("OrderId","ProductId");

CREATE TABLE "Production"."Product"
( 
	"ProductId"          integer  NOT NULL ,
	"ProductName"        varchar(40)  NOT NULL ,
	"SupplierId"         integer  NOT NULL ,
	"CategoryId"         integer  NOT NULL ,
	"UnitPrice"          DECIMAL(12,2)  NOT NULL   DEFAULT  0,
	CONSTRAINT "CHK_Products_unitprice" CHECK  ( "UnitPrice" >= 0 ) ,
	"Discontinued"       bit  NOT NULL   DEFAULT  0,
	"DateAdded"          timestamp  NULL   DEFAULT  sysdatetime(),
	"DateOfLastUpdate"   timestamp  NULL   DEFAULT  sysdatetime(),
	"UserAuthorizationId" integer  NOT NULL 
);

ALTER TABLE "Production"."Product"
	ADD CONSTRAINT "PK_Products" PRIMARY KEY ("ProductId");

CREATE TABLE "Sales"."Shipper"
( 
	"ShipperId"          integer  NOT NULL ,
	"ShipperCompanyName" varchar(15)  NOT NULL ,
	"PhoneNumber"        varchar(24)  NOT NULL ,
	CONSTRAINT "CHK_PhoneNumber_1611853186" CHECK  ( len(@col) Between 10 AND 24 ) ,
	"UserAuthorizationId" integer  NOT NULL ,
	"DateAdded"          timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT "CHK_Date_290481695" CHECK  ( @col <= CONVERT([date],sysdatetime) ) ,
	"DateOfLastUpdate"   timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT "CHK_Date_1678448700" CHECK  ( @col <= CONVERT([date],sysdatetime) ) 
);

ALTER TABLE "Sales"."Shipper"
	ADD CONSTRAINT "PK_Shippers" PRIMARY KEY ("ShipperId");

CREATE TABLE "Production"."Supplier"
( 
	"SupplierId"         integer  NOT NULL ,
	"SupplierCompanyName" varchar(15)  NOT NULL ,
	"SupplierContactName" varchar(15)  NOT NULL ,
	"SupplierContactTitle" varchar(15)  NOT NULL ,
	"SupplierAddress"    varchar(60)  NOT NULL ,
	"SupplierCity"       varchar(15)  NOT NULL ,
	"SupplierRegion"     varchar(15)  NULL ,
	"SupplierPostalCode" varchar(10)  NULL ,
	"SupplierCountry"    varchar(15)  NOT NULL ,
	"SupplierPhoneNumber" varchar(24)  NOT NULL ,
	CONSTRAINT "CHK_PhoneNumber_1039989884" CHECK  ( len(@col) Between 10 AND 24 ) ,
	"SupplierFaxNumber"  varchar(24)  NULL ,
	CONSTRAINT "CHK_PhoneNumber_387454181" CHECK  ( len(@col) Between 10 AND 24 ) ,
	"UserAuthorizationId" integer  NOT NULL ,
	"DateAdded"          timestamp  NULL   DEFAULT  sysdatetime(),
	"DateOfLastUpdate"   timestamp  NULL   DEFAULT  sysdatetime()
);

ALTER TABLE "Production"."Supplier"
	ADD CONSTRAINT "PK_Suppliers" PRIMARY KEY ("SupplierId");

CREATE TABLE "DbSecurity"."UserAuthorization"
( 
	"UserAuthorizationId" integer  NOT NULL ,
	"ClassTime"          char(5)  NULL   DEFAULT  '9:15',
	"IndividualProject"  varchar(60)  NULL   DEFAULT  'CSCI381 Midterm Project',
	"GroupMemberLastName" varchar(35)  NOT NULL ,
	CONSTRAINT "CHK_Length_LastName_1192928165" CHECK  ( len([@col]) <= 35
 ) ,
	"GroupMemberFirstName" varchar(25)  NOT NULL ,
	CONSTRAINT "CHK_Length_FirstName_1569711807" CHECK  ( len(["GroupMemberFirstName"]) <= 25 ) ,
	"GroupName"          varchar(20)  NOT NULL ,
	"DateAdded"          timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT "CHK_Date_95985539" CHECK  ( @col <= CONVERT([date],sysdatetime) ) ,
	"DateOfLastUpdate"   timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT "CHK_Date_1024192714" CHECK  ( @col <= CONVERT([date],sysdatetime) ) 
);

ALTER TABLE "DbSecurity"."UserAuthorization"
	ADD CONSTRAINT "XPKUserAuthorization" PRIMARY KEY ("UserAuthorizationId");

CREATE TABLE "Audit"."VersionedEmployeeHistory"
( 
	"EmployeeId"         integer  NOT NULL ,
	"EmployeeFullName"   varchar(25)  NOT NULL ,
	"Department"         varchar(50)  NOT NULL ,
	"Salary"             DECIMAL(12,2)  NOT NULL ,
	"Notes"              varchar(60)  NOT NULL ,
	"SysStart"           timestamp  NOT NULL ,
	"SysEnd"             timestamp  NOT NULL ,
	"UserAuthorizationId" integer  NOT NULL ,
	"DateAdded"          timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT "CHK_Date_1893325288" CHECK  ( @col <= CONVERT([date],sysdatetime) ) ,
	"DateOfLastUpdate"   timestamp  NULL   DEFAULT  sysdatetime(),
	CONSTRAINT "CHK_Date_1569254908" CHECK  ( @col <= CONVERT([date],sysdatetime) ) 
);

ALTER TABLE "Audit"."VersionedEmployeeHistory"
	ADD CONSTRAINT "XPKVersionedEmployeeHistory" PRIMARY KEY ("EmployeeId");

CREATE INDEX "ix_VersionedEmployeeHistory" ON "Audit"."VersionedEmployeeHistory"
( 
	"SysEnd",
	"SysStart"
);

CREATE VIEW "JsonOutput"."uvw_HumanResourcesEmployee" ( "EmployeeObjectId","EmployeeLastName","EmployeeFirstName","EmployeeTitle","EmployeeTitleOfCourtesy","BirthDate","HireDate","EmployeeAddress","EmployeeCity","EmployeeRegion","EmployeePostalCode","EmployeeCountry","EmployeePhoneNumber","EmployeeManagerId" )
 AS 
	SELECT E."EmployeeId",E."EmployeeLastName",E."EmployeeFirstName",E."EmployeeTitle",E."EmployeeTitleOfCourtesy",E."BirthDate",E."HireDate",E."EmployeeAddress",E."EmployeeCity",E."EmployeeRegion",E."EmployeePostalCode",E."EmployeeCountry",E."EmployeePhoneNumber",E."EmployeeManagerId"
		FROM "HumanResources"."Employee" E;

CREATE VIEW "JsonOutput"."uvw_ProductionCategory" ( "CategoryObjectId","CategoryName","Description" )
 AS 
	SELECT ."CategoryId",."CategoryName",."Description"
		FROM "Production"."Category" ;

CREATE OR REPLACE VIEW "JsonOutput"."uvw_ProductionProduct" AS 
CREATE VIEW [JsonOutput].[uvw_ProductionProduct] AS  SELECT P.ProductId AS ProductObjectId, P.ProductName, P.SupplierId, P.CategoryId, P.UnitPrice, P.Discontinued, C.CategoryId AS Production.CategoryObjectId, C.CategoryName AS Production.CategoryName, C.Description AS Production.Description, S.SupplierId AS Production.SupplierId, S.SupplierCompanyName AS Production.SupplierCompanyName, S.SupplierContactName AS Production.SupplierContactName, S.SupplierPhoneNumber AS Production.SupplierPhoneNumber, S.SupplierFaxNumber AS Production.SupplierFaxNumber FROM Production.Product AS P   INNER JOIN   Production.Category AS C ON C.CategoryId = P.CategoryId   INNER JOIN   Production.Supplier AS S ON S.SupplierId = P.SupplierId;

CREATE VIEW "JsonOutput"."uvw_ProductionSupplier" ( "SupplierObjectId","SupplierCompanyName","SupplierContactName","SupplierContactTitle","SupplierAddress","SupplierCity","SupplierRegion","SupplierPostalCode","SupplierCountry","SupplierPhoneNumber","SupplierFaxNumber" )
 AS 
	SELECT S."SupplierId",S."SupplierCompanyName",S."SupplierContactName",S."SupplierContactTitle",S."SupplierAddress",S."SupplierCity",S."SupplierRegion",S."SupplierPostalCode",S."SupplierCountry",S."SupplierPhoneNumber",S."SupplierFaxNumber"
		FROM "Production"."Supplier" S;

CREATE VIEW "JsonOutput"."uvw_SalesCustomer" ( "CustomerObjectId","CustomerCompanyName","CustomerContactName","CustomerContactTitle","CustomerAddress","CustomerCity","CustomerRegion","CustomerPostalCode","CustomerCountry","CustomerPhoneNumber","CustomerFaxNumber" )
 AS 
	SELECT C."CustomerId",C."CustomerCompanyName",C."CustomerContactName",C."CustomerContactTitle",C."CustomerAddress",C."CustomerCity",C."CustomerRegion",C."CustomerPostalCode",C."CustomerCountry",C."CustomerPhoneNumber",C."CustomerFaxNumber"
		FROM "Sales"."Customer" C;

CREATE VIEW "JsonOutput"."uvw_SalesShipper" ( "ShipperObjectId","ShipperCompanyName","PhoneNumber" )
 AS 
	SELECT S."ShipperId",S."ShipperCompanyName",S."PhoneNumber"
		FROM "Sales"."Shipper" S;

CREATE VIEW "JsonOutput"."uvw_Order" ( "OrderId","CustomerId","EmployeeId","OrderDate","RequiredDate","ShipToDate","Freight","ShipToName","ShipToAddress","ShipToCity","ShipToRegion","ShipToPostalCode","ShipToCountry" )
 AS 
	SELECT O."OrderId",O."CustomerId",O."EmployeeId",O."OrderDate",O."RequiredDate",O."ShipToDate",O."Freight",O."ShipToName",O."ShipToAddress",O."ShipToCity",O."ShipToRegion",O."ShipToPostalCode",O."ShipToCountry"
		FROM "Sales"."Order" O;

CREATE VIEW "JsonOutput"."uvw_OrderDetail" ( "OrderId","ProductId","UnitPrice","Quantity","DiscountPercentage" )
 AS 
	SELECT OD."OrderId",OD."ProductId",OD."UnitPrice",OD."Quantity",OD."DiscountPercentage"
		FROM "Sales"."OrderDetail" OD;

CREATE OR REPLACE VIEW "Utils"."uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint" AS 
CREATE VIEW [Utils].[uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint] AS  SELECT  concat( tbl.TABLE_SCHEMA , '.' , tbl.TABLE_NAME )  AS FullyQualifiedTableName, tbl.TABLE_SCHEMA AS SchemaName, tbl.TABLE_NAME AS TableName, col.COLUMN_NAME AS ColumnName, col.ORDINAL_POSITION AS OrdinalPosition,  concat( col.DOMAIN_SCHEMA , '.' , col.DOMAIN_NAME )  AS FullyQualifiedDomainName, col.DOMAIN_NAME AS DomainName, CASE WHEN col.DATA_TYPE = 'varchar' THEN  concat( 'varchar(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'char' THEN  concat( 'char(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'nvarchar' THEN  concat( 'nvarchar(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'nchar' THEN  concat( 'nchar(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'numeric' THEN  concat( 'numeric(' , NUMERIC_PRECISION_RADIX , ', ' , NUMERIC_SCALE , ')' )  WHEN col.DATA_TYPE = 'decimal' THEN  concat( 'decimal(' , NUMERIC_PRECISION_RADIX , ', ' , NUMERIC_SCALE , ')' )  ELSE col.DATA_TYPE END AS DataType, col.IS_NULLABLE AS IsNullable, dcn.DefaultName, col.COLUMN_DEFAULT AS DefaultNameDefinition, cc.CONSTRAINT_NAME AS CheckConstraintRuleName, cc.CHECK_CLAUSE AS CheckConstraintRuleNameDefinition FROM (  SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, TABLE_TYPE FROM INFORMATION_SCHEMA.TABLES WHERE ( TABLE_TYPE = 'BASE TABLE' ) ) AS tbl    INNER JOIN   (  SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, ORDINAL_POSITION, COLUMN_DEFAULT, IS_NULLABLE, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, CHARACTER_OCTET_LENGTH, NUMERIC_PRECISION, NUMERIC_PRECISION_RADIX, NUMERIC_SCALE, DATETIME_PRECISION, CHARACTER_SET_CATALOG, CHARACTER_SET_SCHEMA, CHARACTER_SET_NAME, COLLATION_CATALOG, COLLATION_SCHEMA, COLLATION_NAME, DOMAIN_CATALOG, DOMAIN_SCHEMA, DOMAIN_NAME FROM INFORMATION_SCHEMA.COLUMNS ) AS col  ON col.TABLE_CATALOG = tbl.TABLE_CATALOG AND col.TABLE_SCHEMA = tbl.TABLE_SCHEMA AND col.TABLE_NAME = tbl.TABLE_NAME   LEFT OUTER JOIN   (  SELECT t.name AS TableName,  schema_name( s.schema_id )  AS SchemaName, ac.name AS ColumnName, d.name AS DefaultName FROM sys.all_columns AS ac   INNER JOIN   sys.tables AS t ON ac.object_id = t.object_id   INNER JOIN   sys.schemas AS s ON t.schema_id = s.schema_id   INNER JOIN   sys.default_constraints AS d ON ac.default_object_id = d.object_id ) AS dcn  ON dcn.SchemaName = tbl.TABLE_SCHEMA AND dcn.TableName = tbl.TABLE_NAME AND dcn.ColumnName = col.COLUMN_NAME   LEFT OUTER JOIN   (  SELECT cu.TABLE_CATALOG, cu.TABLE_SCHEMA, cu.TABLE_NAME, cu.COLUMN_NAME, c.CONSTRAINT_CATALOG, c.CONSTRAINT_SCHEMA, c.CONSTRAINT_NAME, c.CHECK_CLAUSE FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE AS cu   INNER JOIN   INFORMATION_SCHEMA.CHECK_CONSTRAINTS AS c ON c.CONSTRAINT_NAME = cu.CONSTRAINT_NAME ) AS cc  ON cc.TABLE_SCHEMA = tbl.TABLE_SCHEMA AND cc.TABLE_NAME = tbl.TABLE_NAME AND cc.COLUMN_NAME = col.COLUMN_NAME;

CREATE VIEW "Utils"."uw_FindAllDatabaseColumnsOnTheServer" ( "FullyQualifiedTableName","SchemaName","ColumnName","OrdinalPosition","FullyQualifiedDomainName","DataType","IsNullable","DefaultName","DefaultNameDefinition","CheckConstraintRuleName","CheckConstraintRuleNameDefinition","Server_Name","Target_Database_Version","Instance_Name","Database_Name","Host_Name" )
 AS 
	SELECT vw."FullyQualifiedTableName",vw."SchemaName",vw."ColumnName",vw."OrdinalPosition",vw."FullyQualifiedDomainName",vw."DataType",vw."IsNullable",vw."DefaultName",vw."DefaultNameDefinition",vw."CheckConstraintRuleName",vw."CheckConstraintRuleNameDefinition",@@servername,@@version,@@servicename,db_name(),host_name()
		FROM "Utils"."uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint" vw
		WHERE vw.SchemaName IN ('Sales' , 'Production' , 'HumanResources');


ALTER TABLE "Triggered"."AuditTriggeredEmployeeHistory"
	ADD CONSTRAINT "FK_UserAuthorization_AuditTriggeredEmployeeHistory" FOREIGN KEY ("UserAuthorizationId") REFERENCES "DbSecurity"."UserAuthorization"("UserAuthorizationId")
		ON UPDATE RESTRICT
		ON DELETE RESTRICT;

ALTER TABLE "Triggered"."AuditTriggeredEmployeeHistory"
	ADD CONSTRAINT "FK_Employee_AuditTriggeredEmployeeHistory" FOREIGN KEY ("EmployeeId") REFERENCES "Triggered"."Employee"("EmployeeId")
		ON UPDATE RESTRICT
		ON DELETE RESTRICT;


ALTER TABLE "Production"."Category"
	ADD CONSTRAINT "FK_UserAuthorization_Category" FOREIGN KEY ("UserAuthorizationId") REFERENCES "DbSecurity"."UserAuthorization"("UserAuthorizationId")
		ON UPDATE RESTRICT
		ON DELETE RESTRICT;


ALTER TABLE "Sales"."Customer"
	ADD CONSTRAINT "FK_UserAuthorization_Customer" FOREIGN KEY ("UserAuthorizationId") REFERENCES "DbSecurity"."UserAuthorization"("UserAuthorizationId")
		ON UPDATE SET NULL
		ON DELETE SET NULL;


ALTER TABLE "HumanResources"."Employee"
	ADD CONSTRAINT "FK_Employee_Employee" FOREIGN KEY ("EmployeeManagerId") REFERENCES "HumanResources"."Employee"("EmployeeId")
		ON UPDATE NO ACTION
		ON DELETE NO ACTION;

ALTER TABLE "HumanResources"."Employee"
	ADD CONSTRAINT "FK_UserAuthorization_Employee" FOREIGN KEY ("UserAuthorizationId") REFERENCES "DbSecurity"."UserAuthorization"("UserAuthorizationId")
		ON UPDATE RESTRICT
		ON DELETE RESTRICT;


ALTER TABLE "SystemVersioned"."Employee"
	ADD CONSTRAINT "FK_UserAuthorization_Employee" FOREIGN KEY ("UserAuthorizationId") REFERENCES "DbSecurity"."UserAuthorization"("UserAuthorizationId")
		ON UPDATE RESTRICT
		ON DELETE RESTRICT;


ALTER TABLE "Triggered"."Employee"
	ADD CONSTRAINT "FK_UserAuthorization_Employee" FOREIGN KEY ("UserAuthorizationId") REFERENCES "DbSecurity"."UserAuthorization"("UserAuthorizationId")
		ON UPDATE RESTRICT
		ON DELETE RESTRICT;

ALTER TABLE "Triggered"."Employee"
	ADD CONSTRAINT "FK_UserAuthorization_Employee" FOREIGN KEY ("UserAuthorizationId") REFERENCES "DbSecurity"."UserAuthorization"("UserAuthorizationId")
		ON UPDATE SET NULL
		ON DELETE SET NULL;


ALTER TABLE "dbo"."Nums"
	ADD CONSTRAINT "FK_UserAuthorization_Nums" FOREIGN KEY ("UserAuthorizationId") REFERENCES "DbSecurity"."UserAuthorization"("UserAuthorizationId")
		ON UPDATE RESTRICT
		ON DELETE RESTRICT;


ALTER TABLE "Sales"."Order"
	ADD CONSTRAINT "FK_Employee_Order" FOREIGN KEY ("EmployeeId") REFERENCES "HumanResources"."Employee"("EmployeeId")
		ON UPDATE NO ACTION
		ON DELETE NO ACTION;

ALTER TABLE "Sales"."Order"
	ADD CONSTRAINT "FK_Customer_Order" FOREIGN KEY ("CustomerId") REFERENCES "Sales"."Customer"("CustomerId")
		ON UPDATE NO ACTION
		ON DELETE NO ACTION;

ALTER TABLE "Sales"."Order"
	ADD CONSTRAINT "FK_UserAuthorization_Order" FOREIGN KEY ("UserAuthorizationId") REFERENCES "DbSecurity"."UserAuthorization"("UserAuthorizationId")
		ON UPDATE RESTRICT
		ON DELETE RESTRICT;

ALTER TABLE "Sales"."Order"
	ADD CONSTRAINT "FK_Shipper_Order" FOREIGN KEY ("ShipperId") REFERENCES "Sales"."Shipper"("ShipperId")
		ON UPDATE SET NULL
		ON DELETE SET NULL;


ALTER TABLE "Sales"."OrderDetail"
	ADD CONSTRAINT "FK_Order_OrderDetail" FOREIGN KEY ("OrderId") REFERENCES "Sales"."Order"("OrderId")
		ON UPDATE NO ACTION
		ON DELETE NO ACTION;

ALTER TABLE "Sales"."OrderDetail"
	ADD CONSTRAINT "FK_Product_OrderDetail" FOREIGN KEY ("ProductId") REFERENCES "Production"."Product"("ProductId")
		ON UPDATE NO ACTION
		ON DELETE NO ACTION;

ALTER TABLE "Sales"."OrderDetail"
	ADD CONSTRAINT "FK_UserAuthorization_OrderDetail" FOREIGN KEY ("UserAuthorizationId") REFERENCES "DbSecurity"."UserAuthorization"("UserAuthorizationId")
		ON UPDATE RESTRICT
		ON DELETE RESTRICT;


ALTER TABLE "Production"."Product"
	ADD CONSTRAINT "FK_Category_Product" FOREIGN KEY ("CategoryId") REFERENCES "Production"."Category"("CategoryId")
		ON UPDATE NO ACTION
		ON DELETE NO ACTION;

ALTER TABLE "Production"."Product"
	ADD CONSTRAINT "FK_Supplier_Product" FOREIGN KEY ("SupplierId") REFERENCES "Production"."Supplier"("SupplierId")
		ON UPDATE NO ACTION
		ON DELETE NO ACTION;

ALTER TABLE "Production"."Product"
	ADD CONSTRAINT "FK_UserAuthorization_Product" FOREIGN KEY ("UserAuthorizationId") REFERENCES "DbSecurity"."UserAuthorization"("UserAuthorizationId")
		ON UPDATE RESTRICT
		ON DELETE RESTRICT;


ALTER TABLE "Sales"."Shipper"
	ADD CONSTRAINT "FK_UserAuthorization_Shipper" FOREIGN KEY ("UserAuthorizationId") REFERENCES "DbSecurity"."UserAuthorization"("UserAuthorizationId")
		ON UPDATE RESTRICT
		ON DELETE RESTRICT;


ALTER TABLE "Production"."Supplier"
	ADD CONSTRAINT "FK_UserAuthorization_Supplier" FOREIGN KEY ("UserAuthorizationId") REFERENCES "DbSecurity"."UserAuthorization"("UserAuthorizationId")
		ON UPDATE RESTRICT
		ON DELETE RESTRICT;


ALTER TABLE "Audit"."VersionedEmployeeHistory"
	ADD CONSTRAINT "FK_UserAuthorization_VersionedEmployeeHistory" FOREIGN KEY ("UserAuthorizationId") REFERENCES "DbSecurity"."UserAuthorization"("UserAuthorizationId")
		ON UPDATE RESTRICT
		ON DELETE RESTRICT;

ALTER TABLE "Audit"."VersionedEmployeeHistory"
	ADD CONSTRAINT "FK_Employee_VersionedEmployeeHistory" FOREIGN KEY ("EmployeeId") REFERENCES "Triggered"."Employee"("EmployeeId")
		ON UPDATE RESTRICT
		ON DELETE RESTRICT;

ALTER TABLE "Audit"."VersionedEmployeeHistory"
	ADD CONSTRAINT "FK_Employee_VersionedEmployeeHistory" FOREIGN KEY ("EmployeeId") REFERENCES "Triggered"."Employee"("EmployeeId")
		ON UPDATE RESTRICT
		ON DELETE RESTRICT;


CREATE OR REPLACE FUNCTION before_insert_I_AuditTriggeredEmployeeHisto () 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Employee (Employee to AuditTriggeredEmployeeHistory) AuditTriggeredEmployeeHistory on child insert restrict */
    /* ERWIN_RELATION CHECKSUM="0002f9d6", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="AuditTriggeredEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to AuditTriggeredEmployeeHistory)", C2P_VERB_PHRASE="(AuditTriggeredEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_AuditTriggeredEmployeeHistory", FK_COLUMNS="EmployeeId" */
    SELECT count(*) INTO NUMROWS
      FROM Employee
      WHERE
        /* %JoinFKPK( %New,Employee," = "," AND") */
         new.EmployeeId = Employee.EmployeeId;
    IF (
      /* %NotnullFK( %New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
RAISE EXCEPTION 'Cannot insert AuditTriggeredEmployeeHistory because Employee does not exist.';
    END IF;

     * erwin Builtin Trigger * 
     * UserAuthorization (UserAuthorization to AuditTriggeredEmployeeHistory) AuditTriggeredEmployeeHistory on child insert restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="AuditTriggeredEmployeeHistory"
    P2C_VERB_PHRASE="(UserAuthorization to AuditTriggeredEmployeeHistory)", C2P_VERB_PHRASE="(AuditTriggeredEmployeeHistory from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_AuditTriggeredEmployeeHistory", FK_COLUMNS="UserAuthorizationId" * 
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
         * %JoinFKPK( %New,UserAuthorization," = "," AND") * 
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
       * %NotnullFK( %New," IS NOT NULL AND") * 
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert AuditTriggeredEmployeeHistory because UserAuthorization does not exist.'
      );
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER tI_AuditTriggeredEmployeeHisto BEFORE INSERT ON public."AuditTriggeredEmployeeHistory" for each row
EXECUTE PROCEDURE before_insert_I_AuditTriggeredEmployeeHisto ();


CREATE OR REPLACE FUNCTION aft_update_U_AuditTriggeredEmployeeHisto() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
  /* erwin Builtin Trigger */
  /* Employee (Employee to AuditTriggeredEmployeeHistory) AuditTriggeredEmployeeHistory on child update restrict */
  /* ERWIN_RELATION CHECKSUM="0002fb1d", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="AuditTriggeredEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to AuditTriggeredEmployeeHistory)", C2P_VERB_PHRASE="(AuditTriggeredEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_AuditTriggeredEmployeeHistory", FK_COLUMNS="EmployeeId" */
  SELECT count(*) INTO NUMROWS
    FROM Employee
    WHERE
      /* %JoinFKPK( %New,Employee," = "," AND") */
       new.EmployeeId = Employee.EmployeeId;
  IF (
    /* %NotnullFK( %New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
RAISE EXCEPTION 'Cannot update AuditTriggeredEmployeeHistory because Employee does not exist.';
  END IF;

   * erwin Builtin Trigger * 
   * UserAuthorization (UserAuthorization to AuditTriggeredEmployeeHistory) AuditTriggeredEmployeeHistory on child update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="AuditTriggeredEmployeeHistory"
    P2C_VERB_PHRASE="(UserAuthorization to AuditTriggeredEmployeeHistory)", C2P_VERB_PHRASE="(AuditTriggeredEmployeeHistory from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_AuditTriggeredEmployeeHistory", FK_COLUMNS="UserAuthorizationId" * 
  SELECT count(*) INTO NUMROWS
    FROM UserAuthorization
    WHERE
       * %JoinFKPK( %New,UserAuthorization," = "," AND") * 
       new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
  IF (
     * %NotnullFK( %New," IS NOT NULL AND") * 
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update AuditTriggeredEmployeeHistory because UserAuthorization does not exist.'
    );
  END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER tU_AuditTriggeredEmployeeHisto AFTER UPDATE ON public."AuditTriggeredEmployeeHistory" for each row
EXECUTE PROCEDURE aft_update_U_AuditTriggeredEmployeeHisto();



CREATE OR REPLACE FUNCTION before_insert_tD_Category AFTER DELETE ON public."Category" for each row
EXECUTE PROCEDURE aft_delete_tD_Category();

CREATE  TRIGGER tI_Category BEFORE INSERT ON Category for each row
-- erwin Builtin Trigger
-- INSERT trigger on Category 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Category) Category on child insert restrict */
    /* ERWIN_RELATION CHECKSUM="00013642", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Category"
    P2C_VERB_PHRASE="(UserAuthorization to Category)", C2P_VERB_PHRASE="(Category from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Category", FK_COLUMNS="UserAuthorizationId" */
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
        /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
      /* %NotnullFK( %New() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Category (Category to Product) Product on parent delete no action */
    /* ERWIN_RELATION CHECKSUM="0000f647", PARENT_OWNER="", PARENT_TABLE="Category"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(Category to Product)", C2P_VERB_PHRASE="(Product from Category)", 
    FK_CONSTRAINT="FK_Category_Product", FK_COLUMNS="CategoryId" */
    SELECT count(*) INTO NUMROWS
      FROM Product
      WHERE
        /*  %JoinFKPK(Product, %Old," = "," AND") */
        Product.CategoryId =  old.CategoryId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot DELETE Category because Product exists.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Category AFTER DELETE ON public."Category" for each row
EXECUTE PROCEDURE aft_delete_tD_Category();

CREATE  TRIGGER tI_Category BEFORE INSERT ON Category for each row
-- erwin Builtin Trigger
-- INSERT trigger on Category 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Category) Category on child insert restrict */
    /* ERWIN_RELATION CHECKSUM="00013642", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Category"
    P2C_VERB_PHRASE="(UserAuthorization to Category)", C2P_VERB_PHRASE="(Category from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Category", FK_COLUMNS="UserAuthorizationId" */
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
        /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
      /* %NotnullFK( %New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
RAISE EXCEPTION 'Cannot insert Category because UserAuthorization does not exist.';

CREATE  TRIGGER tI_Category BEFORE INSERT ON Category for each row
-- erwin Builtin Trigger
-- INSERT trigger on Category 
DECLARE NUMROWS INTEGER;
BEGIN
     * erwin Builtin Trigger * 
     * UserAuthorization (UserAuthorization to Category) Category on child insert restrict * 
     * ERWIN_RELATION CHECKSUM="00013642", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Category"
    P2C_VERB_PHRASE="(UserAuthorization to Category)", C2P_VERB_PHRASE="(Category from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Category", FK_COLUMNS="UserAuthorizationId" * 
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
         * %JoinFKPK( %New,UserAuthorization," = "," AND") * 
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
       * %NotnullFK( %New," IS NOT NULL AND") * 
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Category because UserAuthorization does not exist.'
      );
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION public."aft_delete_tD_Category() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Category (Category to Product) Product on parent delete no action */
    /* ERWIN_RELATION CHECKSUM="0000f647", PARENT_OWNER="", PARENT_TABLE="Category"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(Category to Product)", C2P_VERB_PHRASE="(Product from Category)", 
    FK_CONSTRAINT="FK_Category_Product", FK_COLUMNS="CategoryId" */
    SELECT count(*) INTO NUMROWS
      FROM Product
      WHERE
        /*  %JoinFKPK(Product, %Old," = "," AND") */
        Product.CategoryId =  old.CategoryId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot DELETE Category because Product exists.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Category AFTER DELETE ON public."Category"" for each row
EXECUTE PROCEDURE before_insert_tD_Category AFTER DELETE ON public."Category" for each row
EXECUTE PROCEDURE aft_delete_tD_Category();

CREATE  TRIGGER tI_Category BEFORE INSERT ON Category for each row
-- erwin Builtin Trigger
-- INSERT trigger on Category 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Category) Category on child insert restrict */
    /* ERWIN_RELATION CHECKSUM="00013642", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Category"
    P2C_VERB_PHRASE="(UserAuthorization to Category)", C2P_VERB_PHRASE="(Category from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Category", FK_COLUMNS="UserAuthorizationId" */
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
        /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
      /* %NotnullFK( %New();


CREATE OR REPLACE FUNCTION aft_update_U_Category() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
  /* erwin Builtin Trigger */
  /* Category (Category to Product) Product on parent update no action */
  /* ERWIN_RELATION CHECKSUM="000295f2", PARENT_OWNER="", PARENT_TABLE="Category"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(Category to Product)", C2P_VERB_PHRASE="(Product from Category)", 
    FK_CONSTRAINT="FK_Category_Product", FK_COLUMNS="CategoryId" */
  IF
    /* %JoinPKPK( %Old, %New," <> "," OR ") */
     old.CategoryId <>  new.CategoryId
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Product
      WHERE
        /*  %JoinFKPK(Product, %Old," = "," AND") */
        Product.CategoryId =  old.CategoryId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot update Category because Product exists.';
    END IF;
  END IF;

   * erwin Builtin Trigger * 
   * UserAuthorization (UserAuthorization to Category) Category on child update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Category"
    P2C_VERB_PHRASE="(UserAuthorization to Category)", C2P_VERB_PHRASE="(Category from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Category", FK_COLUMNS="UserAuthorizationId" * 
  SELECT count(*) INTO NUMROWS
    FROM UserAuthorization
    WHERE
       * %JoinFKPK( %New,UserAuthorization," = "," AND") * 
       new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
  IF (
     * %NotnullFK( %New," IS NOT NULL AND") * 
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Category because UserAuthorization does not exist.'
    );
  END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER tU_Category AFTER UPDATE ON public."Category" for each row
EXECUTE PROCEDURE aft_update_U_Category();



CREATE OR REPLACE FUNCTION before_insert_tD_Customer AFTER DELETE ON public."Customer" for each row
EXECUTE PROCEDURE aft_delete_tD_Customer();

CREATE  TRIGGER tI_Customer BEFORE INSERT ON Customer for each row
-- erwin Builtin Trigger
-- INSERT trigger on Customer 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Customer) Customer on child insert set null */
    /* ERWIN_RELATION CHECKSUM="00013fa3", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="(UserAuthorization to Customer)", C2P_VERB_PHRASE="(Customer from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Customer", FK_COLUMNS="UserAuthorizationId" */
    UPDATE Customer
      SET
        /* %SetFK(Customer,NULL) */
        Customer.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
              /* %Joi() 
RETURNS trigger AS
$$

RAISE EXCEPTION 'Cannot DELETE Customer because Order exists.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Customer AFTER DELETE ON public."Customer" for each row
EXECUTE PROCEDURE aft_delete_tD_Custome;

CREATE  TRIGGER tI_Customer BEFORE INSERT ON Customer for each row
-- erwin Builtin Trigger
-- INSERT trigger on Customer 
DECLARE NUMROWS INTEGER;
BEGIN
     * erwin Builtin Trigger * 
     * UserAuthorization (UserAuthorization to Customer) Customer on child insert set null * 
     * ERWIN_RELATION CHECKSUM="00013fa3", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="(UserAuthorization to Customer)", C2P_VERB_PHRASE="(Customer from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Customer", FK_COLUMNS="UserAuthorizationId" * 
    UPDATE Customer
      SET
         * %SetFK(Customer,NULL) * 
        Customer.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
               * %JoinFKPK( %New,UserAuthorization," = "," AND") * 
               new.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        ) 
         * %JoinPKPK(Customer, %New," = "," AND") * 
        Customer.CustomerId =  new.CustomerId;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION public."aft_delete_tD_Customer() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Customer (Customer to Order) Order on parent delete no action */
    /* ERWIN_RELATION CHECKSUM="0000e62a", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Customer to Order)", C2P_VERB_PHRASE="(Order from Customer)", 
    FK_CONSTRAINT="FK_Customer_Order", FK_COLUMNS="CustomerId" */
    SELECT count(*) INTO NUMROWS
      FROM Order
      WHERE
        /*  %JoinFKPK(Order, %Old," = "," AND") */
        Order.CustomerId =  old.CustomerId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot DELETE Customer because Order exists.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Customer AFTER DELETE ON public."Customer"" for each row
EXECUTE PROCEDURE before_insert_tD_Customer AFTER DELETE ON public."Customer" for each row
EXECUTE PROCEDURE aft_delete_tD_Customer();

CREATE  TRIGGER tI_Customer BEFORE INSERT ON Customer for each row
-- erwin Builtin Trigger
-- INSERT trigger on Customer 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Customer) Customer on child insert set null */
    /* ERWIN_RELATION CHECKSUM="00013fa3", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="(UserAuthorization to Customer)", C2P_VERB_PHRASE="(Customer from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Customer", FK_COLUMNS="UserAuthorizationId" */
    UPDATE Customer
      SET
        /* %SetFK(Customer,NULL) */
        Customer.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
              /* %Joi();


CREATE OR REPLACE FUNCTION aft_update_U_Customer() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
  /* erwin Builtin Trigger */
  /* Customer (Customer to Order) Order on parent update no action */
  /* ERWIN_RELATION CHECKSUM="000209a7", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Customer to Order)", C2P_VERB_PHRASE="(Order from Customer)", 
    FK_CONSTRAINT="FK_Customer_Order", FK_COLUMNS="CustomerId" */
  IF
    /* %JoinPKPK( %Old, %New," <> "," OR ") */
     old.CustomerId <>  new.CustomerId
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Order
      WHERE
        /*  %JoinFKPK(Order, %Old," = "," AND") */
        Order.CustomerId =  old.CustomerId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot update Customer because Order exists.';
    END IF;
  END IF;

     * erwin Builtin Trigger * 
     * UserAuthorization (UserAuthorization to Customer) Customer on child update set null * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="(UserAuthorization to Customer)", C2P_VERB_PHRASE="(Customer from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Customer", FK_COLUMNS="UserAuthorizationId" * 
     * Not Implemented due to an ORA-04091 Mutating Table Issue * 
    NULL;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER tU_Customer AFTER UPDATE ON public."Customer" for each row
EXECUTE PROCEDURE aft_update_U_Customer();



CREATE OR REPLACE FUNCTION before_insert_tD_Employee AFTER DELETE ON public."Employee" for each row
EXECUTE PROCEDURE aft_delete_tD_Employee();

CREATE  TRIGGER tI_Employee BEFORE INSERT ON Employee for each row
-- erwin Builtin Trigger
-- INSERT trigger on Employee 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Employee) Employee on child insert restrict */
    /* ERWIN_RELATION CHECKSUM="000275f3", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
        /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
      /* %NotnullFK( %New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Employee because UserAuthorization does not exist.'
      );
    END IF;

    /* erwin Builtin Trigger */
    /* Employee (Employee to Employee) Employee on child insert set null */
    /* ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(Employee to Employee)", C2P_VERB_PHRASE="(Employee from Employee)", 
    FK_CONSTRAINT="FK_Employee_Employee", FK_COLUMNS="EmployeeManagerId" */
    UPDATE Employee
      SET
        /* %SetFK(Employee,NULL) */
        Employee.EmployeeManagerId = N() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Employee (Employee to Order) Order on parent delete no action */
    /* ERWIN_RELATION CHECKSUM="00020ca4", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Employee to Order)", C2P_VERB_PHRASE="(Order from Employee)", 
    FK_CONSTRAINT="FK_Employee_Order", FK_COLUMNS="EmployeeId" */
    SELECT count(*) INTO NUMROWS
      FROM Order
      WHERE
        /*  %JoinFKPK(Order, %Old," = "," AND") */
        Order.EmployeeId =  old.EmployeeId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot DELETE Employee because Order exists.';
    END IF;

     * erwin Builtin Trigger * 
     * Employee (Employee to Employee) Employee on parent delete no action * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(Employee to Employee)", C2P_VERB_PHRASE="(Employee from Employee)", 
    FK_CONSTRAINT="FK_Employee_Employee", FK_COLUMNS="EmployeeManagerId" * 
    SELECT count(*) INTO NUMROWS
      FROM Employee
      WHERE
         *  %JoinFKPK(Employee, %Old," = "," AND") * 
        Employee.EmployeeManagerId =  old.EmployeeId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot DELETE Employee because Employee exists.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Employee AFTER DELETE ON public."Employee" for each row
EXECUTE PROCEDURE aft_delete_tD_Employee();

CREATE  TRIGGER tI_Employee BEFORE INSERT ON Employee for each row
-- erwin Builtin Trigger
-- INSERT trigger on Employee 
DECLARE NUMROWS INTEGER;
BEGIN
     * erwin Builtin Trigger * 
     * UserAuthorization (UserAuthorization to Employee) Employee on child insert restrict * 
     * ERWIN_RELATION CHECKSUM="000275f3", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" * 
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
         * %JoinFKPK( %New,UserAuthorization," = "," AND") * 
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
       * %NotnullFK( %New," IS NOT NULL AND") * 
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Employee because UserAuthorization does not exist.'
      );
    END IF;

     * erwin Builtin Trigger * 
     * Employee (Employee to Employee) Employee on child insert set null * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(Employee to Employee)", C2P_VERB_PHRASE="(Employee from Employee)", 
    FK_CONSTRAINT="FK_Employee_Employee", FK_COLUMNS="EmployeeManagerId" * 
    UPDATE Employee
      SET
         * %SetFK(Employee,NULL) * 
        Employee.EmployeeManagerId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM Employee
            WHERE
               * %JoinFKPK( %New,Employee," = "," AND") * 
               new.EmployeeManagerId = Employee.EmployeeId
        ) 
         * %JoinPKPK(Employee, %New," = "," AND") * 
        Employee.EmployeeId =  new.EmployeeId;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION public."aft_delete_tD_Employee() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Employee (Employee to Order) Order on parent delete no action */
    /* ERWIN_RELATION CHECKSUM="00020ca4", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Employee to Order)", C2P_VERB_PHRASE="(Order from Employee)", 
    FK_CONSTRAINT="FK_Employee_Order", FK_COLUMNS="EmployeeId" */
    SELECT count(*) INTO NUMROWS
      FROM Order
      WHERE
        /*  %JoinFKPK(Order, %Old," = "," AND") */
        Order.EmployeeId =  old.EmployeeId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot DELETE Employee because Order exists.';
    END IF;

     * erwin Builtin Trigger * 
     * Employee (Employee to Employee) Employee on parent delete no action * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(Employee to Employee)", C2P_VERB_PHRASE="(Employee from Employee)", 
    FK_CONSTRAINT="FK_Employee_Employee", FK_COLUMNS="EmployeeManagerId" * 
    SELECT count(*) INTO NUMROWS
      FROM Employee
      WHERE
         *  %JoinFKPK(Employee, %Old," = "," AND") * 
        Employee.EmployeeManagerId =  old.EmployeeId;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot DELETE Employee because Employee exists.'
      );
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Employee AFTER DELETE ON public."Employee"" for each row
EXECUTE PROCEDURE before_insert_tD_Employee AFTER DELETE ON public."Employee" for each row
EXECUTE PROCEDURE aft_delete_tD_Employee();

CREATE  TRIGGER tI_Employee BEFORE INSERT ON Employee for each row
-- erwin Builtin Trigger
-- INSERT trigger on Employee 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Employee) Employee on child insert restrict */
    /* ERWIN_RELATION CHECKSUM="000275f3", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
        /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
      /* %NotnullFK( %New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Employee because UserAuthorization does not exist.'
      );
    END IF;

    /* erwin Builtin Trigger */
    /* Employee (Employee to Employee) Employee on child insert set null */
    /* ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(Employee to Employee)", C2P_VERB_PHRASE="(Employee from Employee)", 
    FK_CONSTRAINT="FK_Employee_Employee", FK_COLUMNS="EmployeeManagerId" */
    UPDATE Employee
      SET
        /* %SetFK(Employee,NULL) */
        Employee.EmployeeManagerId = N();


CREATE OR REPLACE FUNCTION aft_update_U_Employee() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
  /* erwin Builtin Trigger */
  /* Employee (Employee to Order) Order on parent update no action */
  /* ERWIN_RELATION CHECKSUM="00047fd4", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Employee to Order)", C2P_VERB_PHRASE="(Order from Employee)", 
    FK_CONSTRAINT="FK_Employee_Order", FK_COLUMNS="EmployeeId" */
  IF
    /* %JoinPKPK( %Old, %New," <> "," OR ") */
     old.EmployeeId <>  new.EmployeeId
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Order
      WHERE
        /*  %JoinFKPK(Order, %Old," = "," AND") */
        Order.EmployeeId =  old.EmployeeId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot update Employee because Order exists.';
    END IF;
  END IF;

   * erwin Builtin Trigger * 
   * Employee (Employee to Employee) Employee on parent update no action * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(Employee to Employee)", C2P_VERB_PHRASE="(Employee from Employee)", 
    FK_CONSTRAINT="FK_Employee_Employee", FK_COLUMNS="EmployeeManagerId" * 
  IF
     * %JoinPKPK( %Old, %New," <> "," OR ") * 
     old.EmployeeId <>  new.EmployeeId
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Employee
      WHERE
         *  %JoinFKPK(Employee, %Old," = "," AND") * 
        Employee.EmployeeManagerId =  old.EmployeeId;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Employee because Employee exists.'
      );
    END IF;
  END IF;

   * erwin Builtin Trigger * 
   * UserAuthorization (UserAuthorization to Employee) Employee on child update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" * 
  SELECT count(*) INTO NUMROWS
    FROM UserAuthorization
    WHERE
       * %JoinFKPK( %New,UserAuthorization," = "," AND") * 
       new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
  IF (
     * %NotnullFK( %New," IS NOT NULL AND") * 
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Employee because UserAuthorization does not exist.'
    );
  END IF;

     * erwin Builtin Trigger * 
     * Employee (Employee to Employee) Employee on child update set null * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(Employee to Employee)", C2P_VERB_PHRASE="(Employee from Employee)", 
    FK_CONSTRAINT="FK_Employee_Employee", FK_COLUMNS="EmployeeManagerId" * 
     * Not Implemented due to an ORA-04091 Mutating Table Issue * 
    NULL;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER tU_Employee AFTER UPDATE ON public."Employee" for each row
EXECUTE PROCEDURE aft_update_U_Employee();



CREATE OR REPLACE FUNCTION before_insert_I_Employee () 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Employee) Employee on child insert restrict */
    /* ERWIN_RELATION CHECKSUM="0001407b", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
        /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
      /* %NotnullFK( %New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
RAISE EXCEPTION 'Cannot insert Employee because UserAuthorization does not exist.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER tI_Employee BEFORE INSERT ON public."Employee" for each row
EXECUTE PROCEDURE before_insert_I_Employee ();


CREATE OR REPLACE FUNCTION aft_update_U_Employee() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to Employee) Employee on child update restrict */
  /* ERWIN_RELATION CHECKSUM="00014287", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
  SELECT count(*) INTO NUMROWS
    FROM UserAuthorization
    WHERE
      /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
       new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
  IF (
    /* %NotnullFK( %New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
RAISE EXCEPTION 'Cannot update Employee because UserAuthorization does not exist.';
  END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER tU_Employee AFTER UPDATE ON public."Employee" for each row
EXECUTE PROCEDURE aft_update_U_Employee();



CREATE OR REPLACE FUNCTION before_insert_tD_Employee AFTER DELETE ON public."Employee" for each row
EXECUTE PROCEDURE aft_delete_tD_Employee();

CREATE  TRIGGER tI_Employee BEFORE INSERT ON Employee for each row
-- erwin Builtin Trigger
-- INSERT trigger on Employee 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Employee) Employee on child insert set null */
    /* ERWIN_RELATION CHECKSUM="0002a92d", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
    UPDATE Employee
      SET
        /* %SetFK(Employee,NULL) */
        Employee.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
              /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
               new.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        ) 
        /* %JoinPKPK(Employee, %New," = "," AND") */
        Employee.EmployeeId =  new.EmployeeId;

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Employee) Employee on child insert restrict */
    /* ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
        /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
      /* %NotnullFK( %New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Employee because UserAuthorization does not exist.'
      );
    END IF;


-- erwin Builtin Trigger
END;
/() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Employee (Employee to VersionedEmployeeHistory) VersionedEmployeeHistory on parent delete restrict */
    /* ERWIN_RELATION CHECKSUM="0004215a", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_VersionedEmployeeHistory", FK_COLUMNS="EmployeeId" */
    SELECT count(*) INTO NUMROWS
      FROM VersionedEmployeeHistory
      WHERE
        /*  %JoinFKPK(VersionedEmployeeHistory, %Old," = "," AND") */
        VersionedEmployeeHistory.EmployeeId =  old.EmployeeId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot delete Employee because VersionedEmployeeHistory exists.';
    END IF;

     * erwin Builtin Trigger * 
     * Employee (Employee to AuditTriggeredEmployeeHistory) AuditTriggeredEmployeeHistory on parent delete restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="AuditTriggeredEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to AuditTriggeredEmployeeHistory)", C2P_VERB_PHRASE="(AuditTriggeredEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_AuditTriggeredEmployeeHistory", FK_COLUMNS="EmployeeId" * 
    SELECT count(*) INTO NUMROWS
      FROM AuditTriggeredEmployeeHistory
      WHERE
         *  %JoinFKPK(AuditTriggeredEmployeeHistory, %Old," = "," AND") * 
        AuditTriggeredEmployeeHistory.EmployeeId =  old.EmployeeId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot delete Employee because AuditTriggeredEmployeeHistory exists.';
    END IF;

     * erwin Builtin Trigger * 
     * Employee (Employee to VersionedEmployeeHistory) VersionedEmployeeHistory on parent delete restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_VersionedEmployeeHistory", FK_COLUMNS="EmployeeId" * 
    SELECT count(*) INTO NUMROWS
      FROM VersionedEmployeeHistory
      WHERE
         *  %JoinFKPK(VersionedEmployeeHistory, %Old," = "," AND") * 
        VersionedEmployeeHistory.EmployeeId =  old.EmployeeId;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Employee because VersionedEmployeeHistory exists.'
      );
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Employee AFTER DELETE ON public."Employee" for each row
EXECUTE PROCEDURE aft_delete_tD_Employee();

CREATE  TRIGGER tI_Employee BEFORE INSERT ON Employee for each row
-- erwin Builtin Trigger
-- INSERT trigger on Employee 
DECLARE NUMROWS INTEGER;
BEGIN
     * erwin Builtin Trigger * 
     * UserAuthorization (UserAuthorization to Employee) Employee on child insert set null * 
     * ERWIN_RELATION CHECKSUM="0002a92d", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" * 
    UPDATE Employee
      SET
         * %SetFK(Employee,NULL) * 
        Employee.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
               * %JoinFKPK( %New,UserAuthorization," = "," AND") * 
               new.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        ) 
         * %JoinPKPK(Employee, %New," = "," AND") * 
        Employee.EmployeeId =  new.EmployeeId;

     * erwin Builtin Trigger * 
     * UserAuthorization (UserAuthorization to Employee) Employee on child insert restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" * 
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
         * %JoinFKPK( %New,UserAuthorization," = "," AND") * 
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
       * %NotnullFK( %New," IS NOT NULL AND") * 
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Employee because UserAuthorization does not exist.'
      );
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION public."aft_delete_tD_Employee() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Employee (Employee to VersionedEmployeeHistory) VersionedEmployeeHistory on parent delete restrict */
    /* ERWIN_RELATION CHECKSUM="0004215a", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_VersionedEmployeeHistory", FK_COLUMNS="EmployeeId" */
    SELECT count(*) INTO NUMROWS
      FROM VersionedEmployeeHistory
      WHERE
        /*  %JoinFKPK(VersionedEmployeeHistory, %Old," = "," AND") */
        VersionedEmployeeHistory.EmployeeId =  old.EmployeeId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot delete Employee because VersionedEmployeeHistory exists.';
    END IF;

     * erwin Builtin Trigger * 
     * Employee (Employee to AuditTriggeredEmployeeHistory) AuditTriggeredEmployeeHistory on parent delete restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="AuditTriggeredEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to AuditTriggeredEmployeeHistory)", C2P_VERB_PHRASE="(AuditTriggeredEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_AuditTriggeredEmployeeHistory", FK_COLUMNS="EmployeeId" * 
    SELECT count(*) INTO NUMROWS
      FROM AuditTriggeredEmployeeHistory
      WHERE
         *  %JoinFKPK(AuditTriggeredEmployeeHistory, %Old," = "," AND") * 
        AuditTriggeredEmployeeHistory.EmployeeId =  old.EmployeeId;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Employee because AuditTriggeredEmployeeHistory exists.'
      );
    END IF;

     * erwin Builtin Trigger * 
     * Employee (Employee to VersionedEmployeeHistory) VersionedEmployeeHistory on parent delete restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_VersionedEmployeeHistory", FK_COLUMNS="EmployeeId" * 
    SELECT count(*) INTO NUMROWS
      FROM VersionedEmployeeHistory
      WHERE
         *  %JoinFKPK(VersionedEmployeeHistory, %Old," = "," AND") * 
        VersionedEmployeeHistory.EmployeeId =  old.EmployeeId;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Employee because VersionedEmployeeHistory exists.'
      );
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Employee AFTER DELETE ON public."Employee"" for each row
EXECUTE PROCEDURE before_insert_tD_Employee AFTER DELETE ON public."Employee" for each row
EXECUTE PROCEDURE aft_delete_tD_Employee();

CREATE  TRIGGER tI_Employee BEFORE INSERT ON Employee for each row
-- erwin Builtin Trigger
-- INSERT trigger on Employee 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Employee) Employee on child insert set null */
    /* ERWIN_RELATION CHECKSUM="0002a92d", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
    UPDATE Employee
      SET
        /* %SetFK(Employee,NULL) */
        Employee.UserAuthorizationId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UserAuthorization
            WHERE
              /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
               new.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        ) 
        /* %JoinPKPK(Employee, %New," = "," AND") */
        Employee.EmployeeId =  new.EmployeeId;

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Employee) Employee on child insert restrict */
    /* ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
        /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
      /* %NotnullFK( %New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Employee because UserAuthorization does not exist.'
      );
    END IF;


-- erwin Builtin Trigger
END;
/();


CREATE OR REPLACE FUNCTION aft_update_U_Employee() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
  /* erwin Builtin Trigger */
  /* Employee (Employee to VersionedEmployeeHistory) VersionedEmployeeHistory on parent update restrict */
  /* ERWIN_RELATION CHECKSUM="0006e08f", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_VersionedEmployeeHistory", FK_COLUMNS="EmployeeId" */
  IF
    /* %JoinPKPK( %Old, %New," <> "," OR ") */
     old.EmployeeId <>  new.EmployeeId
  THEN
    SELECT count(*) INTO NUMROWS
      FROM VersionedEmployeeHistory
      WHERE
        /*  %JoinFKPK(VersionedEmployeeHistory, %Old," = "," AND") */
        VersionedEmployeeHistory.EmployeeId =  old.EmployeeId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot update Employee because VersionedEmployeeHistory exists.';
    END IF;
  END IF;

   * erwin Builtin Trigger * 
   * Employee (Employee to AuditTriggeredEmployeeHistory) AuditTriggeredEmployeeHistory on parent update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="AuditTriggeredEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to AuditTriggeredEmployeeHistory)", C2P_VERB_PHRASE="(AuditTriggeredEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_AuditTriggeredEmployeeHistory", FK_COLUMNS="EmployeeId" * 
  IF
     * %JoinPKPK( %Old, %New," <> "," OR ") * 
     old.EmployeeId <>  new.EmployeeId
  THEN
    SELECT count(*) INTO NUMROWS
      FROM AuditTriggeredEmployeeHistory
      WHERE
         *  %JoinFKPK(AuditTriggeredEmployeeHistory, %Old," = "," AND") * 
        AuditTriggeredEmployeeHistory.EmployeeId =  old.EmployeeId;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Employee because AuditTriggeredEmployeeHistory exists.'
      );
    END IF;
  END IF;

   * erwin Builtin Trigger * 
   * Employee (Employee to VersionedEmployeeHistory) VersionedEmployeeHistory on parent update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_VersionedEmployeeHistory", FK_COLUMNS="EmployeeId" * 
  IF
     * %JoinPKPK( %Old, %New," <> "," OR ") * 
     old.EmployeeId <>  new.EmployeeId
  THEN
    SELECT count(*) INTO NUMROWS
      FROM VersionedEmployeeHistory
      WHERE
         *  %JoinFKPK(VersionedEmployeeHistory, %Old," = "," AND") * 
        VersionedEmployeeHistory.EmployeeId =  old.EmployeeId;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Employee because VersionedEmployeeHistory exists.'
      );
    END IF;
  END IF;

     * erwin Builtin Trigger * 
     * UserAuthorization (UserAuthorization to Employee) Employee on child update set null * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" * 
     * Not Implemented due to an ORA-04091 Mutating Table Issue * 
    NULL;

   * erwin Builtin Trigger * 
   * UserAuthorization (UserAuthorization to Employee) Employee on child update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" * 
  SELECT count(*) INTO NUMROWS
    FROM UserAuthorization
    WHERE
       * %JoinFKPK( %New,UserAuthorization," = "," AND") * 
       new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
  IF (
     * %NotnullFK( %New," IS NOT NULL AND") * 
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Employee because UserAuthorization does not exist.'
    );
  END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER tU_Employee AFTER UPDATE ON public."Employee" for each row
EXECUTE PROCEDURE aft_update_U_Employee();



CREATE OR REPLACE FUNCTION before_insert_I_Nums () 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Nums) Nums on child insert restrict */
    /* ERWIN_RELATION CHECKSUM="000131e4", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Nums"
    P2C_VERB_PHRASE="(UserAuthorization to Nums)", C2P_VERB_PHRASE="(Nums from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Nums", FK_COLUMNS="UserAuthorizationId" */
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
        /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
      /* %NotnullFK( %New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
RAISE EXCEPTION 'Cannot insert Nums because UserAuthorization does not exist.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER tI_Nums BEFORE INSERT ON public."Nums" for each row
EXECUTE PROCEDURE before_insert_I_Nums ();


CREATE OR REPLACE FUNCTION aft_update_U_Nums() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to Nums) Nums on child update restrict */
  /* ERWIN_RELATION CHECKSUM="0001356c", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Nums"
    P2C_VERB_PHRASE="(UserAuthorization to Nums)", C2P_VERB_PHRASE="(Nums from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Nums", FK_COLUMNS="UserAuthorizationId" */
  SELECT count(*) INTO NUMROWS
    FROM UserAuthorization
    WHERE
      /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
       new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
  IF (
    /* %NotnullFK( %New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
RAISE EXCEPTION 'Cannot update Nums because UserAuthorization does not exist.';
  END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER tU_Nums AFTER UPDATE ON public."Nums" for each row
EXECUTE PROCEDURE aft_update_U_Nums();



CREATE OR REPLACE FUNCTION before_insert_tD_Order AFTER DELETE ON public."Order" for each row
EXECUTE PROCEDURE aft_delete_tD_Order();

CREATE  TRIGGER tI_Order BEFORE INSERT ON Order for each row
-- erwin Builtin Trigger
-- INSERT trigger on Order 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Shipper (Shipper to Order) Order on child insert set null */
    /* ERWIN_RELATION CHECKSUM="0004906f", PARENT_OWNER="", PARENT_TABLE="Shipper"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Shipper to Order)", C2P_VERB_PHRASE="(Order from Shipper)", 
    FK_CONSTRAINT="FK_Shipper_Order", FK_COLUMNS="ShipperId" */
    UPDATE Order
      SET
        /* %SetFK(Order,NULL) */
        Order.ShipperId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM Shipper
            WHERE
              /* %JoinFKPK( %New,Shipper," = "," AND") */
               new.ShipperId = Shipper.ShipperId
        ) 
        /* %JoinPKPK(Order, %New," = "," AND") */
   () 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Order (Order to OrderDetail) OrderDetail on parent delete no action */
    /* ERWIN_RELATION CHECKSUM="0000f676", PARENT_OWNER="", PARENT_TABLE="Order"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(Order to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from Order)", 
    FK_CONSTRAINT="FK_Order_OrderDetail", FK_COLUMNS="OrderId" */
    SELECT count(*) INTO NUMROWS
      FROM OrderDetail
      WHERE
        /*  %JoinFKPK(OrderDetail, %Old," = "," AND") */
        OrderDetail.OrderId =  old.OrderId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot DELETE Order because OrderDetail exists.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Order AFTER DELETE ON public."Order" for each row
EXECUTE PROCEDURE aft_delete_tD_Order();

CREATE  TRIGGER tI_Order BEFORE INSERT ON Order for each row
-- erwin Builtin Trigger
-- INSERT trigger on Order 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Shipper (Shipper to Order) Order on child insert set null */
    /* ERWIN_RELATION CHECKSUM="0004906f", PARENT_OWNER="", PARENT_TABLE="Shipper"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Shipper to Order)", C2P_VERB_PHRASE="(Order from Shipper)", 
    FK_CONSTRAINT="FK_Shipper_Order", FK_COLUMNS="ShipperId" */
    UPDATE Order
      SET
        /* %SetFK(Order,NULL) */
        Order.ShipperId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM Shipper
            WHERE
              /* %JoinFKPK( %New,Shipper," = "," AND") */
               new.ShipperId = Shipper.ShipperId
        ) 
        /* %JoinPKPK(Order, %New," = "," AND") */
        Order.OrderId =  new.OrderId;

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Order) Order on child insert restrict */
    /* ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(UserAuthorization to Order)", C2P_VERB_PHRASE="(Order from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Order", FK_COLUMNS="UserAuthorizationId" */
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
        /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
      /* %NotnullFK( %New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
RAISE EXCEPTION 'Cannot insert Order because UserAuthorization does not exist.';

CREATE  TRIGGER tI_Order BEFORE INSERT ON Order for each row
-- erwin Builtin Trigger
-- INSERT trigger on Order 
DECLARE NUMROWS INTEGER;
BEGIN
     * erwin Builtin Trigger * 
     * Shipper (Shipper to Order) Order on child insert set null * 
     * ERWIN_RELATION CHECKSUM="0004906f", PARENT_OWNER="", PARENT_TABLE="Shipper"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Shipper to Order)", C2P_VERB_PHRASE="(Order from Shipper)", 
    FK_CONSTRAINT="FK_Shipper_Order", FK_COLUMNS="ShipperId" * 
    UPDATE Order
      SET
         * %SetFK(Order,NULL) * 
        Order.ShipperId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM Shipper
            WHERE
               * %JoinFKPK( %New,Shipper," = "," AND") * 
               new.ShipperId = Shipper.ShipperId
        ) 
         * %JoinPKPK(Order, %New," = "," AND") * 
        Order.OrderId =  new.OrderId;

     * erwin Builtin Trigger * 
     * UserAuthorization (UserAuthorization to Order) Order on child insert restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(UserAuthorization to Order)", C2P_VERB_PHRASE="(Order from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Order", FK_COLUMNS="UserAuthorizationId" * 
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
         * %JoinFKPK( %New,UserAuthorization," = "," AND") * 
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
       * %NotnullFK( %New," IS NOT NULL AND") * 
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Order because UserAuthorization does not exist.'
      );
    END IF;

     * erwin Builtin Trigger * 
     * Employee (Employee to Order) Order on child insert restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Employee to Order)", C2P_VERB_PHRASE="(Order from Employee)", 
    FK_CONSTRAINT="FK_Employee_Order", FK_COLUMNS="EmployeeId" * 
    SELECT count(*) INTO NUMROWS
      FROM Employee
      WHERE
         * %JoinFKPK( %New,Employee," = "," AND") * 
         new.EmployeeId = Employee.EmployeeId;
    IF (
       * %NotnullFK( %New," IS NOT NULL AND") * 
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Order because Employee does not exist.'
      );
    END IF;

     * erwin Builtin Trigger * 
     * Customer (Customer to Order) Order on child insert set null * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Customer to Order)", C2P_VERB_PHRASE="(Order from Customer)", 
    FK_CONSTRAINT="FK_Customer_Order", FK_COLUMNS="CustomerId" * 
    UPDATE Order
      SET
         * %SetFK(Order,NULL) * 
        Order.CustomerId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM Customer
            WHERE
               * %JoinFKPK( %New,Customer," = "," AND") * 
               new.CustomerId = Customer.CustomerId
        ) 
         * %JoinPKPK(Order, %New," = "," AND") * 
        Order.OrderId =  new.OrderId;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION public."aft_delete_tD_Order() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Order (Order to OrderDetail) OrderDetail on parent delete no action */
    /* ERWIN_RELATION CHECKSUM="0000f676", PARENT_OWNER="", PARENT_TABLE="Order"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(Order to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from Order)", 
    FK_CONSTRAINT="FK_Order_OrderDetail", FK_COLUMNS="OrderId" */
    SELECT count(*) INTO NUMROWS
      FROM OrderDetail
      WHERE
        /*  %JoinFKPK(OrderDetail, %Old," = "," AND") */
        OrderDetail.OrderId =  old.OrderId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot DELETE Order because OrderDetail exists.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Order AFTER DELETE ON public."Order"" for each row
EXECUTE PROCEDURE before_insert_tD_Order AFTER DELETE ON public."Order" for each row
EXECUTE PROCEDURE aft_delete_tD_Order();

CREATE  TRIGGER tI_Order BEFORE INSERT ON Order for each row
-- erwin Builtin Trigger
-- INSERT trigger on Order 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Shipper (Shipper to Order) Order on child insert set null */
    /* ERWIN_RELATION CHECKSUM="0004906f", PARENT_OWNER="", PARENT_TABLE="Shipper"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Shipper to Order)", C2P_VERB_PHRASE="(Order from Shipper)", 
    FK_CONSTRAINT="FK_Shipper_Order", FK_COLUMNS="ShipperId" */
    UPDATE Order
      SET
        /* %SetFK(Order,NULL) */
        Order.ShipperId = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM Shipper
            WHERE
              /* %JoinFKPK( %New,Shipper," = "," AND") */
               new.ShipperId = Shipper.ShipperId
        ) 
        /* %JoinPKPK(Order, %New," = "," AND") */
   ();


CREATE OR REPLACE FUNCTION aft_update_U_Order() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
  /* erwin Builtin Trigger */
  /* Order (Order to OrderDetail) OrderDetail on parent update no action */
  /* ERWIN_RELATION CHECKSUM="0004ea1b", PARENT_OWNER="", PARENT_TABLE="Order"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(Order to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from Order)", 
    FK_CONSTRAINT="FK_Order_OrderDetail", FK_COLUMNS="OrderId" */
  IF
    /* %JoinPKPK( %Old, %New," <> "," OR ") */
     old.OrderId <>  new.OrderId
  THEN
    SELECT count(*) INTO NUMROWS
      FROM OrderDetail
      WHERE
        /*  %JoinFKPK(OrderDetail, %Old," = "," AND") */
        OrderDetail.OrderId =  old.OrderId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot update Order because OrderDetail exists.';
    END IF;
  END IF;

     * erwin Builtin Trigger * 
     * Shipper (Shipper to Order) Order on child update set null * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Shipper"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Shipper to Order)", C2P_VERB_PHRASE="(Order from Shipper)", 
    FK_CONSTRAINT="FK_Shipper_Order", FK_COLUMNS="ShipperId" * 
     * Not Implemented due to an ORA-04091 Mutating Table Issue * 
    NULL;

   * erwin Builtin Trigger * 
   * UserAuthorization (UserAuthorization to Order) Order on child update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(UserAuthorization to Order)", C2P_VERB_PHRASE="(Order from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Order", FK_COLUMNS="UserAuthorizationId" * 
  SELECT count(*) INTO NUMROWS
    FROM UserAuthorization
    WHERE
       * %JoinFKPK( %New,UserAuthorization," = "," AND") * 
       new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
  IF (
     * %NotnullFK( %New," IS NOT NULL AND") * 
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Order because UserAuthorization does not exist.'
    );
  END IF;

   * erwin Builtin Trigger * 
   * Employee (Employee to Order) Order on child update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Employee to Order)", C2P_VERB_PHRASE="(Order from Employee)", 
    FK_CONSTRAINT="FK_Employee_Order", FK_COLUMNS="EmployeeId" * 
  SELECT count(*) INTO NUMROWS
    FROM Employee
    WHERE
       * %JoinFKPK( %New,Employee," = "," AND") * 
       new.EmployeeId = Employee.EmployeeId;
  IF (
     * %NotnullFK( %New," IS NOT NULL AND") * 
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Order because Employee does not exist.'
    );
  END IF;

     * erwin Builtin Trigger * 
     * Customer (Customer to Order) Order on child update set null * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Customer to Order)", C2P_VERB_PHRASE="(Order from Customer)", 
    FK_CONSTRAINT="FK_Customer_Order", FK_COLUMNS="CustomerId" * 
     * Not Implemented due to an ORA-04091 Mutating Table Issue * 
    NULL;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER tU_Order AFTER UPDATE ON public."Order" for each row
EXECUTE PROCEDURE aft_update_U_Order();



CREATE OR REPLACE FUNCTION before_insert_I_OrderDetail () 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to OrderDetail) OrderDetail on child insert restrict */
    /* ERWIN_RELATION CHECKSUM="00037e0c", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(UserAuthorization to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_OrderDetail", FK_COLUMNS="UserAuthorizationId" */
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
        /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
      /* %NotnullFK( %New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
RAISE EXCEPTION 'Cannot insert OrderDetail because UserAuthorization does not exist.';
    END IF;

     * erwin Builtin Trigger * 
     * Product (Product to OrderDetail) OrderDetail on child insert restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Product"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(Product to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from Product)", 
    FK_CONSTRAINT="FK_Product_OrderDetail", FK_COLUMNS="ProductId" * 
    SELECT count(*) INTO NUMROWS
      FROM Product
      WHERE
         * %JoinFKPK( %New,Product," = "," AND") * 
         new.ProductId = Product.ProductId;
    IF (
       * %NotnullFK( %New," IS NOT NULL AND") * 
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert OrderDetail because Product does not exist.'
      );
    END IF;

     * erwin Builtin Trigger * 
     * Order (Order to OrderDetail) OrderDetail on child insert restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Order"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(Order to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from Order)", 
    FK_CONSTRAINT="FK_Order_OrderDetail", FK_COLUMNS="OrderId" * 
    SELECT count(*) INTO NUMROWS
      FROM Order
      WHERE
         * %JoinFKPK( %New,Order," = "," AND") * 
         new.OrderId = Order.OrderId;
    IF (
       * %NotnullFK( %New," IS NOT NULL AND") * 
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert OrderDetail because Order does not exist.'
      );
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER tI_OrderDetail BEFORE INSERT ON public."OrderDetail" for each row
EXECUTE PROCEDURE before_insert_I_OrderDetail ();


CREATE OR REPLACE FUNCTION aft_update_U_OrderDetail() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to OrderDetail) OrderDetail on child update restrict */
  /* ERWIN_RELATION CHECKSUM="00039386", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(UserAuthorization to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_OrderDetail", FK_COLUMNS="UserAuthorizationId" */
  SELECT count(*) INTO NUMROWS
    FROM UserAuthorization
    WHERE
      /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
       new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
  IF (
    /* %NotnullFK( %New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
RAISE EXCEPTION 'Cannot update OrderDetail because UserAuthorization does not exist.';
  END IF;

   * erwin Builtin Trigger * 
   * Product (Product to OrderDetail) OrderDetail on child update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Product"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(Product to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from Product)", 
    FK_CONSTRAINT="FK_Product_OrderDetail", FK_COLUMNS="ProductId" * 
  SELECT count(*) INTO NUMROWS
    FROM Product
    WHERE
       * %JoinFKPK( %New,Product," = "," AND") * 
       new.ProductId = Product.ProductId;
  IF (
     * %NotnullFK( %New," IS NOT NULL AND") * 
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update OrderDetail because Product does not exist.'
    );
  END IF;

   * erwin Builtin Trigger * 
   * Order (Order to OrderDetail) OrderDetail on child update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Order"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(Order to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from Order)", 
    FK_CONSTRAINT="FK_Order_OrderDetail", FK_COLUMNS="OrderId" * 
  SELECT count(*) INTO NUMROWS
    FROM Order
    WHERE
       * %JoinFKPK( %New,Order," = "," AND") * 
       new.OrderId = Order.OrderId;
  IF (
     * %NotnullFK( %New," IS NOT NULL AND") * 
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update OrderDetail because Order does not exist.'
    );
  END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER tU_OrderDetail AFTER UPDATE ON public."OrderDetail" for each row
EXECUTE PROCEDURE aft_update_U_OrderDetail();



CREATE OR REPLACE FUNCTION before_insert_tD_Product AFTER DELETE ON public."Product" for each row
EXECUTE PROCEDURE aft_delete_tD_Product();

CREATE  TRIGGER tI_Product BEFORE INSERT ON Product for each row
-- erwin Builtin Trigger
-- INSERT trigger on Product 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Product) Product on child insert restrict */
    /* ERWIN_RELATION CHECKSUM="00038a8b", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(UserAuthorization to Product)", C2P_VERB_PHRASE="(Product from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Product", FK_COLUMNS="UserAuthorizationId" */
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
        /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
      /* %NotnullFK( %New," IS NOT NULL AND") */
      
      () 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Product (Product to OrderDetail) OrderDetail on parent delete no action */
    /* ERWIN_RELATION CHECKSUM="0000f773", PARENT_OWNER="", PARENT_TABLE="Product"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(Product to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from Product)", 
    FK_CONSTRAINT="FK_Product_OrderDetail", FK_COLUMNS="ProductId" */
    SELECT count(*) INTO NUMROWS
      FROM OrderDetail
      WHERE
        /*  %JoinFKPK(OrderDetail, %Old," = "," AND") */
        OrderDetail.ProductId =  old.ProductId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot DELETE Product because OrderDetail exists.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Product AFTER DELETE ON public."Product" for each row
EXECUTE PROCEDURE aft_delete_tD_Product();

CREATE  TRIGGER tI_Product BEFORE INSERT ON Product for each row
-- erwin Builtin Trigger
-- INSERT trigger on Product 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Product) Product on child insert restrict */
    /* ERWIN_RELATION CHECKSUM="00038a8b", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(UserAuthorization to Product)", C2P_VERB_PHRASE="(Product from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Product", FK_COLUMNS="UserAuthorizationId" */
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
        /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
      /* %NotnullFK( %New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
RAISE EXCEPTION 'Cannot insert Product because UserAuthorization does not exist.';

CREATE  TRIGGER tI_Product BEFORE INSERT ON Product for each row
-- erwin Builtin Trigger
-- INSERT trigger on Product 
DECLARE NUMROWS INTEGER;
BEGIN
     * erwin Builtin Trigger * 
     * UserAuthorization (UserAuthorization to Product) Product on child insert restrict * 
     * ERWIN_RELATION CHECKSUM="00038a8b", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(UserAuthorization to Product)", C2P_VERB_PHRASE="(Product from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Product", FK_COLUMNS="UserAuthorizationId" * 
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
         * %JoinFKPK( %New,UserAuthorization," = "," AND") * 
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
       * %NotnullFK( %New," IS NOT NULL AND") * 
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Product because UserAuthorization does not exist.'
      );
    END IF;

     * erwin Builtin Trigger * 
     * Supplier (Supplier to Product) Product on child insert restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(Supplier to Product)", C2P_VERB_PHRASE="(Product from Supplier)", 
    FK_CONSTRAINT="FK_Supplier_Product", FK_COLUMNS="SupplierId" * 
    SELECT count(*) INTO NUMROWS
      FROM Supplier
      WHERE
         * %JoinFKPK( %New,Supplier," = "," AND") * 
         new.SupplierId = Supplier.SupplierId;
    IF (
       * %NotnullFK( %New," IS NOT NULL AND") * 
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Product because Supplier does not exist.'
      );
    END IF;

     * erwin Builtin Trigger * 
     * Category (Category to Product) Product on child insert restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Category"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(Category to Product)", C2P_VERB_PHRASE="(Product from Category)", 
    FK_CONSTRAINT="FK_Category_Product", FK_COLUMNS="CategoryId" * 
    SELECT count(*) INTO NUMROWS
      FROM Category
      WHERE
         * %JoinFKPK( %New,Category," = "," AND") * 
         new.CategoryId = Category.CategoryId;
    IF (
       * %NotnullFK( %New," IS NOT NULL AND") * 
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Product because Category does not exist.'
      );
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION public."aft_delete_tD_Product() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Product (Product to OrderDetail) OrderDetail on parent delete no action */
    /* ERWIN_RELATION CHECKSUM="0000f773", PARENT_OWNER="", PARENT_TABLE="Product"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(Product to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from Product)", 
    FK_CONSTRAINT="FK_Product_OrderDetail", FK_COLUMNS="ProductId" */
    SELECT count(*) INTO NUMROWS
      FROM OrderDetail
      WHERE
        /*  %JoinFKPK(OrderDetail, %Old," = "," AND") */
        OrderDetail.ProductId =  old.ProductId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot DELETE Product because OrderDetail exists.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Product AFTER DELETE ON public."Product"" for each row
EXECUTE PROCEDURE before_insert_tD_Product AFTER DELETE ON public."Product" for each row
EXECUTE PROCEDURE aft_delete_tD_Product();

CREATE  TRIGGER tI_Product BEFORE INSERT ON Product for each row
-- erwin Builtin Trigger
-- INSERT trigger on Product 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Product) Product on child insert restrict */
    /* ERWIN_RELATION CHECKSUM="00038a8b", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(UserAuthorization to Product)", C2P_VERB_PHRASE="(Product from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Product", FK_COLUMNS="UserAuthorizationId" */
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
        /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
      /* %NotnullFK( %New," IS NOT NULL AND") */
      
      ();


CREATE OR REPLACE FUNCTION aft_update_U_Product() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
  /* erwin Builtin Trigger */
  /* Product (Product to OrderDetail) OrderDetail on parent update no action */
  /* ERWIN_RELATION CHECKSUM="0004c272", PARENT_OWNER="", PARENT_TABLE="Product"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(Product to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from Product)", 
    FK_CONSTRAINT="FK_Product_OrderDetail", FK_COLUMNS="ProductId" */
  IF
    /* %JoinPKPK( %Old, %New," <> "," OR ") */
     old.ProductId <>  new.ProductId
  THEN
    SELECT count(*) INTO NUMROWS
      FROM OrderDetail
      WHERE
        /*  %JoinFKPK(OrderDetail, %Old," = "," AND") */
        OrderDetail.ProductId =  old.ProductId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot update Product because OrderDetail exists.';
    END IF;
  END IF;

   * erwin Builtin Trigger * 
   * UserAuthorization (UserAuthorization to Product) Product on child update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(UserAuthorization to Product)", C2P_VERB_PHRASE="(Product from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Product", FK_COLUMNS="UserAuthorizationId" * 
  SELECT count(*) INTO NUMROWS
    FROM UserAuthorization
    WHERE
       * %JoinFKPK( %New,UserAuthorization," = "," AND") * 
       new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
  IF (
     * %NotnullFK( %New," IS NOT NULL AND") * 
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Product because UserAuthorization does not exist.'
    );
  END IF;

   * erwin Builtin Trigger * 
   * Supplier (Supplier to Product) Product on child update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(Supplier to Product)", C2P_VERB_PHRASE="(Product from Supplier)", 
    FK_CONSTRAINT="FK_Supplier_Product", FK_COLUMNS="SupplierId" * 
  SELECT count(*) INTO NUMROWS
    FROM Supplier
    WHERE
       * %JoinFKPK( %New,Supplier," = "," AND") * 
       new.SupplierId = Supplier.SupplierId;
  IF (
     * %NotnullFK( %New," IS NOT NULL AND") * 
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Product because Supplier does not exist.'
    );
  END IF;

   * erwin Builtin Trigger * 
   * Category (Category to Product) Product on child update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Category"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(Category to Product)", C2P_VERB_PHRASE="(Product from Category)", 
    FK_CONSTRAINT="FK_Category_Product", FK_COLUMNS="CategoryId" * 
  SELECT count(*) INTO NUMROWS
    FROM Category
    WHERE
       * %JoinFKPK( %New,Category," = "," AND") * 
       new.CategoryId = Category.CategoryId;
  IF (
     * %NotnullFK( %New," IS NOT NULL AND") * 
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Product because Category does not exist.'
    );
  END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER tU_Product AFTER UPDATE ON public."Product" for each row
EXECUTE PROCEDURE aft_update_U_Product();



CREATE OR REPLACE FUNCTION before_insert_tD_Shipper AFTER DELETE ON public."Shipper" for each row
EXECUTE PROCEDURE aft_delete_tD_Shipper();

CREATE  TRIGGER tI_Shipper BEFORE INSERT ON Shipper for each row
-- erwin Builtin Trigger
-- INSERT trigger on Shipper 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Shipper) Shipper on child insert restrict */
    /* ERWIN_RELATION CHECKSUM="00012da3", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Shipper"
    P2C_VERB_PHRASE="(UserAuthorization to Shipper)", C2P_VERB_PHRASE="(Shipper from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Shipper", FK_COLUMNS="UserAuthorizationId" */
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
        /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
         new.UserAuthorizationId = U() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Shipper) Shipper on child insert restrict */
    /* ERWIN_RELATION CHECKSUM="00012da3", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Shipper"
    P2C_VERB_PHRASE="(UserAuthorization to Shipper)", C2P_VERB_PHRASE="(Shipper from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Shipper", FK_COLUMNS="UserAuthorizationId" */
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
        /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
      /* %NotnullFK( %New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
RAISE EXCEPTION 'Cannot insert Shipper because UserAuthorization does not exist.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION public."aft_delete_tD_Shipper() 
RETURNS trigger AS
$$

RAISE EXCEPTION ;ECLARE NUMROWS INTEGER;
BEGIN
     * erwin Builtin Trigger * 
     * Shipper (Shipper to Order) Order on parent delete set null * 
     * ERWIN_RELATION CHECKSUM="0000c293", PARENT_OWNER="", PARENT_TABLE="Shipper"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Shipper to Order)", C2P_VERB_PHRASE="(Order from Shipper)", 
    FK_CONSTRAINT="FK_Shipper_Order", FK_COLUMNS="ShipperId" * 
    UPDATE Order
      SET
         * %SetFK(Order,NULL) * 
        Order.ShipperId = NULL
      WHERE
         * %JoinFKPK(Order, %Old," = "," AND") * 
        Order.ShipperId =  old.ShipperId;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Shipper AFTER DELETE ON public."Shipper"" for each row
EXECUTE PROCEDURE before_insert_tD_Shipper AFTER DELETE ON public."Shipper" for each row
EXECUTE PROCEDURE aft_delete_tD_Shipper();

CREATE  TRIGGER tI_Shipper BEFORE INSERT ON Shipper for each row
-- erwin Builtin Trigger
-- INSERT trigger on Shipper 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Shipper) Shipper on child insert restrict */
    /* ERWIN_RELATION CHECKSUM="00012da3", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Shipper"
    P2C_VERB_PHRASE="(UserAuthorization to Shipper)", C2P_VERB_PHRASE="(Shipper from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Shipper", FK_COLUMNS="UserAuthorizationId" */
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
        /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
         new.UserAuthorizationId = U();


CREATE OR REPLACE FUNCTION aft_update_U_Shipper() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
  /* Shipper (Shipper to Order) Order on parent update set null */
  /* ERWIN_RELATION CHECKSUM="000247f3", PARENT_OWNER="", PARENT_TABLE="Shipper"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Shipper to Order)", C2P_VERB_PHRASE="(Order from Shipper)", 
    FK_CONSTRAINT="FK_Shipper_Order", FK_COLUMNS="ShipperId" */
  IF
    /* %JoinPKPK( %Old, %New," <> "," OR ") */
     old.ShipperId <>  new.ShipperId
  THEN
    UPDATE Order
      SET
        /* %SetFK(Order,NULL) */
        Order.ShipperId = NULL
      WHERE
        /* %JoinFKPK(Order, %Old," = ",",") */
        Order.ShipperId =  old.ShipperId;
  END IF;

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to Shipper) Shipper on child update restrict */
  /* ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Shipper"
    P2C_VERB_PHRASE="(UserAuthorization to Shipper)", C2P_VERB_PHRASE="(Shipper from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Shipper", FK_COLUMNS="UserAuthorizationId" */
  SELECT count(*) INTO NUMROWS
    FROM UserAuthorization
    WHERE
      /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
       new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
  IF (
    /* %NotnullFK( %New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
RAISE EXCEPTION 'Cannot update Shipper because UserAuthorization does not exist.';
  END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER tU_Shipper AFTER UPDATE ON public."Shipper" for each row
EXECUTE PROCEDURE aft_update_U_Shipper();



CREATE OR REPLACE FUNCTION before_insert_tD_Supplier AFTER DELETE ON public."Supplier" for each row
EXECUTE PROCEDURE aft_delete_tD_Supplier();

CREATE  TRIGGER tI_Supplier BEFORE INSERT ON Supplier for each row
-- erwin Builtin Trigger
-- INSERT trigger on Supplier 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Supplier) Supplier on child insert restrict */
    /* ERWIN_RELATION CHECKSUM="00013e48", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Supplier"
    P2C_VERB_PHRASE="(UserAuthorization to Supplier)", C2P_VERB_PHRASE="(Supplier from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Supplier", FK_COLUMNS="UserAuthorizationId" */
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
        /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
      /* %NotnullFK( %New() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Supplier (Supplier to Product) Product on parent delete no action */
    /* ERWIN_RELATION CHECKSUM="0000eb47", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(Supplier to Product)", C2P_VERB_PHRASE="(Product from Supplier)", 
    FK_CONSTRAINT="FK_Supplier_Product", FK_COLUMNS="SupplierId" */
    SELECT count(*) INTO NUMROWS
      FROM Product
      WHERE
        /*  %JoinFKPK(Product, %Old," = "," AND") */
        Product.SupplierId =  old.SupplierId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot DELETE Supplier because Product exists.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Supplier AFTER DELETE ON public."Supplier" for each row
EXECUTE PROCEDURE aft_delete_tD_Supplier();

CREATE  TRIGGER tI_Supplier BEFORE INSERT ON Supplier for each row
-- erwin Builtin Trigger
-- INSERT trigger on Supplier 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Supplier) Supplier on child insert restrict */
    /* ERWIN_RELATION CHECKSUM="00013e48", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Supplier"
    P2C_VERB_PHRASE="(UserAuthorization to Supplier)", C2P_VERB_PHRASE="(Supplier from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Supplier", FK_COLUMNS="UserAuthorizationId" */
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
        /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
      /* %NotnullFK( %New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
RAISE EXCEPTION 'Cannot insert Supplier because UserAuthorization does not exist.';

CREATE  TRIGGER tI_Supplier BEFORE INSERT ON Supplier for each row
-- erwin Builtin Trigger
-- INSERT trigger on Supplier 
DECLARE NUMROWS INTEGER;
BEGIN
     * erwin Builtin Trigger * 
     * UserAuthorization (UserAuthorization to Supplier) Supplier on child insert restrict * 
     * ERWIN_RELATION CHECKSUM="00013e48", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Supplier"
    P2C_VERB_PHRASE="(UserAuthorization to Supplier)", C2P_VERB_PHRASE="(Supplier from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Supplier", FK_COLUMNS="UserAuthorizationId" * 
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
         * %JoinFKPK( %New,UserAuthorization," = "," AND") * 
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
       * %NotnullFK( %New," IS NOT NULL AND") * 
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Supplier because UserAuthorization does not exist.'
      );
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION public."aft_delete_tD_Supplier() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Supplier (Supplier to Product) Product on parent delete no action */
    /* ERWIN_RELATION CHECKSUM="0000eb47", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(Supplier to Product)", C2P_VERB_PHRASE="(Product from Supplier)", 
    FK_CONSTRAINT="FK_Supplier_Product", FK_COLUMNS="SupplierId" */
    SELECT count(*) INTO NUMROWS
      FROM Product
      WHERE
        /*  %JoinFKPK(Product, %Old," = "," AND") */
        Product.SupplierId =  old.SupplierId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot DELETE Supplier because Product exists.';
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_Supplier AFTER DELETE ON public."Supplier"" for each row
EXECUTE PROCEDURE before_insert_tD_Supplier AFTER DELETE ON public."Supplier" for each row
EXECUTE PROCEDURE aft_delete_tD_Supplier();

CREATE  TRIGGER tI_Supplier BEFORE INSERT ON Supplier for each row
-- erwin Builtin Trigger
-- INSERT trigger on Supplier 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Supplier) Supplier on child insert restrict */
    /* ERWIN_RELATION CHECKSUM="00013e48", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Supplier"
    P2C_VERB_PHRASE="(UserAuthorization to Supplier)", C2P_VERB_PHRASE="(Supplier from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Supplier", FK_COLUMNS="UserAuthorizationId" */
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
        /* %JoinFKPK( %New,UserAuthorization," = "," AND") */
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
      /* %NotnullFK( %New();


CREATE OR REPLACE FUNCTION aft_update_U_Supplier() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
  /* erwin Builtin Trigger */
  /* Supplier (Supplier to Product) Product on parent update no action */
  /* ERWIN_RELATION CHECKSUM="00027f66", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(Supplier to Product)", C2P_VERB_PHRASE="(Product from Supplier)", 
    FK_CONSTRAINT="FK_Supplier_Product", FK_COLUMNS="SupplierId" */
  IF
    /* %JoinPKPK( %Old, %New," <> "," OR ") */
     old.SupplierId <>  new.SupplierId
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Product
      WHERE
        /*  %JoinFKPK(Product, %Old," = "," AND") */
        Product.SupplierId =  old.SupplierId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot update Supplier because Product exists.';
    END IF;
  END IF;

   * erwin Builtin Trigger * 
   * UserAuthorization (UserAuthorization to Supplier) Supplier on child update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Supplier"
    P2C_VERB_PHRASE="(UserAuthorization to Supplier)", C2P_VERB_PHRASE="(Supplier from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Supplier", FK_COLUMNS="UserAuthorizationId" * 
  SELECT count(*) INTO NUMROWS
    FROM UserAuthorization
    WHERE
       * %JoinFKPK( %New,UserAuthorization," = "," AND") * 
       new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
  IF (
     * %NotnullFK( %New," IS NOT NULL AND") * 
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Supplier because UserAuthorization does not exist.'
    );
  END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER tU_Supplier AFTER UPDATE ON public."Supplier" for each row
EXECUTE PROCEDURE aft_update_U_Supplier();



CREATE OR REPLACE FUNCTION aft_delete_tD_UserAuthorization() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Employee) Employee on parent delete set null */
    /* ERWIN_RELATION CHECKSUM="0011aad0", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
    UPDATE Employee
      SET
        /* %SetFK(Employee,NULL) */
        Employee.UserAuthorizationId = NULL
      WHERE
        /* %JoinFKPK(Employee, %Old," = "," AND") */
        Employee.UserAuthorizationId =  old.UserAuthorizationId;

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Customer) Customer on parent delete set null */
    /* ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="(UserAuthorization to Customer)", C2P_VERB_PHRASE="(Customer from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Customer", FK_COLUMNS="UserAuthorizationId" */
    UPDATE Customer
      SET
        /* %SetFK(Customer,NULL) */
        Customer.UserAuthorizationId = NULL
      WHERE
        /* %JoinFKPK(Customer, %Old," = "," AND") */
        Customer.UserAuthorizationId =  old.UserAuthorizationId;

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to VersionedEmployeeHistory) VersionedEmployeeHistory on parent delete restrict */
    /* ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(UserAuthorization to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_VersionedEmployeeHistory", FK_COLUMNS="UserAuthorizationId" */
    SELECT count(*) INTO NUMROWS
      FROM VersionedEmployeeHistory
      WHERE
        /*  %JoinFKPK(VersionedEmployeeHistory, %Old," = "," AND") */
        VersionedEmployeeHistory.UserAuthorizationId =  old.UserAuthorizationId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot delete UserAuthorization because VersionedEmployeeHistory exists.';
    END IF;

     * erwin Builtin Trigger * 
     * UserAuthorization (UserAuthorization to Supplier) Supplier on parent delete restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Supplier"
    P2C_VERB_PHRASE="(UserAuthorization to Supplier)", C2P_VERB_PHRASE="(Supplier from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Supplier", FK_COLUMNS="UserAuthorizationId" * 
    SELECT count(*) INTO NUMROWS
      FROM Supplier
      WHERE
         *  %JoinFKPK(Supplier, %Old," = "," AND") * 
        Supplier.UserAuthorizationId =  old.UserAuthorizationId;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete UserAuthorization because Supplier exists.'
      );
    END IF;

     * erwin Builtin Trigger * 
     * UserAuthorization (UserAuthorization to Shipper) Shipper on parent delete restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Shipper"
    P2C_VERB_PHRASE="(UserAuthorization to Shipper)", C2P_VERB_PHRASE="(Shipper from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Shipper", FK_COLUMNS="UserAuthorizationId" * 
    SELECT count(*) INTO NUMROWS
      FROM Shipper
      WHERE
         *  %JoinFKPK(Shipper, %Old," = "," AND") * 
        Shipper.UserAuthorizationId =  old.UserAuthorizationId;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete UserAuthorization because Shipper exists.'
      );
    END IF;

     * erwin Builtin Trigger * 
     * UserAuthorization (UserAuthorization to Product) Product on parent delete restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(UserAuthorization to Product)", C2P_VERB_PHRASE="(Product from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Product", FK_COLUMNS="UserAuthorizationId" * 
    SELECT count(*) INTO NUMROWS
      FROM Product
      WHERE
         *  %JoinFKPK(Product, %Old," = "," AND") * 
        Product.UserAuthorizationId =  old.UserAuthorizationId;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete UserAuthorization because Product exists.'
      );
    END IF;

     * erwin Builtin Trigger * 
     * UserAuthorization (UserAuthorization to OrderDetail) OrderDetail on parent delete restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(UserAuthorization to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_OrderDetail", FK_COLUMNS="UserAuthorizationId" * 
    SELECT count(*) INTO NUMROWS
      FROM OrderDetail
      WHERE
         *  %JoinFKPK(OrderDetail, %Old," = "," AND") * 
        OrderDetail.UserAuthorizationId =  old.UserAuthorizationId;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete UserAuthorization because OrderDetail exists.'
      );
    END IF;

     * erwin Builtin Trigger * 
     * UserAuthorization (UserAuthorization to Order) Order on parent delete restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(UserAuthorization to Order)", C2P_VERB_PHRASE="(Order from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Order", FK_COLUMNS="UserAuthorizationId" * 
    SELECT count(*) INTO NUMROWS
      FROM Order
      WHERE
         *  %JoinFKPK(Order, %Old," = "," AND") * 
        Order.UserAuthorizationId =  old.UserAuthorizationId;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete UserAuthorization because Order exists.'
      );
    END IF;

     * erwin Builtin Trigger * 
     * UserAuthorization (UserAuthorization to Nums) Nums on parent delete restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Nums"
    P2C_VERB_PHRASE="(UserAuthorization to Nums)", C2P_VERB_PHRASE="(Nums from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Nums", FK_COLUMNS="UserAuthorizationId" * 
    SELECT count(*) INTO NUMROWS
      FROM Nums
      WHERE
         *  %JoinFKPK(Nums, %Old," = "," AND") * 
        Nums.UserAuthorizationId =  old.UserAuthorizationId;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete UserAuthorization because Nums exists.'
      );
    END IF;

     * erwin Builtin Trigger * 
     * UserAuthorization (UserAuthorization to Employee) Employee on parent delete restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" * 
    SELECT count(*) INTO NUMROWS
      FROM Employee
      WHERE
         *  %JoinFKPK(Employee, %Old," = "," AND") * 
        Employee.UserAuthorizationId =  old.UserAuthorizationId;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete UserAuthorization because Employee exists.'
      );
    END IF;

     * erwin Builtin Trigger * 
     * UserAuthorization (UserAuthorization to AuditTriggeredEmployeeHistory) AuditTriggeredEmployeeHistory on parent delete restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="AuditTriggeredEmployeeHistory"
    P2C_VERB_PHRASE="(UserAuthorization to AuditTriggeredEmployeeHistory)", C2P_VERB_PHRASE="(AuditTriggeredEmployeeHistory from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_AuditTriggeredEmployeeHistory", FK_COLUMNS="UserAuthorizationId" * 
    SELECT count(*) INTO NUMROWS
      FROM AuditTriggeredEmployeeHistory
      WHERE
         *  %JoinFKPK(AuditTriggeredEmployeeHistory, %Old," = "," AND") * 
        AuditTriggeredEmployeeHistory.UserAuthorizationId =  old.UserAuthorizationId;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete UserAuthorization because AuditTriggeredEmployeeHistory exists.'
      );
    END IF;

     * erwin Builtin Trigger * 
     * UserAuthorization (UserAuthorization to Employee) Employee on parent delete restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" * 
    SELECT count(*) INTO NUMROWS
      FROM Employee
      WHERE
         *  %JoinFKPK(Employee, %Old," = "," AND") * 
        Employee.UserAuthorizationId =  old.UserAuthorizationId;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete UserAuthorization because Employee exists.'
      );
    END IF;

     * erwin Builtin Trigger * 
     * UserAuthorization (UserAuthorization to Employee) Employee on parent delete restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" * 
    SELECT count(*) INTO NUMROWS
      FROM Employee
      WHERE
         *  %JoinFKPK(Employee, %Old," = "," AND") * 
        Employee.UserAuthorizationId =  old.UserAuthorizationId;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete UserAuthorization because Employee exists.'
      );
    END IF;

     * erwin Builtin Trigger * 
     * UserAuthorization (UserAuthorization to Category) Category on parent delete restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Category"
    P2C_VERB_PHRASE="(UserAuthorization to Category)", C2P_VERB_PHRASE="(Category from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Category", FK_COLUMNS="UserAuthorizationId" * 
    SELECT count(*) INTO NUMROWS
      FROM Category
      WHERE
         *  %JoinFKPK(Category, %Old," = "," AND") * 
        Category.UserAuthorizationId =  old.UserAuthorizationId;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete UserAuthorization because Category exists.'
      );
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER  tD_UserAuthorization AFTER DELETE ON public."UserAuthorization" for each row
EXECUTE PROCEDURE aft_delete_tD_UserAuthorization();


CREATE OR REPLACE FUNCTION aft_update_U_UserAuthorization() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
  /* UserAuthorization (UserAuthorization to Employee) Employee on parent update set null */
  /* ERWIN_RELATION CHECKSUM="00144d1e", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %JoinPKPK( %Old, %New," <> "," OR ") */
     old.UserAuthorizationId <>  new.UserAuthorizationId
  THEN
    UPDATE Employee
      SET
        /* %SetFK(Employee,NULL) */
        Employee.UserAuthorizationId = NULL
      WHERE
        /* %JoinFKPK(Employee, %Old," = ",",") */
        Employee.UserAuthorizationId =  old.UserAuthorizationId;
  END IF;

  /* UserAuthorization (UserAuthorization to Customer) Customer on parent update set null */
  /* ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="(UserAuthorization to Customer)", C2P_VERB_PHRASE="(Customer from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Customer", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %JoinPKPK( %Old, %New," <> "," OR ") */
     old.UserAuthorizationId <>  new.UserAuthorizationId
  THEN
    UPDATE Customer
      SET
        /* %SetFK(Customer,NULL) */
        Customer.UserAuthorizationId = NULL
      WHERE
        /* %JoinFKPK(Customer, %Old," = ",",") */
        Customer.UserAuthorizationId =  old.UserAuthorizationId;
  END IF;

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to VersionedEmployeeHistory) VersionedEmployeeHistory on parent update restrict */
  /* ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(UserAuthorization to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_VersionedEmployeeHistory", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %JoinPKPK( %Old, %New," <> "," OR ") */
     old.UserAuthorizationId <>  new.UserAuthorizationId
  THEN
    SELECT count(*) INTO NUMROWS
      FROM VersionedEmployeeHistory
      WHERE
        /*  %JoinFKPK(VersionedEmployeeHistory, %Old," = "," AND") */
        VersionedEmployeeHistory.UserAuthorizationId =  old.UserAuthorizationId;
    IF (NUMROWS > 0)
    THEN
RAISE EXCEPTION 'Cannot update UserAuthorization because VersionedEmployeeHistory exists.';
    END IF;
  END IF;

   * erwin Builtin Trigger * 
   * UserAuthorization (UserAuthorization to Supplier) Supplier on parent update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Supplier"
    P2C_VERB_PHRASE="(UserAuthorization to Supplier)", C2P_VERB_PHRASE="(Supplier from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Supplier", FK_COLUMNS="UserAuthorizationId" * 
  IF
     * %JoinPKPK( %Old, %New," <> "," OR ") * 
     old.UserAuthorizationId <>  new.UserAuthorizationId
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Supplier
      WHERE
         *  %JoinFKPK(Supplier, %Old," = "," AND") * 
        Supplier.UserAuthorizationId =  old.UserAuthorizationId;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update UserAuthorization because Supplier exists.'
      );
    END IF;
  END IF;

   * erwin Builtin Trigger * 
   * UserAuthorization (UserAuthorization to Shipper) Shipper on parent update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Shipper"
    P2C_VERB_PHRASE="(UserAuthorization to Shipper)", C2P_VERB_PHRASE="(Shipper from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Shipper", FK_COLUMNS="UserAuthorizationId" * 
  IF
     * %JoinPKPK( %Old, %New," <> "," OR ") * 
     old.UserAuthorizationId <>  new.UserAuthorizationId
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Shipper
      WHERE
         *  %JoinFKPK(Shipper, %Old," = "," AND") * 
        Shipper.UserAuthorizationId =  old.UserAuthorizationId;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update UserAuthorization because Shipper exists.'
      );
    END IF;
  END IF;

   * erwin Builtin Trigger * 
   * UserAuthorization (UserAuthorization to Product) Product on parent update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(UserAuthorization to Product)", C2P_VERB_PHRASE="(Product from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Product", FK_COLUMNS="UserAuthorizationId" * 
  IF
     * %JoinPKPK( %Old, %New," <> "," OR ") * 
     old.UserAuthorizationId <>  new.UserAuthorizationId
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Product
      WHERE
         *  %JoinFKPK(Product, %Old," = "," AND") * 
        Product.UserAuthorizationId =  old.UserAuthorizationId;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update UserAuthorization because Product exists.'
      );
    END IF;
  END IF;

   * erwin Builtin Trigger * 
   * UserAuthorization (UserAuthorization to OrderDetail) OrderDetail on parent update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(UserAuthorization to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_OrderDetail", FK_COLUMNS="UserAuthorizationId" * 
  IF
     * %JoinPKPK( %Old, %New," <> "," OR ") * 
     old.UserAuthorizationId <>  new.UserAuthorizationId
  THEN
    SELECT count(*) INTO NUMROWS
      FROM OrderDetail
      WHERE
         *  %JoinFKPK(OrderDetail, %Old," = "," AND") * 
        OrderDetail.UserAuthorizationId =  old.UserAuthorizationId;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update UserAuthorization because OrderDetail exists.'
      );
    END IF;
  END IF;

   * erwin Builtin Trigger * 
   * UserAuthorization (UserAuthorization to Order) Order on parent update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(UserAuthorization to Order)", C2P_VERB_PHRASE="(Order from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Order", FK_COLUMNS="UserAuthorizationId" * 
  IF
     * %JoinPKPK( %Old, %New," <> "," OR ") * 
     old.UserAuthorizationId <>  new.UserAuthorizationId
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Order
      WHERE
         *  %JoinFKPK(Order, %Old," = "," AND") * 
        Order.UserAuthorizationId =  old.UserAuthorizationId;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update UserAuthorization because Order exists.'
      );
    END IF;
  END IF;

   * erwin Builtin Trigger * 
   * UserAuthorization (UserAuthorization to Nums) Nums on parent update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Nums"
    P2C_VERB_PHRASE="(UserAuthorization to Nums)", C2P_VERB_PHRASE="(Nums from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Nums", FK_COLUMNS="UserAuthorizationId" * 
  IF
     * %JoinPKPK( %Old, %New," <> "," OR ") * 
     old.UserAuthorizationId <>  new.UserAuthorizationId
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Nums
      WHERE
         *  %JoinFKPK(Nums, %Old," = "," AND") * 
        Nums.UserAuthorizationId =  old.UserAuthorizationId;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update UserAuthorization because Nums exists.'
      );
    END IF;
  END IF;

   * erwin Builtin Trigger * 
   * UserAuthorization (UserAuthorization to Employee) Employee on parent update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" * 
  IF
     * %JoinPKPK( %Old, %New," <> "," OR ") * 
     old.UserAuthorizationId <>  new.UserAuthorizationId
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Employee
      WHERE
         *  %JoinFKPK(Employee, %Old," = "," AND") * 
        Employee.UserAuthorizationId =  old.UserAuthorizationId;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update UserAuthorization because Employee exists.'
      );
    END IF;
  END IF;

   * erwin Builtin Trigger * 
   * UserAuthorization (UserAuthorization to AuditTriggeredEmployeeHistory) AuditTriggeredEmployeeHistory on parent update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="AuditTriggeredEmployeeHistory"
    P2C_VERB_PHRASE="(UserAuthorization to AuditTriggeredEmployeeHistory)", C2P_VERB_PHRASE="(AuditTriggeredEmployeeHistory from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_AuditTriggeredEmployeeHistory", FK_COLUMNS="UserAuthorizationId" * 
  IF
     * %JoinPKPK( %Old, %New," <> "," OR ") * 
     old.UserAuthorizationId <>  new.UserAuthorizationId
  THEN
    SELECT count(*) INTO NUMROWS
      FROM AuditTriggeredEmployeeHistory
      WHERE
         *  %JoinFKPK(AuditTriggeredEmployeeHistory, %Old," = "," AND") * 
        AuditTriggeredEmployeeHistory.UserAuthorizationId =  old.UserAuthorizationId;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update UserAuthorization because AuditTriggeredEmployeeHistory exists.'
      );
    END IF;
  END IF;

   * erwin Builtin Trigger * 
   * UserAuthorization (UserAuthorization to Employee) Employee on parent update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" * 
  IF
     * %JoinPKPK( %Old, %New," <> "," OR ") * 
     old.UserAuthorizationId <>  new.UserAuthorizationId
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Employee
      WHERE
         *  %JoinFKPK(Employee, %Old," = "," AND") * 
        Employee.UserAuthorizationId =  old.UserAuthorizationId;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update UserAuthorization because Employee exists.'
      );
    END IF;
  END IF;

   * erwin Builtin Trigger * 
   * UserAuthorization (UserAuthorization to Employee) Employee on parent update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" * 
  IF
     * %JoinPKPK( %Old, %New," <> "," OR ") * 
     old.UserAuthorizationId <>  new.UserAuthorizationId
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Employee
      WHERE
         *  %JoinFKPK(Employee, %Old," = "," AND") * 
        Employee.UserAuthorizationId =  old.UserAuthorizationId;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update UserAuthorization because Employee exists.'
      );
    END IF;
  END IF;

   * erwin Builtin Trigger * 
   * UserAuthorization (UserAuthorization to Category) Category on parent update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Category"
    P2C_VERB_PHRASE="(UserAuthorization to Category)", C2P_VERB_PHRASE="(Category from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Category", FK_COLUMNS="UserAuthorizationId" * 
  IF
     * %JoinPKPK( %Old, %New," <> "," OR ") * 
     old.UserAuthorizationId <>  new.UserAuthorizationId
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Category
      WHERE
         *  %JoinFKPK(Category, %Old," = "," AND") * 
        Category.UserAuthorizationId =  old.UserAuthorizationId;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update UserAuthorization because Category exists.'
      );
    END IF;
  END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER tU_UserAuthorization AFTER UPDATE ON public."UserAuthorization" for each row
EXECUTE PROCEDURE aft_update_U_UserAuthorization();



CREATE OR REPLACE FUNCTION before_insert_I_VersionedEmployeeHistory () 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Employee (Employee to VersionedEmployeeHistory) VersionedEmployeeHistory on child insert restrict */
    /* ERWIN_RELATION CHECKSUM="0004289a", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_VersionedEmployeeHistory", FK_COLUMNS="EmployeeId" */
    SELECT count(*) INTO NUMROWS
      FROM Employee
      WHERE
        /* %JoinFKPK( %New,Employee," = "," AND") */
         new.EmployeeId = Employee.EmployeeId;
    IF (
      /* %NotnullFK( %New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
RAISE EXCEPTION 'Cannot insert VersionedEmployeeHistory because Employee does not exist.';
    END IF;

     * erwin Builtin Trigger * 
     * Employee (Employee to VersionedEmployeeHistory) VersionedEmployeeHistory on child insert restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_VersionedEmployeeHistory", FK_COLUMNS="EmployeeId" * 
    SELECT count(*) INTO NUMROWS
      FROM Employee
      WHERE
         * %JoinFKPK( %New,Employee," = "," AND") * 
         new.EmployeeId = Employee.EmployeeId;
    IF (
       * %NotnullFK( %New," IS NOT NULL AND") * 
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert VersionedEmployeeHistory because Employee does not exist.'
      );
    END IF;

     * erwin Builtin Trigger * 
     * UserAuthorization (UserAuthorization to VersionedEmployeeHistory) VersionedEmployeeHistory on child insert restrict * 
     * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(UserAuthorization to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_VersionedEmployeeHistory", FK_COLUMNS="UserAuthorizationId" * 
    SELECT count(*) INTO NUMROWS
      FROM UserAuthorization
      WHERE
         * %JoinFKPK( %New,UserAuthorization," = "," AND") * 
         new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
    IF (
       * %NotnullFK( %New," IS NOT NULL AND") * 
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert VersionedEmployeeHistory because UserAuthorization does not exist.'
      );
    END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER tI_VersionedEmployeeHistory BEFORE INSERT ON public."VersionedEmployeeHistory" for each row
EXECUTE PROCEDURE before_insert_I_VersionedEmployeeHistory ();


CREATE OR REPLACE FUNCTION aft_update_U_VersionedEmployeeHistory() 
RETURNS trigger AS
$$
DECLARE NUMROWS INTEGER;
BEGIN
  /* erwin Builtin Trigger */
  /* Employee (Employee to VersionedEmployeeHistory) VersionedEmployeeHistory on child update restrict */
  /* ERWIN_RELATION CHECKSUM="000437cb", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_VersionedEmployeeHistory", FK_COLUMNS="EmployeeId" */
  SELECT count(*) INTO NUMROWS
    FROM Employee
    WHERE
      /* %JoinFKPK( %New,Employee," = "," AND") */
       new.EmployeeId = Employee.EmployeeId;
  IF (
    /* %NotnullFK( %New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
RAISE EXCEPTION 'Cannot update VersionedEmployeeHistory because Employee does not exist.';
  END IF;

   * erwin Builtin Trigger * 
   * Employee (Employee to VersionedEmployeeHistory) VersionedEmployeeHistory on child update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_VersionedEmployeeHistory", FK_COLUMNS="EmployeeId" * 
  SELECT count(*) INTO NUMROWS
    FROM Employee
    WHERE
       * %JoinFKPK( %New,Employee," = "," AND") * 
       new.EmployeeId = Employee.EmployeeId;
  IF (
     * %NotnullFK( %New," IS NOT NULL AND") * 
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update VersionedEmployeeHistory because Employee does not exist.'
    );
  END IF;

   * erwin Builtin Trigger * 
   * UserAuthorization (UserAuthorization to VersionedEmployeeHistory) VersionedEmployeeHistory on child update restrict * 
   * ERWIN_RELATION CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(UserAuthorization to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_VersionedEmployeeHistory", FK_COLUMNS="UserAuthorizationId" * 
  SELECT count(*) INTO NUMROWS
    FROM UserAuthorization
    WHERE
       * %JoinFKPK( %New,UserAuthorization," = "," AND") * 
       new.UserAuthorizationId = UserAuthorization.UserAuthorizationId;
  IF (
     * %NotnullFK( %New," IS NOT NULL AND") * 
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update VersionedEmployeeHistory because UserAuthorization does not exist.'
    );
  END IF;


-- erwin Builtin Trigger
END;
 
$$
LANGUAGE 'plpgsql';

CREATE  TRIGGER tU_VersionedEmployeeHistory AFTER UPDATE ON public."VersionedEmployeeHistory" for each row
EXECUTE PROCEDURE aft_update_U_VersionedEmployeeHistory();

