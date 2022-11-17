
CREATE TABLE AuditTriggeredEmployeeHistory
(
	TriggeredEmployeeHistoryId integer NOT NULL ,
	AuditTriggeredEmployeeHistoryTimestamp BINARY  DEFAULT sysdatetime() NULL ,
	TriggerOption CHAR(1)  DEFAULT 'U' NULL ,
	EmployeeId integer NOT NULL ,
	EmployeeFullName varchar(40) NOT NULL ,
	Department varchar(40) NOT NULL ,
	Salary FIXED NOT NULL ,
	Notes VARCHAR(200)  DEFAULT 'Internal: ' NOT NULL ,
	IsDeleted CHAR(1)  DEFAULT 'N' NULL ,
	TransactionNumber integer  DEFAULT 1 CONSTRAINT CHK_TransactionNumber_1766004043 CHECK (TransactionNumber BETWEEN 1 AND 100000) NULL ,
	UserAuthenticatedKey integer  DEFAULT 37 NULL ,
	SysStartTime BINARY  DEFAULT sysdatetime() NULL ,
	SysEndTime BINARY  DEFAULT '99991231 23:59:59' NULL ,
	TimestampRowChanged BINARY  DEFAULT sysdatetime() NULL ,
	UserAuthorizationId integer NOT NULL ,
	DateAdded BINARY  DEFAULT sysdatetime() CONSTRAINT CHK_Date_158675063 CHECK (@col <= CONVERT([date],sysdatetime)) NULL ,
	DateOfLastUpdate BINARY  DEFAULT sysdatetime() CONSTRAINT CHK_Date_823111003 CHECK (@col <= CONVERT([date],sysdatetime)) NULL 
);

ALTER TABLE AuditTriggeredEmployeeHistory
	ADD  CONSTRAINT PK_TriggeredEmployeeHistoryId PRIMARY KEY  ( TriggeredEmployeeHistoryId );

CREATE UNIQUE INDEX  ix_Employees ON  AuditTriggeredEmployeeHistory
(
	EmployeeId,
	SysStartTime,
	SysEndTime,
	TriggeredEmployeeHistoryId
);

CREATE TABLE Category
(
	CategoryId integer NOT NULL ,
	CategoryName VARCHAR(15) NOT NULL ,
	Description VARCHAR(200)  DEFAULT 'Add a description' CONSTRAINT CHK_Length_Description_2095411 CHECK (len([@col]) <= 200) NOT NULL ,
	UserAuthorizationId integer NOT NULL ,
	DateAdded BINARY  DEFAULT sysdatetime() CONSTRAINT CHK_Date_510224729 CHECK (@col <= CONVERT([date],sysdatetime)) NULL ,
	DateOfLastUpdate BINARY  DEFAULT sysdatetime() CONSTRAINT CHK_Date_1642581697 CHECK (@col <= CONVERT([date],sysdatetime)) NULL 
);

ALTER TABLE Category
	ADD  CONSTRAINT PK_Categories PRIMARY KEY  ( CategoryId );

CREATE TABLE Customer
(
	CustomerId integer NOT NULL ,
	CustomerCompanyName VARCHAR(15) NOT NULL ,
	CustomerContactName VARCHAR(15) NOT NULL ,
	CustomerContactTitle varchar(30) NOT NULL ,
	CustomerAddress VARCHAR(60) NOT NULL ,
	CustomerCity VARCHAR(15) NOT NULL ,
	CustomerRegion VARCHAR(15) NULL ,
	CustomerPostalCode VARCHAR(10) NULL ,
	CustomerCountry VARCHAR(15) NOT NULL ,
	CustomerPhoneNumber VARCHAR(24) CONSTRAINT CHK_PhoneNumber_1141170820 CHECK (len(@col) Between 10 AND 24) NOT NULL ,
	CustomerFaxNumber VARCHAR(24) CONSTRAINT CHK_PhoneNumber_823135965 CHECK (len(@col) Between 10 AND 24) NULL ,
	UserAuthrorizationId integer NULL ,
	DateAdded BINARY  DEFAULT sysdatetime() CONSTRAINT CHK_Date_811299169 CHECK (@col <= CONVERT([date],sysdatetime)) NULL ,
	DateOfLastUpdate BINARY  DEFAULT sysdatetime() CONSTRAINT CHK_Date_1507187897 CHECK (@col <= CONVERT([date],sysdatetime)) NULL ,
	UserAuthorizationId integer NULL 
);

ALTER TABLE Customer
	ADD  CONSTRAINT PK_Customers PRIMARY KEY  ( CustomerId );

CREATE TABLE Employee
(
	EmployeeId integer NOT NULL ,
	EmployeeLastName varchar(35) NOT NULL ,
	EmployeeFirstName varchar(25) NOT NULL ,
	EmployeeTitle varchar(30) NOT NULL ,
	EmployeeTitleOfCourtesy varchar(5) NOT NULL ,
	BirthDate POLYGON CONSTRAINT CHK_birthdate CHECK (BirthDate <= CONVERT([date],sysdatetime)) NOT NULL ,
	HireDate POLYGON NOT NULL ,
	EmployeeAddress VARCHAR(60) NOT NULL ,
	EmployeeCity VARCHAR(15) NULL ,
	EmployeeRegion VARCHAR(15) NULL ,
	EmployeePostalCode VARCHAR(10) NULL ,
	EmployeeCountry VARCHAR(15) NOT NULL ,
	EmployeePhoneNumber VARCHAR(24) CONSTRAINT CHK_PhoneNumber_1037756044 CHECK (len(@col) Between 10 AND 24) NOT NULL ,
	EmployeeManagerId integer NULL ,
	DateAdded BINARY  DEFAULT sysdatetime() CONSTRAINT CHK_Date_878206051 CHECK (@col <= CONVERT([date],sysdatetime)) NULL ,
	DateOfLastUpdate BINARY  DEFAULT sysdatetime() CONSTRAINT CHK_Date_1473372110 CHECK (@col <= CONVERT([date],sysdatetime)) NULL ,
	UserAuthorizationId integer NOT NULL 
);

ALTER TABLE Employee
	ADD  CONSTRAINT PK_Employees PRIMARY KEY  ( EmployeeId );

CREATE TABLE Employee
(
	EmployeeId integer NOT NULL ,
	EmployeeFullName varchar(40) NOT NULL ,
	Department varchar(40) NOT NULL ,
	Salary FIXED NOT NULL ,
	Notes VARCHAR(200)  DEFAULT 'Internal: ' NOT NULL ,
	SysStart BINARY  DEFAULT '19000101' NOT NULL ,
	SysEnd BINARY  DEFAULT '99991231 23:59:59' NOT NULL ,
	UserAuthorizationId integer NOT NULL ,
	DateAdded BINARY  DEFAULT sysdatetime() CONSTRAINT CHK_Date_878206051 CHECK (@col <= CONVERT([date],sysdatetime)) NULL ,
	DateOfLastUpdate BINARY  DEFAULT sysdatetime() CONSTRAINT CHK_Date_1473372110 CHECK (@col <= CONVERT([date],sysdatetime)) NULL 
);

ALTER TABLE Employee
	ADD  CONSTRAINT PK_EmployeeVersioned PRIMARY KEY  ( EmployeeId );

CREATE TABLE Employee
(
	EmployeeId integer NOT NULL ,
	EmployeeFullName varchar(40) NOT NULL ,
	Department varchar(40) NOT NULL ,
	Salary FIXED NOT NULL ,
	Notes VARCHAR(200)  DEFAULT 'Internal: ' NOT NULL ,
	IsDeleted CHAR(1)  DEFAULT 'N' NULL ,
	TransactionNumber integer  DEFAULT 1 CONSTRAINT CHK_TransactionNumber_1682555891 CHECK (TransactionNumber BETWEEN 1 AND 100000) NULL ,
	UserAuthenticatedKey integer  DEFAULT 37 NULL ,
	SysStartTime BINARY  DEFAULT sysdatetime() NULL ,
	SysEndTime BINARY  DEFAULT '99991231 23:59:59' NULL ,
	TimestampRowChanged BINARY  DEFAULT sysdatetime() NULL ,
	UserAuthrorizationId integer NULL ,
	DateAdded BINARY  DEFAULT sysdatetime() CONSTRAINT CHK_Date_878206051 CHECK (@col <= CONVERT([date],sysdatetime)) NULL ,
	DateOfLastUpdate BINARY  DEFAULT sysdatetime() CONSTRAINT CHK_Date_1473372110 CHECK (@col <= CONVERT([date],sysdatetime)) NULL ,
	UserAuthorizationId integer NOT NULL 
);

ALTER TABLE Employee
	ADD  CONSTRAINT PK_TriggeredEmployee PRIMARY KEY  ( EmployeeId );

CREATE INDEX  ix_Employees ON  Employee
(
	EmployeeId,
	SysStartTime,
	SysEndTime
);

CREATE TABLE Nums
(
	N integer NOT NULL ,
	UserAuthorizationId integer NOT NULL ,
	DateAdded BINARY  DEFAULT sysdatetime() CONSTRAINT CHK_Date_1024459268 CHECK (@col <= CONVERT([date],sysdatetime)) NULL ,
	DateOfLastUpdate BINARY  DEFAULT sysdatetime() CONSTRAINT CHK_Date_1102886868 CHECK (@col <= CONVERT([date],sysdatetime)) NULL 
);

ALTER TABLE Nums
	ADD  CONSTRAINT PK_Nums PRIMARY KEY  ( N );

CREATE TABLE Order
(
	OrderId integer NOT NULL ,
	CustomerId integer NULL ,
	EmployeeId integer NOT NULL ,
	OrderDate POLYGON NOT NULL ,
	RequiredDate POLYGON NOT NULL ,
	ShipToDate POLYGON NULL ,
	Freight FIXED  DEFAULT 0 NOT NULL ,
	ShipToName VARCHAR(15) NOT NULL ,
	ShipToAddress VARCHAR(60) NOT NULL ,
	ShipToCity VARCHAR(15) NOT NULL ,
	ShipToRegion VARCHAR(15) NULL ,
	ShipToPostalCode VARCHAR(10) NULL ,
	ShipToCountry VARCHAR(15) NOT NULL ,
	UserAuthenticationId integer NULL ,
	DateAdded BINARY NULL ,
	DateOfLastUpdate BINARY NULL ,
	UserAuthorizationId integer NOT NULL ,
	ShipperId integer NULL 
);

ALTER TABLE Order
	ADD  CONSTRAINT PK_Orders PRIMARY KEY  ( OrderId );

CREATE TABLE OrderDetail
(
	OrderId integer NOT NULL ,
	ProductId integer NOT NULL ,
	UnitPrice FIXED  DEFAULT 0 NOT NULL ,
	Quantity SMALLINT  DEFAULT 1 CONSTRAINT CHK_Quantity CHECK ([Quantity]>(0)) NOT NULL ,
	DiscountPercentage MEDIUMINT(4,3)  DEFAULT 0 CONSTRAINT CHK_DiscountPercentage CHECK (DiscountPercentage BETWEEN 0 AND 1) NOT NULL ,
	DateAdded BINARY  DEFAULT sysdatetime() CONSTRAINT CHK_Date_1889714312 CHECK (@col <= CONVERT([date],sysdatetime)) NULL ,
	DateOfLastUpdate BINARY  DEFAULT sysdatetime() CONSTRAINT CHK_Date_848663914 CHECK (@col <= CONVERT([date],sysdatetime)) NULL ,
	UserAuthorizationId integer NOT NULL 
);

ALTER TABLE OrderDetail
	ADD  CONSTRAINT PK_OrderDetails PRIMARY KEY  ( OrderId, ProductId );

CREATE TABLE Product
(
	ProductId integer NOT NULL ,
	ProductName varchar(40) NOT NULL ,
	SupplierId integer NOT NULL ,
	CategoryId integer NOT NULL ,
	UnitPrice FIXED  DEFAULT 0 CONSTRAINT CHK_Products_unitprice CHECK (UnitPrice >= 0) NOT NULL ,
	Discontinued TINYINT  DEFAULT 0 NOT NULL ,
	DateAdded BINARY  DEFAULT sysdatetime() NULL ,
	DateOfLastUpdate BINARY  DEFAULT sysdatetime() NULL ,
	UserAuthorizationId integer NOT NULL 
);

ALTER TABLE Product
	ADD  CONSTRAINT PK_Products PRIMARY KEY  ( ProductId );

CREATE TABLE Shipper
(
	ShipperId integer NOT NULL ,
	ShipperCompanyName VARCHAR(15) NOT NULL ,
	PhoneNumber VARCHAR(24) CONSTRAINT CHK_PhoneNumber_1611853186 CHECK (len(@col) Between 10 AND 24) NOT NULL ,
	UserAuthorizationId integer NOT NULL ,
	DateAdded BINARY  DEFAULT sysdatetime() CONSTRAINT CHK_Date_290481695 CHECK (@col <= CONVERT([date],sysdatetime)) NULL ,
	DateOfLastUpdate BINARY  DEFAULT sysdatetime() CONSTRAINT CHK_Date_1678448700 CHECK (@col <= CONVERT([date],sysdatetime)) NULL 
);

ALTER TABLE Shipper
	ADD  CONSTRAINT PK_Shippers PRIMARY KEY  ( ShipperId );

CREATE TABLE Supplier
(
	SupplierId integer NOT NULL ,
	SupplierCompanyName VARCHAR(15) NOT NULL ,
	SupplierContactName VARCHAR(15) NOT NULL ,
	SupplierContactTitle VARCHAR(15) NOT NULL ,
	SupplierAddress VARCHAR(60) NOT NULL ,
	SupplierCity VARCHAR(15) NOT NULL ,
	SupplierRegion VARCHAR(15) NULL ,
	SupplierPostalCode VARCHAR(10) NULL ,
	SupplierCountry VARCHAR(15) NOT NULL ,
	SupplierPhoneNumber VARCHAR(24) CONSTRAINT CHK_PhoneNumber_1039989884 CHECK (len(@col) Between 10 AND 24) NOT NULL ,
	SupplierFaxNumber VARCHAR(24) CONSTRAINT CHK_PhoneNumber_387454181 CHECK (len(@col) Between 10 AND 24) NULL ,
	UserAuthorizationId integer NOT NULL ,
	DateAdded BINARY  DEFAULT sysdatetime() NULL ,
	DateOfLastUpdate BINARY  DEFAULT sysdatetime() NULL 
);

ALTER TABLE Supplier
	ADD  CONSTRAINT PK_Suppliers PRIMARY KEY  ( SupplierId );

CREATE TABLE UserAuthorization
(
	UserAuthorizationId integer NOT NULL ,
	ClassTime char(5)  DEFAULT '9:15' NULL ,
	IndividualProject varchar(60)  DEFAULT 'CSCI381 Midterm Project' NULL ,
	GroupMemberLastName varchar(35) CONSTRAINT CHK_Length_LastName_1192928165 CHECK (len([@col]) <= 35
) NOT NULL ,
	GroupMemberFirstName varchar(25) CONSTRAINT CHK_Length_FirstName_1569711807 CHECK (len([GroupMemberFirstName]) <= 25) NOT NULL ,
	GroupName varchar(20) NOT NULL ,
	DateAdded BINARY  DEFAULT sysdatetime() CONSTRAINT CHK_Date_95985539 CHECK (@col <= CONVERT([date],sysdatetime)) NULL ,
	DateOfLastUpdate BINARY  DEFAULT sysdatetime() CONSTRAINT CHK_Date_1024192714 CHECK (@col <= CONVERT([date],sysdatetime)) NULL 
);

ALTER TABLE UserAuthorization
	ADD  CONSTRAINT XPKUserAuthorization PRIMARY KEY  ( UserAuthorizationId );

CREATE TABLE VersionedEmployeeHistory
(
	EmployeeId integer NOT NULL ,
	EmployeeFullName varchar(25) NOT NULL ,
	Department varchar(50) NOT NULL ,
	Salary FIXED NOT NULL ,
	Notes varchar(60) NOT NULL ,
	SysStart BINARY NOT NULL ,
	SysEnd BINARY NOT NULL ,
	UserAuthorizationId integer NOT NULL ,
	DateAdded BINARY  DEFAULT sysdatetime() CONSTRAINT CHK_Date_1893325288 CHECK (@col <= CONVERT([date],sysdatetime)) NULL ,
	DateOfLastUpdate BINARY  DEFAULT sysdatetime() CONSTRAINT CHK_Date_1569254908 CHECK (@col <= CONVERT([date],sysdatetime)) NULL 
);

ALTER TABLE VersionedEmployeeHistory
	ADD  CONSTRAINT XPKVersionedEmployeeHistory PRIMARY KEY  ( EmployeeId );

CREATE INDEX  ix_VersionedEmployeeHistory ON  VersionedEmployeeHistory
(
	SysEnd,
	SysStart
);

ALTER TABLE AuditTriggeredEmployeeHistory
	ADD  CONSTRAINT FK_UserAuthorization_AuditTriggeredEmployeeHistory FOREIGN KEY (UserAuthorizationId) REFERENCES UserAuthorization (UserAuthorizationId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE AuditTriggeredEmployeeHistory
	ADD  CONSTRAINT FK_Employee_AuditTriggeredEmployeeHistory FOREIGN KEY (EmployeeId) REFERENCES Employee (EmployeeId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE Category
	ADD  CONSTRAINT FK_UserAuthorization_Category FOREIGN KEY (UserAuthorizationId) REFERENCES UserAuthorization (UserAuthorizationId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE Customer
	ADD  CONSTRAINT FK_UserAuthorization_Customer FOREIGN KEY (UserAuthorizationId) REFERENCES UserAuthorization (UserAuthorizationId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE Employee
	ADD  CONSTRAINT FK_Employee_Employee FOREIGN KEY (EmployeeManagerId) REFERENCES Employee (EmployeeId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE Employee
	ADD  CONSTRAINT FK_UserAuthorization_Employee FOREIGN KEY (UserAuthorizationId) REFERENCES UserAuthorization (UserAuthorizationId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE Employee
	ADD  CONSTRAINT FK_UserAuthorization_Employee FOREIGN KEY (UserAuthorizationId) REFERENCES UserAuthorization (UserAuthorizationId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE Employee
	ADD  CONSTRAINT FK_UserAuthorization_Employee FOREIGN KEY (UserAuthorizationId) REFERENCES UserAuthorization (UserAuthorizationId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE Employee
	ADD  CONSTRAINT FK_UserAuthorization_Employee FOREIGN KEY (UserAuthorizationId) REFERENCES UserAuthorization (UserAuthorizationId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE Nums
	ADD  CONSTRAINT FK_UserAuthorization_Nums FOREIGN KEY (UserAuthorizationId) REFERENCES UserAuthorization (UserAuthorizationId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE Order
	ADD  CONSTRAINT FK_Employee_Order FOREIGN KEY (EmployeeId) REFERENCES Employee (EmployeeId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE Order
	ADD  CONSTRAINT FK_Customer_Order FOREIGN KEY (CustomerId) REFERENCES Customer (CustomerId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE Order
	ADD  CONSTRAINT FK_UserAuthorization_Order FOREIGN KEY (UserAuthorizationId) REFERENCES UserAuthorization (UserAuthorizationId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE Order
	ADD  CONSTRAINT FK_Shipper_Order FOREIGN KEY (ShipperId) REFERENCES Shipper (ShipperId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE OrderDetail
	ADD  CONSTRAINT FK_Order_OrderDetail FOREIGN KEY (OrderId) REFERENCES Order (OrderId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE OrderDetail
	ADD  CONSTRAINT FK_Product_OrderDetail FOREIGN KEY (ProductId) REFERENCES Product (ProductId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE OrderDetail
	ADD  CONSTRAINT FK_UserAuthorization_OrderDetail FOREIGN KEY (UserAuthorizationId) REFERENCES UserAuthorization (UserAuthorizationId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE Product
	ADD  CONSTRAINT FK_Category_Product FOREIGN KEY (CategoryId) REFERENCES Category (CategoryId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE Product
	ADD  CONSTRAINT FK_Supplier_Product FOREIGN KEY (SupplierId) REFERENCES Supplier (SupplierId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE Product
	ADD  CONSTRAINT FK_UserAuthorization_Product FOREIGN KEY (UserAuthorizationId) REFERENCES UserAuthorization (UserAuthorizationId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE Shipper
	ADD  CONSTRAINT FK_UserAuthorization_Shipper FOREIGN KEY (UserAuthorizationId) REFERENCES UserAuthorization (UserAuthorizationId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE Supplier
	ADD  CONSTRAINT FK_UserAuthorization_Supplier FOREIGN KEY (UserAuthorizationId) REFERENCES UserAuthorization (UserAuthorizationId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE VersionedEmployeeHistory
	ADD  CONSTRAINT FK_UserAuthorization_VersionedEmployeeHistory FOREIGN KEY (UserAuthorizationId) REFERENCES UserAuthorization (UserAuthorizationId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE VersionedEmployeeHistory
	ADD  CONSTRAINT FK_Employee_VersionedEmployeeHistory FOREIGN KEY (EmployeeId) REFERENCES Employee (EmployeeId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

ALTER TABLE VersionedEmployeeHistory
	ADD  CONSTRAINT FK_Employee_VersionedEmployeeHistory FOREIGN KEY (EmployeeId) REFERENCES Employee (EmployeeId)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;

CREATE  Function MongoOrder
( 
) RETURNS 
	CREATE FUNCTION MongoOrder ()  
  
  
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



;

CREATE  Function MongoOrderDetail
(
@OrderId int 
) RETURNS 
	CREATE FUNCTION MongoOrderDetail ()  
  
  
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



;

CREATE  Function utvf_EmployeeCurrentAndHistoryCTE
(
@EmployeeId int 
) RETURNS 
	CREATE FUNCTION utvf_EmployeeCurrentAndHistoryCTE ()  
  
  
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



;

CREATE  Function utvf_EmployeeCurrentAndHistory
(
@EmployeeId int 
) RETURNS 
	CREATE FUNCTION utvf_EmployeeCurrentAndHistory ()  
  
  
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




;

CREATE VIEW uvw_HumanResourcesEmployee (EmployeeObjectId,
EmployeeLastName,
EmployeeFirstName,
EmployeeTitle,
EmployeeTitleOfCourtesy,
BirthDate,
HireDate,
EmployeeAddress,
EmployeeCity,
EmployeeRegion,
EmployeePostalCode,
EmployeeCountry,
EmployeePhoneNumber,
EmployeeManagerId)
AS 
SELECT E.EmployeeId,E.EmployeeLastName,E.EmployeeFirstName,E.EmployeeTitle,E.EmployeeTitleOfCourtesy,E.BirthDate,E.HireDate,E.EmployeeAddress,E.EmployeeCity,E.EmployeeRegion,E.EmployeePostalCode,E.EmployeeCountry,E.EmployeePhoneNumber,E.EmployeeManagerId
FROM Employee E;

CREATE VIEW uvw_ProductionCategory (CategoryObjectId,
CategoryName,
Description)
AS 
SELECT .CategoryId,.CategoryName,.Description
FROM Category ;

CREATE VIEW [JsonOutput].[uvw_ProductionProduct] AS  SELECT P.ProductId AS ProductObjectId, P.ProductName, P.SupplierId, P.CategoryId, P.UnitPrice, P.Discontinued, C.CategoryId AS Production.CategoryObjectId, C.CategoryName AS Production.CategoryName, C.Description AS Production.Description, S.SupplierId AS Production.SupplierId, S.SupplierCompanyName AS Production.SupplierCompanyName, S.SupplierContactName AS Production.SupplierContactName, S.SupplierPhoneNumber AS Production.SupplierPhoneNumber, S.SupplierFaxNumber AS Production.SupplierFaxNumber FROM Production.Product AS P   INNER JOIN   Production.Category AS C ON C.CategoryId = P.CategoryId   INNER JOIN   Production.Supplier AS S ON S.SupplierId = P.SupplierId;

CREATE VIEW uvw_ProductionSupplier (SupplierObjectId,
SupplierCompanyName,
SupplierContactName,
SupplierContactTitle,
SupplierAddress,
SupplierCity,
SupplierRegion,
SupplierPostalCode,
SupplierCountry,
SupplierPhoneNumber,
SupplierFaxNumber)
AS 
SELECT S.SupplierId,S.SupplierCompanyName,S.SupplierContactName,S.SupplierContactTitle,S.SupplierAddress,S.SupplierCity,S.SupplierRegion,S.SupplierPostalCode,S.SupplierCountry,S.SupplierPhoneNumber,S.SupplierFaxNumber
FROM Supplier S;

CREATE VIEW uvw_SalesCustomer (CustomerObjectId,
CustomerCompanyName,
CustomerContactName,
CustomerContactTitle,
CustomerAddress,
CustomerCity,
CustomerRegion,
CustomerPostalCode,
CustomerCountry,
CustomerPhoneNumber,
CustomerFaxNumber)
AS 
SELECT C.CustomerId,C.CustomerCompanyName,C.CustomerContactName,C.CustomerContactTitle,C.CustomerAddress,C.CustomerCity,C.CustomerRegion,C.CustomerPostalCode,C.CustomerCountry,C.CustomerPhoneNumber,C.CustomerFaxNumber
FROM Customer C;

CREATE VIEW uvw_SalesShipper (ShipperObjectId,
ShipperCompanyName,
PhoneNumber)
AS 
SELECT S.ShipperId,S.ShipperCompanyName,S.PhoneNumber
FROM Shipper S;

CREATE VIEW uvw_Order (OrderId,
CustomerId,
EmployeeId,
OrderDate,
RequiredDate,
ShipToDate,
Freight,
ShipToName,
ShipToAddress,
ShipToCity,
ShipToRegion,
ShipToPostalCode,
ShipToCountry)
AS 
SELECT O.OrderId,O.CustomerId,O.EmployeeId,O.OrderDate,O.RequiredDate,O.ShipToDate,O.Freight,O.ShipToName,O.ShipToAddress,O.ShipToCity,O.ShipToRegion,O.ShipToPostalCode,O.ShipToCountry
FROM Order O;

CREATE VIEW uvw_OrderDetail (OrderId,
ProductId,
UnitPrice,
Quantity,
DiscountPercentage)
AS 
SELECT OD.OrderId,OD.ProductId,OD.UnitPrice,OD.Quantity,OD.DiscountPercentage
FROM OrderDetail OD;

CREATE VIEW [Utils].[uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint] AS  SELECT  concat( tbl.TABLE_SCHEMA , '.' , tbl.TABLE_NAME )  AS FullyQualifiedTableName, tbl.TABLE_SCHEMA AS SchemaName, tbl.TABLE_NAME AS TableName, col.COLUMN_NAME AS ColumnName, col.ORDINAL_POSITION AS OrdinalPosition,  concat( col.DOMAIN_SCHEMA , '.' , col.DOMAIN_NAME )  AS FullyQualifiedDomainName, col.DOMAIN_NAME AS DomainName, CASE WHEN col.DATA_TYPE = 'varchar' THEN  concat( 'varchar(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'char' THEN  concat( 'char(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'nvarchar' THEN  concat( 'nvarchar(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'nchar' THEN  concat( 'nchar(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'numeric' THEN  concat( 'numeric(' , NUMERIC_PRECISION_RADIX , ', ' , NUMERIC_SCALE , ')' )  WHEN col.DATA_TYPE = 'decimal' THEN  concat( 'decimal(' , NUMERIC_PRECISION_RADIX , ', ' , NUMERIC_SCALE , ')' )  ELSE col.DATA_TYPE END AS DataType, col.IS_NULLABLE AS IsNullable, dcn.DefaultName, col.COLUMN_DEFAULT AS DefaultNameDefinition, cc.CONSTRAINT_NAME AS CheckConstraintRuleName, cc.CHECK_CLAUSE AS CheckConstraintRuleNameDefinition FROM (  SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, TABLE_TYPE FROM INFORMATION_SCHEMA.TABLES WHERE ( TABLE_TYPE = 'BASE TABLE' ) ) AS tbl    INNER JOIN   (  SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, ORDINAL_POSITION, COLUMN_DEFAULT, IS_NULLABLE, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, CHARACTER_OCTET_LENGTH, NUMERIC_PRECISION, NUMERIC_PRECISION_RADIX, NUMERIC_SCALE, DATETIME_PRECISION, CHARACTER_SET_CATALOG, CHARACTER_SET_SCHEMA, CHARACTER_SET_NAME, COLLATION_CATALOG, COLLATION_SCHEMA, COLLATION_NAME, DOMAIN_CATALOG, DOMAIN_SCHEMA, DOMAIN_NAME FROM INFORMATION_SCHEMA.COLUMNS ) AS col  ON col.TABLE_CATALOG = tbl.TABLE_CATALOG AND col.TABLE_SCHEMA = tbl.TABLE_SCHEMA AND col.TABLE_NAME = tbl.TABLE_NAME   LEFT OUTER JOIN   (  SELECT t.name AS TableName,  schema_name( s.schema_id )  AS SchemaName, ac.name AS ColumnName, d.name AS DefaultName FROM sys.all_columns AS ac   INNER JOIN   sys.tables AS t ON ac.object_id = t.object_id   INNER JOIN   sys.schemas AS s ON t.schema_id = s.schema_id   INNER JOIN   sys.default_constraints AS d ON ac.default_object_id = d.object_id ) AS dcn  ON dcn.SchemaName = tbl.TABLE_SCHEMA AND dcn.TableName = tbl.TABLE_NAME AND dcn.ColumnName = col.COLUMN_NAME   LEFT OUTER JOIN   (  SELECT cu.TABLE_CATALOG, cu.TABLE_SCHEMA, cu.TABLE_NAME, cu.COLUMN_NAME, c.CONSTRAINT_CATALOG, c.CONSTRAINT_SCHEMA, c.CONSTRAINT_NAME, c.CHECK_CLAUSE FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE AS cu   INNER JOIN   INFORMATION_SCHEMA.CHECK_CONSTRAINTS AS c ON c.CONSTRAINT_NAME = cu.CONSTRAINT_NAME ) AS cc  ON cc.TABLE_SCHEMA = tbl.TABLE_SCHEMA AND cc.TABLE_NAME = tbl.TABLE_NAME AND cc.COLUMN_NAME = col.COLUMN_NAME;

CREATE VIEW uw_FindAllDatabaseColumnsOnTheServer (FullyQualifiedTableName,
SchemaName,
ColumnName,
OrdinalPosition,
FullyQualifiedDomainName,
DataType,
IsNullable,
DefaultName,
DefaultNameDefinition,
CheckConstraintRuleName,
CheckConstraintRuleNameDefinition,
Server_Name,
Target_Database_Version,
Instance_Name,
Database_Name,
Host_Name)
AS 
SELECT vw.FullyQualifiedTableName,vw.SchemaName,vw.ColumnName,vw.OrdinalPosition,vw.FullyQualifiedDomainName,vw.DataType,vw.IsNullable,vw.DefaultName,vw.DefaultNameDefinition,vw.CheckConstraintRuleName,vw.CheckConstraintRuleNameDefinition,@@servername,@@version,@@servicename,db_name(),host_name()
FROM uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint vw
		WHERE vw.SchemaName IN ('Sales' , 'Production' , 'HumanResources');

CREATE TRIGGER uTdu_AuditTriggeredEmployeeHistory
 AFTER Update, Delete ON Employee FOR EACH ROW ;
