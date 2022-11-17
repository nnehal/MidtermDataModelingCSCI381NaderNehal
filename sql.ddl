
CREATE SCHEMA [Audit] AUTHORIZATION [dbo]
go

CREATE SCHEMA [Example] AUTHORIZATION [dbo]
go

CREATE SCHEMA [HumanResources] AUTHORIZATION [dbo]
go

CREATE SCHEMA [JsonOutput] AUTHORIZATION [dbo]
go

CREATE SCHEMA [Production] AUTHORIZATION [dbo]
go

CREATE SCHEMA [RelationalCalculii] AUTHORIZATION [dbo]
go

CREATE SCHEMA [RelationalCrossJoin] AUTHORIZATION [dbo]
go

CREATE SCHEMA [Sales] AUTHORIZATION [dbo]
go

CREATE SCHEMA [SystemVersioned] AUTHORIZATION [dbo]
go

CREATE SCHEMA [Temporal] AUTHORIZATION [dbo]
go

CREATE SCHEMA [Triggered] AUTHORIZATION [dbo]
go

CREATE SCHEMA [Udt] AUTHORIZATION [dbo]
go

CREATE SCHEMA [Utils] AUTHORIZATION [dbo]
go

CREATE SCHEMA [myudt] AUTHORIZATION [dbo]
go

CREATE SCHEMA [DbSecurity]
go

CREATE SCHEMA [validations]
go

CREATE TYPE [Address]
	FROM NVARCHAR(60) NULL
go

CREATE TYPE [sdBlobDefinition.Varbinary]
	FROM VARBINARY(MAX) NULL
go

CREATE TYPE [CategoryName]
	FROM NVARCHAR(15) NULL
go

CREATE TYPE [City]
	FROM NVARCHAR(15) NULL
go

CREATE TYPE [CompanyName]
	FROM NVARCHAR(15) NULL
go

CREATE TYPE [ContactName]
	FROM NVARCHAR(15) NULL
go

CREATE TYPE [ContactTitle]
	FROM NVARCHAR(15) NULL
go

CREATE TYPE [Country]
	FROM NVARCHAR(15) NULL
go

CREATE TYPE [Currency]
	FROM MONEY NULL
go

CREATE TYPE [DateYYYYMMDD]
	FROM DATE NOT NULL
go

CREATE TYPE [Description]
	FROM NVARCHAR(200) NULL
go

CREATE TYPE [FirstName]
	FROM NVARCHAR(25) NULL
go

CREATE TYPE [FlagBit]
	FROM BIT NULL
go

CREATE TYPE [Grade]
	FROM TINYINT NULL
go

CREATE TYPE [LastName]
	FROM NVARCHAR(35) NULL
go

CREATE TYPE [Name]
	FROM NVARCHAR(40) NULL
go

CREATE TYPE [Note]
	FROM NVARCHAR(200) NULL
go

CREATE TYPE [Percentage]
	FROM NUMERIC(4,3) NULL
go

CREATE TYPE [PostalCode]
	FROM NVARCHAR(10) NULL
go

CREATE TYPE [ProductName]
	FROM NVARCHAR(40) NULL
go

CREATE TYPE [QuantitySmall]
	FROM SMALLINT NULL
go

CREATE TYPE [Region]
	FROM NVARCHAR(15) NULL
go

CREATE TYPE [Score]
	FROM TINYINT NOT NULL
go

CREATE TYPE [SequenceNo]
	FROM INT NULL
go

CREATE TYPE [ShortDescription]
	FROM NVARCHAR(200) NULL
go

CREATE TYPE [StateName]
	FROM NVARCHAR(15) NOT NULL
go

CREATE TYPE [StudentIdentification]
	FROM NVARCHAR(10) NULL
go

CREATE TYPE [SurrogateKeyInt]
	FROM INT NULL
go

CREATE TYPE [TelephoneNumber]
	FROM NVARCHAR(24) NULL
go

CREATE TYPE [TextKeyVarchar10]
	FROM NVARCHAR(10) NOT NULL
go

CREATE TYPE [Title]
	FROM NVARCHAR(30) NOT NULL
go

CREATE TYPE [TitleOfCourtesy]
	FROM NVARCHAR(5) NOT NULL
go

CREATE TYPE [Version]
	FROM INT NULL
go

CREATE TYPE [YYYY]
	FROM CHAR(4) NOT NULL
go

CREATE TYPE [TimeStampNow]
	FROM DATETIME2(2,7) NOT NULL
go

CREATE TYPE [TriggerOption]
	FROM CHAR(1) NOT NULL
go

CREATE TYPE [IsDeletion]
	FROM CHAR(1) NOT NULL
go

CREATE TYPE [FlagChar]
	FROM CHAR(1) NOT NULL
go

CREATE TYPE [MidtermDataModelingCSCI381]
	FROM VARCHAR() NULL
go

CREATE TYPE [dString]
	FROM NVARCHAR() NULL
go

CREATE TYPE [dBlob]
	FROM VARBINARY(MAX) NULL
go

CREATE TYPE [dDateTime]
	FROM DATETIME2 NULL
go

CREATE TYPE [dNumber]
	FROM INTEGER NULL
go

CREATE TYPE [sdTimeStamp.DateTime]
	FROM DATETIME2 NULL
go

CREATE TYPE [sdName.String]
	FROM NVARCHAR(15) NULL
go

CREATE TYPE [sdAddress.String]
	FROM NVARCHAR(60) NULL
go

CREATE TYPE [sdPostalCode.String]
	FROM NVARCHAR(10) NULL
go

CREATE TYPE [sdSurrogateKey.Integer]
	FROM INT NULL
go

CREATE TYPE [DateAdded]
	FROM DATETIME2 NULL
go

CREATE TYPE [sdLocation.String]
	FROM NVARCHAR(15) NULL
go

CREATE TYPE [sdTitle.String]
	FROM NVARCHAR(15) NULL
go

CREATE TYPE [sdDescription.String]
	FROM NVARCHAR(200) NULL
go

CREATE TYPE [sdFlag.String]
	FROM CHAR(1) NULL
go

CREATE TYPE [sdNotes.String]
	FROM NVARCHAR(200) NULL
go

CREATE TYPE [sdIdentification.String]
	FROM NVARCHAR(10) NULL
go

CREATE TYPE [sdPhoneNumber.String]
	FROM NVARCHAR(24) NULL
go

CREATE TYPE [sdKeyVarchar.String]
	FROM NVARCHAR(10) NULL
go

CREATE TYPE [sdTriggers.String]
	FROM CHAR(1) NULL
go

CREATE TYPE [sdDateYYYY.String]
	FROM CHAR(4) NULL
go

CREATE TYPE [sdCurrency.Integer]
	FROM MONEY NULL
go

CREATE TYPE [sdFlag.Integer]
	FROM BIT NULL
go

CREATE TYPE [sdGrade.Integer]
	FROM TINYINT NULL
go

CREATE TYPE [sdPercentage.Integer]
	FROM NUMBERIC(4,3) NULL
go

CREATE TYPE [sdQuantity.Integer]
	FROM SMALLINT NULL
go

CREATE TYPE [sdSequence.Integer]
	FROM INT NULL
go

CREATE TYPE [sdVersion.Integer]
	FROM INT NULL
go

CREATE TYPE [DateOfLastUpdate]
	FROM DATETIME2 NULL
go

CREATE TYPE [sdClassTime.String]
	FROM NCHAR(5) NULL
go

CREATE TYPE [ClassTime]
	FROM NCHAR(5) NULL
go

CREATE TYPE [sdIndividualProject.String]
	FROM NVARCHAR() NULL
go

CREATE TYPE [IndividualProject]
	FROM NVARCHAR(60) NULL
go

CREATE TYPE [sdGroupMember.String]
	FROM NVARCHAR() NOT NULL
go

CREATE TYPE [GroupMemberLastName]
	FROM NVARCHAR(35) NOT NULL
go

CREATE TYPE [GroupMemberFirstName]
	FROM NVARCHAR(25) NOT NULL
go

CREATE TYPE [GroupName]
	FROM NVARCHAR(20) NOT NULL
go

CREATE TYPE [sdSalary.Integer]
	FROM INTEGER NULL
go

CREATE TYPE [Salary]
	FROM MONEY NULL
go

CREATE TYPE [SysStart]
	FROM DATETIME2 NULL
go

CREATE TYPE [SysEnd]
	FROM DATETIME2 NULL
go

CREATE TYPE [FaxNumber]
	FROM NVARCHAR(24) NULL
go

CREATE RULE [CHK_birthdate]
	AS @col <= CONVERT([date],sysdatetime)
go

CREATE RULE [CHK_Quantity]
	AS [Quantity]>(0)
go

CREATE RULE [CHK_DiscountPercentage]
	AS @col BETWEEN 0 AND 1
go

CREATE RULE [CHK_Products_unitprice]
	AS @col >= 0
go

CREATE RULE [CHK_ClassTime]
	AS @col IN ('9:15')
go

CREATE RULE [CHK_Length_IndividualProject]
	AS len([IndividualProject]) <= 60
go

CREATE RULE [CHK_Length_LastName]
	AS len([@col]) <= 35

go

CREATE RULE [CHK_Date]
	AS @col <= CONVERT([date],sysdatetime)
go

CREATE RULE [CHK_GroupName]
	AS len([GroupName]) <= 20
go

CREATE RULE [CHK_PhoneNumber]
	AS len(@col) Between 10 AND 24
go

CREATE RULE [CHK_Length_Description]
	AS len([@col]) <= 200
go


exec sp_bindrule '[CHK_Length_Description]', '[Description]'
go


exec sp_bindrule '[CHK_Length_Description]', '[ShortDescription]'
go


exec sp_bindrule '[CHK_PhoneNumber]', '[TelephoneNumber]'
go


exec sp_bindrule '[CHK_Date]', '[DateAdded]'
go


exec sp_bindrule '[CHK_Length_Description]', '[sdDescription.String]'
go


exec sp_bindrule '[CHK_PhoneNumber]', '[sdPhoneNumber.String]'
go


exec sp_bindrule '[CHK_Date]', '[DateOfLastUpdate]'
go


exec sp_bindrule '[CHK_Length_LastName]', '[GroupMemberLastName]'
go


exec sp_bindrule '[CHK_PhoneNumber]', '[FaxNumber]'
go

CREATE TABLE [AuditTriggeredEmployeeHistory]
( 
	[TriggeredEmployeeHistoryId] [SurrogateKeyInt]  IDENTITY ( 1,1 )  NOT NULL ,
	[AuditTriggeredEmployeeHistoryTimestamp] [TimeStampNow]  NULL 
	CONSTRAINT [DF__AuditTrig__Audit__6383C8BA]
		 DEFAULT  sysdatetime(),
	[TriggerOption]      [TriggerOption]  NULL 
	CONSTRAINT [DF__AuditTrig__Trigg__6477ECF3]
		 DEFAULT  'U',
	[EmployeeId]         [SurrogateKeyInt]  NOT NULL ,
	[EmployeeFullName]   [Name]  NOT NULL ,
	[Department]         [Name]  NOT NULL ,
	[Salary]             [Currency]  NOT NULL ,
	[Notes]              [Note]  NOT NULL 
	CONSTRAINT [DF_Notes_868782242]
		 DEFAULT  'Internal: ',
	[IsDeleted]          [FlagChar]  NULL 
	CONSTRAINT [DF__AuditTrig__IsDel__656C112C]
		 DEFAULT  'N',
	[TransactionNumber]  [SequenceNo]  NULL 
	CONSTRAINT [DF__AuditTrig__Trans__66603565]
		 DEFAULT  1,
	[UserAuthenticatedKey] [SurrogateKeyInt]  NULL 
	CONSTRAINT [DF__AuditTrig__UserA__6754599E]
		 DEFAULT  37,
	[SysStartTime]       [TimeStampNow]  NULL 
	CONSTRAINT [DF__AuditTrig__SysSt__68487DD7]
		 DEFAULT  sysdatetime(),
	[SysEndTime]         [TimeStampNow]  NULL 
	CONSTRAINT [DF__AuditTrig__SysEn__693CA210]
		 DEFAULT  '99991231 23:59:59',
	[TimestampRowChanged] [TimeStampNow]  NULL 
	CONSTRAINT [DF__AuditTrig__Times__6A30C649]
		 DEFAULT  sysdatetime(),
	[UserAuthorizationId] [SurrogateKeyInt]  NOT NULL ,
	[DateAdded]          [DateAdded] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateAdded_1511203942]
		 DEFAULT  sysdatetime(),
	[DateOfLastUpdate]   [DateOfLastUpdate] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateOfLastUpdate_186441272]
		 DEFAULT  sysdatetime()
)
go

ALTER TABLE [AuditTriggeredEmployeeHistory]
	 WITH CHECK ADD CONSTRAINT [CHK_TransactionNumber_1766004043] CHECK  ( TransactionNumber BETWEEN 1 AND 100000 )
go

CREATE TABLE [Category]
( 
	[CategoryId]         [SurrogateKeyInt]  IDENTITY ( 1,1 )  NOT NULL ,
	[CategoryName]       [CategoryName]  NOT NULL ,
	[Description]        [Description]  NOT NULL 
	CONSTRAINT [DF_Description_1180252515]
		 DEFAULT  'Add a description',
	[UserAuthorizationId] [SurrogateKeyInt]  NOT NULL ,
	[DateAdded]          [DateAdded] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateAdded_2071549246]
		 DEFAULT  sysdatetime(),
	[DateOfLastUpdate]   [DateOfLastUpdate] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateOfLastUpdate_1005911966]
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE [Customer]
( 
	[CustomerId]         [SurrogateKeyInt]  IDENTITY ( 1,1 )  NOT NULL ,
	[CustomerCompanyName] [CompanyName]  NOT NULL ,
	[CustomerContactName] [ContactName]  NOT NULL ,
	[CustomerContactTitle] [Title]  NOT NULL ,
	[CustomerAddress]    [Address]  NOT NULL ,
	[CustomerCity]       [City]  NOT NULL ,
	[CustomerRegion]     [Region]  NULL ,
	[CustomerPostalCode] [PostalCode]  NULL ,
	[CustomerCountry]    [Country]  NOT NULL ,
	[CustomerPhoneNumber] [TelephoneNumber]  NOT NULL ,
	[CustomerFaxNumber]  [TelephoneNumber]  NULL ,
	[UserAuthrorizationId] [SurrogateKeyInt] ,
	[DateAdded]          [DateAdded] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateAdded_1989063380]
		 DEFAULT  sysdatetime(),
	[DateOfLastUpdate]   [DateOfLastUpdate] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateOfLastUpdate_870518166]
		 DEFAULT  sysdatetime(),
	[UserAuthorizationId] [SurrogateKeyInt] 
)
go

CREATE TABLE [Employee]
( 
	[EmployeeId]         [SurrogateKeyInt]  IDENTITY ( 1,1 )  NOT NULL ,
	[EmployeeLastName]   [LastName]  NOT NULL ,
	[EmployeeFirstName]  [FirstName]  NOT NULL ,
	[EmployeeTitle]      [Title]  NOT NULL ,
	[EmployeeTitleOfCourtesy] [TitleOfCourtesy]  NOT NULL ,
	[BirthDate]          [DateYYYYMMDD]  NOT NULL ,
	[HireDate]           [DateYYYYMMDD]  NOT NULL ,
	[EmployeeAddress]    [Address]  NOT NULL ,
	[EmployeeCity]       [City]  NULL ,
	[EmployeeRegion]     [Region]  NULL ,
	[EmployeePostalCode] [PostalCode]  NULL ,
	[EmployeeCountry]    [Country]  NOT NULL ,
	[EmployeePhoneNumber] [TelephoneNumber]  NOT NULL ,
	[EmployeeManagerId]  [SurrogateKeyInt]  NULL ,
	[DateAdded]          [DateAdded] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateAdded_1937355992]
		 DEFAULT  sysdatetime(),
	[DateOfLastUpdate]   [DateOfLastUpdate] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateOfLastUpdate_836702379]
		 DEFAULT  sysdatetime(),
	[UserAuthorizationId] [SurrogateKeyInt]  NOT NULL 
)
go

CREATE TABLE [Employee]
( 
	[EmployeeId]         [SurrogateKeyInt]  NOT NULL ,
	[EmployeeFullName]   [Name]  NOT NULL ,
	[Department]         [Name]  NOT NULL ,
	[Salary]             [Currency]  NOT NULL ,
	[Notes]              [Note]  NOT NULL 
	CONSTRAINT [DF_Notes_168098872]
		 DEFAULT  'Internal: ',
	[IsDeleted]          [FlagChar]  NULL 
	CONSTRAINT [DF__Employee__IsDele__6B24EA82]
		 DEFAULT  'N',
	[TransactionNumber]  [SequenceNo]  NULL 
	CONSTRAINT [DF__Employee__Transa__6C190EBB]
		 DEFAULT  1,
	[UserAuthenticatedKey] [SurrogateKeyInt]  NULL 
	CONSTRAINT [DF__Employee__UserAu__6D0D32F4]
		 DEFAULT  37,
	[SysStartTime]       [TimeStampNow]  NULL 
	CONSTRAINT [DF__Employee__SysSta__6E01572D]
		 DEFAULT  sysdatetime(),
	[SysEndTime]         [TimeStampNow]  NULL 
	CONSTRAINT [DF__Employee__SysEnd__6EF57B66]
		 DEFAULT  '99991231 23:59:59',
	[TimestampRowChanged] [TimeStampNow]  NULL 
	CONSTRAINT [DF__Employee__Timest__6FE99F9F]
		 DEFAULT  sysdatetime(),
	[UserAuthrorizationId] [SurrogateKeyInt] ,
	[DateAdded]          [DateAdded] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateAdded_1937355992]
		 DEFAULT  sysdatetime(),
	[DateOfLastUpdate]   [DateOfLastUpdate] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateOfLastUpdate_836702379]
		 DEFAULT  sysdatetime(),
	[UserAuthorizationId] [SurrogateKeyInt]  NOT NULL 
)
go

ALTER TABLE [Employee]
	 WITH CHECK ADD CONSTRAINT [CHK_TransactionNumber_1682555891] CHECK  ( TransactionNumber BETWEEN 1 AND 100000 )
go

CREATE TABLE [Nums]
( 
	[N]                  [SurrogateKeyInt]  NOT NULL ,
	[UserAuthorizationId] [SurrogateKeyInt]  NOT NULL ,
	[DateAdded]          [DateAdded] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateAdded_186338919]
		 DEFAULT  sysdatetime(),
	[DateOfLastUpdate]   [DateOfLastUpdate] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateOfLastUpdate_1739556599]
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE [Order]
( 
	[OrderId]            [SurrogateKeyInt]  IDENTITY ( 1,1 )  NOT NULL ,
	[CustomerId]         [SurrogateKeyInt]  NULL ,
	[EmployeeId]         [SurrogateKeyInt]  NOT NULL ,
	[OrderDate]          [DateYYYYMMDD]  NOT NULL ,
	[RequiredDate]       [DateYYYYMMDD]  NOT NULL ,
	[ShipToDate]         [DateYYYYMMDD]  NULL ,
	[Freight]            [Currency]  NOT NULL 
	CONSTRAINT [DFT_Orders_freight]
		 DEFAULT  0,
	[ShipToName]         [ContactName]  NOT NULL ,
	[ShipToAddress]      [Address]  NOT NULL ,
	[ShipToCity]         [City]  NOT NULL ,
	[ShipToRegion]       [Region]  NULL ,
	[ShipToPostalCode]   [PostalCode]  NULL ,
	[ShipToCountry]      [Country]  NOT NULL ,
	[UserAuthenticationId] [SurrogateKeyInt]  NULL ,
	[DateAdded]          datetime2(2,7)  NULL ,
	[DateOfLastUpdate]   datetime2(2,7)  NULL ,
	[UserAuthorizationId] [SurrogateKeyInt]  NOT NULL ,
	[ShipperId]          [SurrogateKeyInt] 
)
go

CREATE TABLE [OrderDetail]
( 
	[OrderId]            [SurrogateKeyInt]  NOT NULL ,
	[ProductId]          [SurrogateKeyInt]  NOT NULL ,
	[UnitPrice]          [Currency]  NOT NULL 
	CONSTRAINT [DFT_OrderDetails_UnitPrice]
		 DEFAULT  0,
	[Quantity]           [QuantitySmall]  NOT NULL 
	CONSTRAINT [DFT_OrderDetails_Quantity]
		 DEFAULT  1,
	[DiscountPercentage] [Percentage]  NOT NULL 
	CONSTRAINT [DFT_OrderDetails_DiscountPercentage]
		 DEFAULT  0,
	[DateAdded]          [DateAdded] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateAdded_1109534188]
		 DEFAULT  sysdatetime(),
	[DateOfLastUpdate]   [DateOfLastUpdate] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateOfLastUpdate_211994183]
		 DEFAULT  sysdatetime(),
	[UserAuthorizationId] [SurrogateKeyInt]  NOT NULL 
)
go

CREATE TABLE [Product]
( 
	[ProductId]          [SurrogateKeyInt]  IDENTITY ( 1,1 )  NOT NULL ,
	[ProductName]        [ProductName]  NOT NULL ,
	[SupplierId]         [SurrogateKeyInt]  NOT NULL ,
	[CategoryId]         [SurrogateKeyInt]  NOT NULL ,
	[UnitPrice]          [Currency]  NOT NULL 
	CONSTRAINT [DFT_Products_unitprice]
		 DEFAULT  0,
	[Discontinued]       [FlagBit]  NOT NULL 
	CONSTRAINT [DFT_Products_discontinued]
		 DEFAULT  0,
	[DateAdded]          [DateAdded] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateAdded_1938515127]
		 DEFAULT  sysdatetime(),
	[DateOfLastUpdate]   [DateOfLastUpdate] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateOfLastUpdate_2113924967]
		 DEFAULT  sysdatetime(),
	[UserAuthorizationId] [SurrogateKeyInt]  NOT NULL 
)
go

CREATE TABLE [Shipper]
( 
	[ShipperId]          [SurrogateKeyInt]  IDENTITY ( 1,1 )  NOT NULL ,
	[ShipperCompanyName] [CompanyName]  NOT NULL ,
	[PhoneNumber]        [TelephoneNumber]  NOT NULL ,
	[UserAuthorizationId] [SurrogateKeyInt]  NOT NULL ,
	[DateAdded]          [DateAdded] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateAdded_1803776181]
		 DEFAULT  sysdatetime(),
	[DateOfLastUpdate]   [DateOfLastUpdate] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateOfLastUpdate_1979848865]
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE [Supplier]
( 
	[SupplierId]         [SurrogateKeyInt]  IDENTITY ( 1,1 )  NOT NULL ,
	[SupplierCompanyName] [CompanyName]  NOT NULL ,
	[SupplierContactName] [ContactName]  NOT NULL ,
	[SupplierContactTitle] [ContactTitle]  NOT NULL ,
	[SupplierAddress]    [Address]  NOT NULL ,
	[SupplierCity]       [City]  NOT NULL ,
	[SupplierRegion]     [Region]  NULL ,
	[SupplierPostalCode] [PostalCode]  NULL ,
	[SupplierCountry]    [Country]  NOT NULL ,
	[SupplierPhoneNumber] [TelephoneNumber]  NOT NULL ,
	[SupplierFaxNumber]  [TelephoneNumber]  NULL ,
	[UserAuthorizationId] [SurrogateKeyInt]  NOT NULL ,
	[DateAdded]          [DateAdded] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateAdded_1938472912]
		 DEFAULT  sysdatetime(),
	[DateOfLastUpdate]   [DateOfLastUpdate] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateOfLastUpdate_652677274]
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE [UserAuthorization]
( 
	[UserAuthorizationId] [SurrogateKeyInt]  IDENTITY  NOT NULL ,
	[ClassTime]          [ClassTime] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_ClassTime_1334187979]
		 DEFAULT  '9:15',
	[IndividualProject]  [IndividualProject] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_IndividualProject_250751839]
		 DEFAULT  'CSCI381 Midterm Project',
	[GroupMemberLastName] [GroupMemberLastName]  NOT NULL ,
	[GroupMemberFirstName] [GroupMemberFirstName] ,
	[GroupName]          [GroupName] ,
	[DateAdded]          [DateAdded] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateAdded_1652412318]
		 DEFAULT  sysdatetime(),
	[DateOfLastUpdate]   [DateOfLastUpdate] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateOfLastUpdate_387522983]
		 DEFAULT  sysdatetime()
)
go

ALTER TABLE [UserAuthorization]
	 WITH CHECK ADD CONSTRAINT [CHK_Length_FirstName_1569711807] CHECK  ( len([GroupMemberFirstName]) <= 25 )
go

CREATE TABLE [VersionedEmployeeHistory]
( 
	[EmployeeId]         [SurrogateKeyInt]  NOT NULL ,
	[EmployeeFullName]   varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL ,
	[Department]         varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL ,
	[Salary]             money  NOT NULL ,
	[Notes]              varchar(60) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL ,
	[SysStart]           datetime2  NOT NULL ,
	[SysEnd]             datetime2  NOT NULL ,
	[UserAuthorizationId] [SurrogateKeyInt]  NOT NULL ,
	[DateAdded]          [DateAdded] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateAdded_1094937139]
		 DEFAULT  sysdatetime(),
	[DateOfLastUpdate]   [DateOfLastUpdate] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateOfLastUpdate_2089042657]
		 DEFAULT  sysdatetime()
)
go

ALTER TABLE [AuditTriggeredEmployeeHistory]
	ADD CONSTRAINT [PK_TriggeredEmployeeHistoryId] PRIMARY KEY  NONCLUSTERED ([TriggeredEmployeeHistoryId] ASC)
go

CREATE UNIQUE CLUSTERED INDEX [ix_Employees] ON [AuditTriggeredEmployeeHistory]
( 
	[EmployeeId]          ASC,
	[SysStartTime]        ASC,
	[SysEndTime]          ASC,
	[TriggeredEmployeeHistoryId]  ASC
)
go

ALTER TABLE [Category]
	ADD CONSTRAINT [PK_Categories] PRIMARY KEY  CLUSTERED ([CategoryId] ASC)
go

ALTER TABLE [Customer]
	ADD CONSTRAINT [PK_Customers] PRIMARY KEY  CLUSTERED ([CustomerId] ASC)
go

ALTER TABLE [Employee]
	ADD CONSTRAINT [PK_Employees] PRIMARY KEY  CLUSTERED ([EmployeeId] ASC)
go

CREATE TABLE [Employee]
( 
	[EmployeeId]         [SurrogateKeyInt]  NOT NULL ,
	[EmployeeFullName]   [Name]  NOT NULL ,
	[Department]         [Name]  NOT NULL ,
	[Salary]             [Salary]  NOT NULL ,
	[Notes]              [Note]  NOT NULL 
	CONSTRAINT [DF_Notes_168098872]
		 DEFAULT  'Internal: ',
	[SysStart]           [SysStart]  GENERATED ALWAYS AS ROW START HIDDEN  NOT NULL 
	CONSTRAINT [DFT_Employees_SysStart]
		 DEFAULT  '19000101',
	[SysEnd]             [SysEnd]  GENERATED ALWAYS AS ROW END HIDDEN  NOT NULL 
	CONSTRAINT [DFT_Employees_SysEnd]
		 DEFAULT  '99991231 23:59:59',
	[UserAuthorizationId] [SurrogateKeyInt]  NOT NULL ,
	[DateAdded]          [DateAdded] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateAdded_1937355992]
		 DEFAULT  sysdatetime(),
	[DateOfLastUpdate]   [DateOfLastUpdate] 
	CONSTRAINT [DF_DbSecurity.UserAuthorization_DateOfLastUpdate_836702379]
		 DEFAULT  sysdatetime(),
	CONSTRAINT [PK_EmployeeVersioned] PRIMARY KEY  NONCLUSTERED ([EmployeeId] ASC),
	PERIOD FOR SYSTEM_TIME (SysStart,SysEnd)
)
WITH 
(
	SYSTEM_VERSIONING = ON (HISTORY_TABLE = [Audit].[VersionedEmployeeHistory], DATA_CONSISTENCY_CHECK = OFF)
)
go

ALTER TABLE [Employee]
	ADD CONSTRAINT [PK_TriggeredEmployee] PRIMARY KEY  NONCLUSTERED ([EmployeeId] ASC)
go

CREATE CLUSTERED INDEX [ix_Employees] ON [Employee]
( 
	[EmployeeId]          ASC,
	[SysStartTime]        ASC,
	[SysEndTime]          ASC
)
go

ALTER TABLE [Nums]
	ADD CONSTRAINT [PK_Nums] PRIMARY KEY  CLUSTERED ([N] ASC)
go

ALTER TABLE [Order]
	ADD CONSTRAINT [PK_Orders] PRIMARY KEY  CLUSTERED ([OrderId] ASC)
go

ALTER TABLE [OrderDetail]
	ADD CONSTRAINT [PK_OrderDetails] PRIMARY KEY  CLUSTERED ([OrderId] ASC,[ProductId] ASC)
go

ALTER TABLE [Product]
	ADD CONSTRAINT [PK_Products] PRIMARY KEY  CLUSTERED ([ProductId] ASC)
go

ALTER TABLE [Shipper]
	ADD CONSTRAINT [PK_Shippers] PRIMARY KEY  CLUSTERED ([ShipperId] ASC)
go

ALTER TABLE [Supplier]
	ADD CONSTRAINT [PK_Suppliers] PRIMARY KEY  CLUSTERED ([SupplierId] ASC)
go

ALTER TABLE [UserAuthorization]
	ADD CONSTRAINT [XPKUserAuthorization] PRIMARY KEY  CLUSTERED ([UserAuthorizationId] ASC)
go

ALTER TABLE [VersionedEmployeeHistory]
	ADD CONSTRAINT [XPKVersionedEmployeeHistory] PRIMARY KEY  NONCLUSTERED ([EmployeeId] ASC)
go

CREATE CLUSTERED INDEX [ix_VersionedEmployeeHistory] ON [VersionedEmployeeHistory]
( 
	[SysEnd]              ASC,
	[SysStart]            ASC
)
go

CREATE VIEW [uvw_HumanResourcesEmployee]([EmployeeObjectId],[EmployeeLastName],[EmployeeFirstName],[EmployeeTitle],[EmployeeTitleOfCourtesy],[BirthDate],[HireDate],[EmployeeAddress],[EmployeeCity],[EmployeeRegion],[EmployeePostalCode],[EmployeeCountry],[EmployeePhoneNumber],[EmployeeManagerId])
AS
SELECT E.[EmployeeId],E.[EmployeeLastName],E.[EmployeeFirstName],E.[EmployeeTitle],E.[EmployeeTitleOfCourtesy],E.[BirthDate],E.[HireDate],E.[EmployeeAddress],E.[EmployeeCity],E.[EmployeeRegion],E.[EmployeePostalCode],E.[EmployeeCountry],E.[EmployeePhoneNumber],E.[EmployeeManagerId]
	FROM [Employee] E
go

CREATE VIEW [uvw_ProductionCategory]([CategoryObjectId],[CategoryName],[Description])
AS
SELECT [Category].[CategoryId],[Category].[CategoryName],[Category].[Description]
	FROM [Category]
go

CREATE VIEW [JsonOutput].[uvw_ProductionProduct] AS  SELECT P.ProductId AS ProductObjectId, P.ProductName, P.SupplierId, P.CategoryId, P.UnitPrice, P.Discontinued, C.CategoryId AS Production.CategoryObjectId, C.CategoryName AS Production.CategoryName, C.Description AS Production.Description, S.SupplierId AS Production.SupplierId, S.SupplierCompanyName AS Production.SupplierCompanyName, S.SupplierContactName AS Production.SupplierContactName, S.SupplierPhoneNumber AS Production.SupplierPhoneNumber, S.SupplierFaxNumber AS Production.SupplierFaxNumber FROM Production.Product AS P   INNER JOIN   Production.Category AS C ON C.CategoryId = P.CategoryId   INNER JOIN   Production.Supplier AS S ON S.SupplierId = P.SupplierId
go

CREATE VIEW [uvw_ProductionSupplier]([SupplierObjectId],[SupplierCompanyName],[SupplierContactName],[SupplierContactTitle],[SupplierAddress],[SupplierCity],[SupplierRegion],[SupplierPostalCode],[SupplierCountry],[SupplierPhoneNumber],[SupplierFaxNumber])
AS
SELECT S.[SupplierId],S.[SupplierCompanyName],S.[SupplierContactName],S.[SupplierContactTitle],S.[SupplierAddress],S.[SupplierCity],S.[SupplierRegion],S.[SupplierPostalCode],S.[SupplierCountry],S.[SupplierPhoneNumber],S.[SupplierFaxNumber]
	FROM [Supplier] S
go

CREATE VIEW [uvw_SalesCustomer]([CustomerObjectId],[CustomerCompanyName],[CustomerContactName],[CustomerContactTitle],[CustomerAddress],[CustomerCity],[CustomerRegion],[CustomerPostalCode],[CustomerCountry],[CustomerPhoneNumber],[CustomerFaxNumber])
AS
SELECT C.[CustomerId],C.[CustomerCompanyName],C.[CustomerContactName],C.[CustomerContactTitle],C.[CustomerAddress],C.[CustomerCity],C.[CustomerRegion],C.[CustomerPostalCode],C.[CustomerCountry],C.[CustomerPhoneNumber],C.[CustomerFaxNumber]
	FROM [Customer] C
go

CREATE VIEW [uvw_SalesShipper]([ShipperObjectId],[ShipperCompanyName],[PhoneNumber])
AS
SELECT S.[ShipperId],S.[ShipperCompanyName],S.[PhoneNumber]
	FROM [Shipper] S
go

CREATE VIEW [uvw_Order]([OrderId],[CustomerId],[EmployeeId],[OrderDate],[RequiredDate],[ShipToDate],[Freight],[ShipToName],[ShipToAddress],[ShipToCity],[ShipToRegion],[ShipToPostalCode],[ShipToCountry])
AS
SELECT O.[OrderId],O.[CustomerId],O.[EmployeeId],O.[OrderDate],O.[RequiredDate],O.[ShipToDate],O.[Freight],O.[ShipToName],O.[ShipToAddress],O.[ShipToCity],O.[ShipToRegion],O.[ShipToPostalCode],O.[ShipToCountry]
	FROM [Order] O
go

CREATE VIEW [uvw_OrderDetail]([OrderId],[ProductId],[UnitPrice],[Quantity],[DiscountPercentage])
AS
SELECT OD.[OrderId],OD.[ProductId],OD.[UnitPrice],OD.[Quantity],OD.[DiscountPercentage]
	FROM [OrderDetail] OD
go

CREATE VIEW [Utils].[uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint] AS  SELECT  concat( tbl.TABLE_SCHEMA , '.' , tbl.TABLE_NAME )  AS FullyQualifiedTableName, tbl.TABLE_SCHEMA AS SchemaName, tbl.TABLE_NAME AS TableName, col.COLUMN_NAME AS ColumnName, col.ORDINAL_POSITION AS OrdinalPosition,  concat( col.DOMAIN_SCHEMA , '.' , col.DOMAIN_NAME )  AS FullyQualifiedDomainName, col.DOMAIN_NAME AS DomainName, CASE WHEN col.DATA_TYPE = 'varchar' THEN  concat( 'varchar(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'char' THEN  concat( 'char(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'nvarchar' THEN  concat( 'nvarchar(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'nchar' THEN  concat( 'nchar(' , CHARACTER_MAXIMUM_LENGTH , ')' )  WHEN col.DATA_TYPE = 'numeric' THEN  concat( 'numeric(' , NUMERIC_PRECISION_RADIX , ', ' , NUMERIC_SCALE , ')' )  WHEN col.DATA_TYPE = 'decimal' THEN  concat( 'decimal(' , NUMERIC_PRECISION_RADIX , ', ' , NUMERIC_SCALE , ')' )  ELSE col.DATA_TYPE END AS DataType, col.IS_NULLABLE AS IsNullable, dcn.DefaultName, col.COLUMN_DEFAULT AS DefaultNameDefinition, cc.CONSTRAINT_NAME AS CheckConstraintRuleName, cc.CHECK_CLAUSE AS CheckConstraintRuleNameDefinition FROM (  SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, TABLE_TYPE FROM INFORMATION_SCHEMA.TABLES WHERE ( TABLE_TYPE = 'BASE TABLE' ) ) AS tbl    INNER JOIN   (  SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, ORDINAL_POSITION, COLUMN_DEFAULT, IS_NULLABLE, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, CHARACTER_OCTET_LENGTH, NUMERIC_PRECISION, NUMERIC_PRECISION_RADIX, NUMERIC_SCALE, DATETIME_PRECISION, CHARACTER_SET_CATALOG, CHARACTER_SET_SCHEMA, CHARACTER_SET_NAME, COLLATION_CATALOG, COLLATION_SCHEMA, COLLATION_NAME, DOMAIN_CATALOG, DOMAIN_SCHEMA, DOMAIN_NAME FROM INFORMATION_SCHEMA.COLUMNS ) AS col  ON col.TABLE_CATALOG = tbl.TABLE_CATALOG AND col.TABLE_SCHEMA = tbl.TABLE_SCHEMA AND col.TABLE_NAME = tbl.TABLE_NAME   LEFT OUTER JOIN   (  SELECT t.name AS TableName,  schema_name( s.schema_id )  AS SchemaName, ac.name AS ColumnName, d.name AS DefaultName FROM sys.all_columns AS ac   INNER JOIN   sys.tables AS t ON ac.object_id = t.object_id   INNER JOIN   sys.schemas AS s ON t.schema_id = s.schema_id   INNER JOIN   sys.default_constraints AS d ON ac.default_object_id = d.object_id ) AS dcn  ON dcn.SchemaName = tbl.TABLE_SCHEMA AND dcn.TableName = tbl.TABLE_NAME AND dcn.ColumnName = col.COLUMN_NAME   LEFT OUTER JOIN   (  SELECT cu.TABLE_CATALOG, cu.TABLE_SCHEMA, cu.TABLE_NAME, cu.COLUMN_NAME, c.CONSTRAINT_CATALOG, c.CONSTRAINT_SCHEMA, c.CONSTRAINT_NAME, c.CHECK_CLAUSE FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE AS cu   INNER JOIN   INFORMATION_SCHEMA.CHECK_CONSTRAINTS AS c ON c.CONSTRAINT_NAME = cu.CONSTRAINT_NAME ) AS cc  ON cc.TABLE_SCHEMA = tbl.TABLE_SCHEMA AND cc.TABLE_NAME = tbl.TABLE_NAME AND cc.COLUMN_NAME = col.COLUMN_NAME
go

CREATE VIEW [uw_FindAllDatabaseColumnsOnTheServer]([FullyQualifiedTableName],[SchemaName],[ColumnName],[OrdinalPosition],[FullyQualifiedDomainName],[DataType],[IsNullable],[DefaultName],[DefaultNameDefinition],[CheckConstraintRuleName],[CheckConstraintRuleNameDefinition],[Server_Name],[Target_Database_Version],[Instance_Name],[Database_Name],[Host_Name])
AS
SELECT vw.FullyQualifiedTableName,vw.SchemaName,vw.ColumnName,vw.OrdinalPosition,vw.FullyQualifiedDomainName,vw.DataType,vw.IsNullable,vw.DefaultName,vw.DefaultNameDefinition,vw.CheckConstraintRuleName,vw.CheckConstraintRuleNameDefinition,@@servername,@@version,@@servicename,db_name(),host_name()
	FROM [uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint] vw
		WHERE vw.SchemaName IN ('Sales' , 'Production' , 'HumanResources')
go


ALTER TABLE [AuditTriggeredEmployeeHistory]
	ADD CONSTRAINT [FK_UserAuthorization_AuditTriggeredEmployeeHistory] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [AuditTriggeredEmployeeHistory]
	ADD CONSTRAINT [FK_Employee_AuditTriggeredEmployeeHistory] FOREIGN KEY ([EmployeeId]) REFERENCES [Employee]([EmployeeId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Category]
	ADD CONSTRAINT [FK_UserAuthorization_Category] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Customer]
	ADD CONSTRAINT [FK_UserAuthorization_Customer] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


exec sp_bindrule '[CHK_birthdate]', '[Employee].[BirthDate]'
go


ALTER TABLE [Employee] WITH CHECK 
	ADD CONSTRAINT [FK_Employee_Employee] FOREIGN KEY ([EmployeeManagerId]) REFERENCES [Employee]([EmployeeId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Employee]
	  WITH CHECK CHECK CONSTRAINT [FK_Employee_Employee]
go

ALTER TABLE [Employee]
	ADD CONSTRAINT [FK_UserAuthorization_Employee] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Employee]
	ADD CONSTRAINT [FK_UserAuthorization_Employee] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Employee]
	ADD CONSTRAINT [FK_UserAuthorization_Employee] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Employee]
	ADD CONSTRAINT [FK_UserAuthorization_Employee] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Nums]
	ADD CONSTRAINT [FK_UserAuthorization_Nums] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Order] WITH CHECK 
	ADD CONSTRAINT [FK_Employee_Order] FOREIGN KEY ([EmployeeId]) REFERENCES [Employee]([EmployeeId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Order]
	  WITH CHECK CHECK CONSTRAINT [FK_Employee_Order]
go

ALTER TABLE [Order] WITH CHECK 
	ADD CONSTRAINT [FK_Customer_Order] FOREIGN KEY ([CustomerId]) REFERENCES [Customer]([CustomerId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Order]
	  WITH CHECK CHECK CONSTRAINT [FK_Customer_Order]
go

ALTER TABLE [Order]
	ADD CONSTRAINT [FK_UserAuthorization_Order] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Order]
	ADD CONSTRAINT [FK_Shipper_Order] FOREIGN KEY ([ShipperId]) REFERENCES [Shipper]([ShipperId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


exec sp_bindrule '[CHK_Quantity]', '[OrderDetail].[Quantity]'
go

exec sp_bindrule '[CHK_DiscountPercentage]', '[OrderDetail].[DiscountPercentage]'
go


ALTER TABLE [OrderDetail] WITH CHECK 
	ADD CONSTRAINT [FK_Order_OrderDetail] FOREIGN KEY ([OrderId]) REFERENCES [Order]([OrderId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [OrderDetail]
	  WITH CHECK CHECK CONSTRAINT [FK_Order_OrderDetail]
go

ALTER TABLE [OrderDetail] WITH CHECK 
	ADD CONSTRAINT [FK_Product_OrderDetail] FOREIGN KEY ([ProductId]) REFERENCES [Product]([ProductId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [OrderDetail]
	  WITH CHECK CHECK CONSTRAINT [FK_Product_OrderDetail]
go

ALTER TABLE [OrderDetail]
	ADD CONSTRAINT [FK_UserAuthorization_OrderDetail] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


exec sp_bindrule '[CHK_Products_unitprice]', '[Product].[UnitPrice]'
go


ALTER TABLE [Product] WITH CHECK 
	ADD CONSTRAINT [FK_Category_Product] FOREIGN KEY ([CategoryId]) REFERENCES [Category]([CategoryId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Product]
	  WITH CHECK CHECK CONSTRAINT [FK_Category_Product]
go

ALTER TABLE [Product] WITH CHECK 
	ADD CONSTRAINT [FK_Supplier_Product] FOREIGN KEY ([SupplierId]) REFERENCES [Supplier]([SupplierId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Product]
	  WITH CHECK CHECK CONSTRAINT [FK_Supplier_Product]
go

ALTER TABLE [Product]
	ADD CONSTRAINT [FK_UserAuthorization_Product] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Shipper]
	ADD CONSTRAINT [FK_UserAuthorization_Shipper] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Supplier]
	ADD CONSTRAINT [FK_UserAuthorization_Supplier] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [VersionedEmployeeHistory]
	ADD CONSTRAINT [FK_UserAuthorization_VersionedEmployeeHistory] FOREIGN KEY ([UserAuthorizationId]) REFERENCES [UserAuthorization]([UserAuthorizationId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [VersionedEmployeeHistory]
	ADD CONSTRAINT [FK_Employee_VersionedEmployeeHistory] FOREIGN KEY ([EmployeeId]) REFERENCES [Employee]([EmployeeId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [VersionedEmployeeHistory]
	ADD CONSTRAINT [FK_Employee_VersionedEmployeeHistory] FOREIGN KEY ([EmployeeId]) REFERENCES [Employee]([EmployeeId])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

CREATE FUNCTION [MongoOrder] ()  
  RETURNS TABLE
 
  
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




go

CREATE FUNCTION [MongoOrderDetail] (@OrderId int )  
  RETURNS TABLE
 
  
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




go

CREATE FUNCTION [utvf_EmployeeCurrentAndHistoryCTE] (@EmployeeId int )  
  RETURNS TABLE
 
  
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




go

CREATE FUNCTION [utvf_EmployeeCurrentAndHistory] (@EmployeeId int )  
  RETURNS TABLE
 
  
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





go

CREATE PROCEDURE [usp_getorders] @country nvarchar(40)   
   
 AS begin
    select o.OrderId
         , o.CustomerId
         , o.EmployeeId
         , o.OrderDate
		 ,@country as Country
    from Sales.[Order] as o
    where o.ShipToCountry = @country;
end;
go

CREATE TRIGGER [uTdu_AuditTriggeredEmployeeHistory] ON Employee
   WITH 
 EXECUTE AS CALLER  AFTER DELETE,UPDATE 
  
  AS

begin
			declare @action char(1) = 'I';
			declare @IsDeleted char(1) = 'N';
			declare @DeletedMessage char(25) = 'Rows has been deleted';
			declare @SysStartTimeAsSysEnd datetime2;
		   --
			if (exists (select * from inserted) and exists (select * from deleted))
			begin
				set @action = 'U';
				SELECT @SysStartTimeAsSysEnd = Inserted.SysStartTime FROM Inserted
			end;
			else if (exists (select * from deleted))
			begin
				set @action = 'D';
				set @IsDeleted = 'Y';
			end;
			else
				set @action = 'I';

			if (@action <> 'I')
				insert into Triggered.AuditTriggeredEmployeeHistory
				(
					AuditTriggeredEmployeeHistoryTimestamp
				  , TriggerOption
				  , EmployeeId
				  , EmployeeFullName
				  , Department
				  , Salary
				  , Notes
				  , IsDeleted
				  , TransactionNumber
				  , UserAuthenticatedKey
				  , TimestampRowChanged
				  , SysStartTime
				  , SysEndTime
				)
				select sysdatetime()       as AuditTriggeredEmployeeHistoryTimestamp
					 , @action             as TriggerOption
					 , EmployeeId
					 , EmployeeFullName
					 , Department
					 , Salary
					 , case
						   when @action <> 'D' then
							   Deleted.Notes
						   else
							   @DeletedMessage
					   end
					 , @IsDeleted          as IsDeleted
					 , Deleted.TransactionNumber
					 , UserAuthenticatedKey
					 , TimestampRowChanged
					 , Deleted.SysStartTime
					 , case
						   when @action <> 'D' then
							  @SysStartTimeAsSysEnd
						   else
							   sysdatetime()
					   end as SysEndTime
				from Deleted;
		end;

 
go


ENABLE TRIGGER [uTdu_AuditTriggeredEmployeeHistory] ON Employee
go


CREATE TRIGGER tD_AuditTriggeredEmployeeHistory ON AuditTriggeredEmployeeHistory FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on AuditTriggeredEmployeeHistory */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Employee (Employee to AuditTriggeredEmployeeHistory) AuditTriggeredEmployeeHistory on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0003c346", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="AuditTriggeredEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to AuditTriggeredEmployeeHistory)", C2P_VERB_PHRASE="(AuditTriggeredEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_AuditTriggeredEmployeeHistory", FK_COLUMNS="EmployeeId" */
    IF EXISTS (SELECT * FROM deleted,Employee
      WHERE
        /* %JoinFKPK(deleted,Employee," = "," AND") */
        deleted.EmployeeId = Employee.EmployeeId AND
        NOT EXISTS (
          SELECT * FROM AuditTriggeredEmployeeHistory
          WHERE
            /* %JoinFKPK(AuditTriggeredEmployeeHistory,Employee," = "," AND") */
            AuditTriggeredEmployeeHistory.EmployeeId = Employee.EmployeeId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last AuditTriggeredEmployeeHistory because Employee exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to AuditTriggeredEmployeeHistory) AuditTriggeredEmployeeHistory on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="AuditTriggeredEmployeeHistory"
    P2C_VERB_PHRASE="(UserAuthorization to AuditTriggeredEmployeeHistory)", C2P_VERB_PHRASE="(AuditTriggeredEmployeeHistory from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_AuditTriggeredEmployeeHistory", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM AuditTriggeredEmployeeHistory
          WHERE
            /* %JoinFKPK(AuditTriggeredEmployeeHistory,UserAuthorization," = "," AND") */
            AuditTriggeredEmployeeHistory.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last AuditTriggeredEmployeeHistory because UserAuthorization exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_AuditTriggeredEmployeeHistory ON AuditTriggeredEmployeeHistory FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on AuditTriggeredEmployeeHistory */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insTriggeredEmployeeHistoryId SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Employee (Employee to AuditTriggeredEmployeeHistory) AuditTriggeredEmployeeHistory on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0003a046", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="AuditTriggeredEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to AuditTriggeredEmployeeHistory)", C2P_VERB_PHRASE="(AuditTriggeredEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_AuditTriggeredEmployeeHistory", FK_COLUMNS="EmployeeId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(EmployeeId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Employee
        WHERE
          /* %JoinFKPK(inserted,Employee) */
          inserted.EmployeeId = Employee.EmployeeId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update AuditTriggeredEmployeeHistory because Employee does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to AuditTriggeredEmployeeHistory) AuditTriggeredEmployeeHistory on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="AuditTriggeredEmployeeHistory"
    P2C_VERB_PHRASE="(UserAuthorization to AuditTriggeredEmployeeHistory)", C2P_VERB_PHRASE="(AuditTriggeredEmployeeHistory from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_AuditTriggeredEmployeeHistory", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,UserAuthorization) */
          inserted.UserAuthorizationId = UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update AuditTriggeredEmployeeHistory because UserAuthorization does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_Category ON Category FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Category */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Category (Category to Product) Product on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002c14e", PARENT_OWNER="", PARENT_TABLE="Category"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(Category to Product)", C2P_VERB_PHRASE="(Product from Category)", 
    FK_CONSTRAINT="FK_Category_Product", FK_COLUMNS="CategoryId" */
    IF EXISTS (
      SELECT * FROM deleted,Product
      WHERE
        /*  %JoinFKPK(Product,deleted," = "," AND") */
        Product.CategoryId = deleted.CategoryId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Category because Product exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Category) Category on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Category"
    P2C_VERB_PHRASE="(UserAuthorization to Category)", C2P_VERB_PHRASE="(Category from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Category", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Category
          WHERE
            /* %JoinFKPK(Category,UserAuthorization," = "," AND") */
            Category.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Category because UserAuthorization exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_Category ON Category FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Category */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insCategoryId SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Category (Category to Product) Product on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0002e088", PARENT_OWNER="", PARENT_TABLE="Category"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(Category to Product)", C2P_VERB_PHRASE="(Product from Category)", 
    FK_CONSTRAINT="FK_Category_Product", FK_COLUMNS="CategoryId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CategoryId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Product
      WHERE
        /*  %JoinFKPK(Product,deleted," = "," AND") */
        Product.CategoryId = deleted.CategoryId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Category because Product exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to Category) Category on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Category"
    P2C_VERB_PHRASE="(UserAuthorization to Category)", C2P_VERB_PHRASE="(Category from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Category", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,UserAuthorization) */
          inserted.UserAuthorizationId = UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Category because UserAuthorization does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_Customer ON Customer FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Customer */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Customer (Customer to Order) Order on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002b144", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Customer to Order)", C2P_VERB_PHRASE="(Order from Customer)", 
    FK_CONSTRAINT="FK_Customer_Order", FK_COLUMNS="CustomerId" */
    IF EXISTS (
      SELECT * FROM deleted,Order
      WHERE
        /*  %JoinFKPK(Order,deleted," = "," AND") */
        Order.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Customer because Order exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Customer) Customer on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="(UserAuthorization to Customer)", C2P_VERB_PHRASE="(Customer from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Customer", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Customer
          WHERE
            /* %JoinFKPK(Customer,UserAuthorization," = "," AND") */
            Customer.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Customer because UserAuthorization exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_Customer ON Customer FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Customer */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insCustomerId SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Customer (Customer to Order) Order on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00031631", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Customer to Order)", C2P_VERB_PHRASE="(Order from Customer)", 
    FK_CONSTRAINT="FK_Customer_Order", FK_COLUMNS="CustomerId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Order
      WHERE
        /*  %JoinFKPK(Order,deleted," = "," AND") */
        Order.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Customer because Order exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to Customer) Customer on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="(UserAuthorization to Customer)", C2P_VERB_PHRASE="(Customer from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Customer", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,UserAuthorization) */
          inserted.UserAuthorizationId = UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.UserAuthorizationId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Customer because UserAuthorization does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_Employee ON Employee FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Employee */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Employee (Employee to Order) Order on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000511dc", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Employee to Order)", C2P_VERB_PHRASE="(Order from Employee)", 
    FK_CONSTRAINT="FK_Employee_Order", FK_COLUMNS="EmployeeId" */
    IF EXISTS (
      SELECT * FROM deleted,Order
      WHERE
        /*  %JoinFKPK(Order,deleted," = "," AND") */
        Order.EmployeeId = deleted.EmployeeId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Employee because Order exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Employee (Employee to Employee) Employee on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(Employee to Employee)", C2P_VERB_PHRASE="(Employee from Employee)", 
    FK_CONSTRAINT="FK_Employee_Employee", FK_COLUMNS="EmployeeManagerId" */
    IF EXISTS (
      SELECT * FROM deleted,Employee
      WHERE
        /*  %JoinFKPK(Employee,deleted," = "," AND") */
        Employee.EmployeeManagerId = deleted.EmployeeId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Employee because Employee exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Employee) Employee on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Employee
          WHERE
            /* %JoinFKPK(Employee,UserAuthorization," = "," AND") */
            Employee.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Employee because UserAuthorization exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Employee (Employee to Employee) Employee on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(Employee to Employee)", C2P_VERB_PHRASE="(Employee from Employee)", 
    FK_CONSTRAINT="FK_Employee_Employee", FK_COLUMNS="EmployeeManagerId" */
    IF EXISTS (SELECT * FROM deleted,Employee
      WHERE
        /* %JoinFKPK(deleted,Employee," = "," AND") */
        deleted.EmployeeManagerId = Employee.EmployeeId AND
        NOT EXISTS (
          SELECT * FROM Employee
          WHERE
            /* %JoinFKPK(Employee,Employee," = "," AND") */
            Employee.EmployeeManagerId = Employee.EmployeeId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Employee because Employee exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_Employee ON Employee FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Employee */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insEmployeeId SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Employee (Employee to Order) Order on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0005b8d3", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Employee to Order)", C2P_VERB_PHRASE="(Order from Employee)", 
    FK_CONSTRAINT="FK_Employee_Order", FK_COLUMNS="EmployeeId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(EmployeeId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Order
      WHERE
        /*  %JoinFKPK(Order,deleted," = "," AND") */
        Order.EmployeeId = deleted.EmployeeId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Employee because Order exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Employee (Employee to Employee) Employee on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(Employee to Employee)", C2P_VERB_PHRASE="(Employee from Employee)", 
    FK_CONSTRAINT="FK_Employee_Employee", FK_COLUMNS="EmployeeManagerId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(EmployeeId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Employee
      WHERE
        /*  %JoinFKPK(Employee,deleted," = "," AND") */
        Employee.EmployeeManagerId = deleted.EmployeeId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Employee because Employee exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to Employee) Employee on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,UserAuthorization) */
          inserted.UserAuthorizationId = UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Employee because UserAuthorization does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Employee (Employee to Employee) Employee on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(Employee to Employee)", C2P_VERB_PHRASE="(Employee from Employee)", 
    FK_CONSTRAINT="FK_Employee_Employee", FK_COLUMNS="EmployeeManagerId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(EmployeeManagerId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Employee
        WHERE
          /* %JoinFKPK(inserted,Employee) */
          inserted.EmployeeManagerId = Employee.EmployeeId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.EmployeeManagerId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Employee because Employee does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_Employee ON Employee FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Employee */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Employee) Employee on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001aadf", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Employee
          WHERE
            /* %JoinFKPK(Employee,UserAuthorization," = "," AND") */
            Employee.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Employee because UserAuthorization exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_Employee ON Employee FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Employee */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insEmployeeId SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to Employee) Employee on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0001c7fe", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,UserAuthorization) */
          inserted.UserAuthorizationId = UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Employee because UserAuthorization does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_Employee ON Employee FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Employee */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Employee (Employee to VersionedEmployeeHistory) VersionedEmployeeHistory on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00078314", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_VersionedEmployeeHistory", FK_COLUMNS="EmployeeId" */
    IF EXISTS (
      SELECT * FROM deleted,VersionedEmployeeHistory
      WHERE
        /*  %JoinFKPK(VersionedEmployeeHistory,deleted," = "," AND") */
        VersionedEmployeeHistory.EmployeeId = deleted.EmployeeId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Employee because VersionedEmployeeHistory exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Employee (Employee to AuditTriggeredEmployeeHistory) AuditTriggeredEmployeeHistory on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="AuditTriggeredEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to AuditTriggeredEmployeeHistory)", C2P_VERB_PHRASE="(AuditTriggeredEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_AuditTriggeredEmployeeHistory", FK_COLUMNS="EmployeeId" */
    IF EXISTS (
      SELECT * FROM deleted,AuditTriggeredEmployeeHistory
      WHERE
        /*  %JoinFKPK(AuditTriggeredEmployeeHistory,deleted," = "," AND") */
        AuditTriggeredEmployeeHistory.EmployeeId = deleted.EmployeeId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Employee because AuditTriggeredEmployeeHistory exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Employee (Employee to VersionedEmployeeHistory) VersionedEmployeeHistory on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_VersionedEmployeeHistory", FK_COLUMNS="EmployeeId" */
    IF EXISTS (
      SELECT * FROM deleted,VersionedEmployeeHistory
      WHERE
        /*  %JoinFKPK(VersionedEmployeeHistory,deleted," = "," AND") */
        VersionedEmployeeHistory.EmployeeId = deleted.EmployeeId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Employee because VersionedEmployeeHistory exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Employee) Employee on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Employee
          WHERE
            /* %JoinFKPK(Employee,UserAuthorization," = "," AND") */
            Employee.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Employee because UserAuthorization exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Employee) Employee on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Employee
          WHERE
            /* %JoinFKPK(Employee,UserAuthorization," = "," AND") */
            Employee.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Employee because UserAuthorization exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_Employee ON Employee FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Employee */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insEmployeeId SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Employee (Employee to VersionedEmployeeHistory) VersionedEmployeeHistory on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00084d80", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_VersionedEmployeeHistory", FK_COLUMNS="EmployeeId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(EmployeeId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,VersionedEmployeeHistory
      WHERE
        /*  %JoinFKPK(VersionedEmployeeHistory,deleted," = "," AND") */
        VersionedEmployeeHistory.EmployeeId = deleted.EmployeeId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Employee because VersionedEmployeeHistory exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Employee (Employee to AuditTriggeredEmployeeHistory) AuditTriggeredEmployeeHistory on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="AuditTriggeredEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to AuditTriggeredEmployeeHistory)", C2P_VERB_PHRASE="(AuditTriggeredEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_AuditTriggeredEmployeeHistory", FK_COLUMNS="EmployeeId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(EmployeeId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,AuditTriggeredEmployeeHistory
      WHERE
        /*  %JoinFKPK(AuditTriggeredEmployeeHistory,deleted," = "," AND") */
        AuditTriggeredEmployeeHistory.EmployeeId = deleted.EmployeeId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Employee because AuditTriggeredEmployeeHistory exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Employee (Employee to VersionedEmployeeHistory) VersionedEmployeeHistory on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_VersionedEmployeeHistory", FK_COLUMNS="EmployeeId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(EmployeeId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,VersionedEmployeeHistory
      WHERE
        /*  %JoinFKPK(VersionedEmployeeHistory,deleted," = "," AND") */
        VersionedEmployeeHistory.EmployeeId = deleted.EmployeeId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Employee because VersionedEmployeeHistory exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to Employee) Employee on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,UserAuthorization) */
          inserted.UserAuthorizationId = UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.UserAuthorizationId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Employee because UserAuthorization does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to Employee) Employee on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,UserAuthorization) */
          inserted.UserAuthorizationId = UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Employee because UserAuthorization does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_Nums ON Nums FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Nums */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Nums) Nums on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00019903", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Nums"
    P2C_VERB_PHRASE="(UserAuthorization to Nums)", C2P_VERB_PHRASE="(Nums from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Nums", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Nums
          WHERE
            /* %JoinFKPK(Nums,UserAuthorization," = "," AND") */
            Nums.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Nums because UserAuthorization exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_Nums ON Nums FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Nums */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insN SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to Nums) Nums on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0001b1b1", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Nums"
    P2C_VERB_PHRASE="(UserAuthorization to Nums)", C2P_VERB_PHRASE="(Nums from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Nums", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,UserAuthorization) */
          inserted.UserAuthorizationId = UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Nums because UserAuthorization does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_Order ON Order FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Order */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Order (Order to OrderDetail) OrderDetail on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00066809", PARENT_OWNER="", PARENT_TABLE="Order"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(Order to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from Order)", 
    FK_CONSTRAINT="FK_Order_OrderDetail", FK_COLUMNS="OrderId" */
    IF EXISTS (
      SELECT * FROM deleted,OrderDetail
      WHERE
        /*  %JoinFKPK(OrderDetail,deleted," = "," AND") */
        OrderDetail.OrderId = deleted.OrderId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Order because OrderDetail exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Shipper (Shipper to Order) Order on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Shipper"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Shipper to Order)", C2P_VERB_PHRASE="(Order from Shipper)", 
    FK_CONSTRAINT="FK_Shipper_Order", FK_COLUMNS="ShipperId" */
    IF EXISTS (SELECT * FROM deleted,Shipper
      WHERE
        /* %JoinFKPK(deleted,Shipper," = "," AND") */
        deleted.ShipperId = Shipper.ShipperId AND
        NOT EXISTS (
          SELECT * FROM Order
          WHERE
            /* %JoinFKPK(Order,Shipper," = "," AND") */
            Order.ShipperId = Shipper.ShipperId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Order because Shipper exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Order) Order on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(UserAuthorization to Order)", C2P_VERB_PHRASE="(Order from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Order", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Order
          WHERE
            /* %JoinFKPK(Order,UserAuthorization," = "," AND") */
            Order.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Order because UserAuthorization exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Employee (Employee to Order) Order on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Employee to Order)", C2P_VERB_PHRASE="(Order from Employee)", 
    FK_CONSTRAINT="FK_Employee_Order", FK_COLUMNS="EmployeeId" */
    IF EXISTS (SELECT * FROM deleted,Employee
      WHERE
        /* %JoinFKPK(deleted,Employee," = "," AND") */
        deleted.EmployeeId = Employee.EmployeeId AND
        NOT EXISTS (
          SELECT * FROM Order
          WHERE
            /* %JoinFKPK(Order,Employee," = "," AND") */
            Order.EmployeeId = Employee.EmployeeId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Order because Employee exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Customer (Customer to Order) Order on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Customer to Order)", C2P_VERB_PHRASE="(Order from Customer)", 
    FK_CONSTRAINT="FK_Customer_Order", FK_COLUMNS="CustomerId" */
    IF EXISTS (SELECT * FROM deleted,Customer
      WHERE
        /* %JoinFKPK(deleted,Customer," = "," AND") */
        deleted.CustomerId = Customer.CustomerId AND
        NOT EXISTS (
          SELECT * FROM Order
          WHERE
            /* %JoinFKPK(Order,Customer," = "," AND") */
            Order.CustomerId = Customer.CustomerId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Order because Customer exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_Order ON Order FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Order */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insOrderId SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Order (Order to OrderDetail) OrderDetail on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00072dfd", PARENT_OWNER="", PARENT_TABLE="Order"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(Order to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from Order)", 
    FK_CONSTRAINT="FK_Order_OrderDetail", FK_COLUMNS="OrderId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(OrderId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,OrderDetail
      WHERE
        /*  %JoinFKPK(OrderDetail,deleted," = "," AND") */
        OrderDetail.OrderId = deleted.OrderId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Order because OrderDetail exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Shipper (Shipper to Order) Order on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Shipper"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Shipper to Order)", C2P_VERB_PHRASE="(Order from Shipper)", 
    FK_CONSTRAINT="FK_Shipper_Order", FK_COLUMNS="ShipperId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ShipperId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Shipper
        WHERE
          /* %JoinFKPK(inserted,Shipper) */
          inserted.ShipperId = Shipper.ShipperId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.ShipperId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Order because Shipper does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to Order) Order on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(UserAuthorization to Order)", C2P_VERB_PHRASE="(Order from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Order", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,UserAuthorization) */
          inserted.UserAuthorizationId = UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Order because UserAuthorization does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Employee (Employee to Order) Order on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Employee to Order)", C2P_VERB_PHRASE="(Order from Employee)", 
    FK_CONSTRAINT="FK_Employee_Order", FK_COLUMNS="EmployeeId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(EmployeeId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Employee
        WHERE
          /* %JoinFKPK(inserted,Employee) */
          inserted.EmployeeId = Employee.EmployeeId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Order because Employee does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Customer (Customer to Order) Order on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Customer to Order)", C2P_VERB_PHRASE="(Order from Customer)", 
    FK_CONSTRAINT="FK_Customer_Order", FK_COLUMNS="CustomerId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Customer
        WHERE
          /* %JoinFKPK(inserted,Customer) */
          inserted.CustomerId = Customer.CustomerId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.CustomerId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Order because Customer does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_OrderDetail ON OrderDetail FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on OrderDetail */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to OrderDetail) OrderDetail on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00043f0d", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(UserAuthorization to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_OrderDetail", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM OrderDetail
          WHERE
            /* %JoinFKPK(OrderDetail,UserAuthorization," = "," AND") */
            OrderDetail.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last OrderDetail because UserAuthorization exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Product (Product to OrderDetail) OrderDetail on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Product"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(Product to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from Product)", 
    FK_CONSTRAINT="FK_Product_OrderDetail", FK_COLUMNS="ProductId" */
    IF EXISTS (SELECT * FROM deleted,Product
      WHERE
        /* %JoinFKPK(deleted,Product," = "," AND") */
        deleted.ProductId = Product.ProductId AND
        NOT EXISTS (
          SELECT * FROM OrderDetail
          WHERE
            /* %JoinFKPK(OrderDetail,Product," = "," AND") */
            OrderDetail.ProductId = Product.ProductId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last OrderDetail because Product exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Order (Order to OrderDetail) OrderDetail on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Order"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(Order to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from Order)", 
    FK_CONSTRAINT="FK_Order_OrderDetail", FK_COLUMNS="OrderId" */
    IF EXISTS (SELECT * FROM deleted,Order
      WHERE
        /* %JoinFKPK(deleted,Order," = "," AND") */
        deleted.OrderId = Order.OrderId AND
        NOT EXISTS (
          SELECT * FROM OrderDetail
          WHERE
            /* %JoinFKPK(OrderDetail,Order," = "," AND") */
            OrderDetail.OrderId = Order.OrderId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last OrderDetail because Order exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_OrderDetail ON OrderDetail FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on OrderDetail */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insOrderId SurrogateKeyInt, 
           @insProductId SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to OrderDetail) OrderDetail on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0004ae37", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(UserAuthorization to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_OrderDetail", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,UserAuthorization) */
          inserted.UserAuthorizationId = UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update OrderDetail because UserAuthorization does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Product (Product to OrderDetail) OrderDetail on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Product"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(Product to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from Product)", 
    FK_CONSTRAINT="FK_Product_OrderDetail", FK_COLUMNS="ProductId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ProductId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Product
        WHERE
          /* %JoinFKPK(inserted,Product) */
          inserted.ProductId = Product.ProductId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update OrderDetail because Product does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Order (Order to OrderDetail) OrderDetail on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Order"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(Order to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from Order)", 
    FK_CONSTRAINT="FK_Order_OrderDetail", FK_COLUMNS="OrderId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(OrderId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Order
        WHERE
          /* %JoinFKPK(inserted,Order) */
          inserted.OrderId = Order.OrderId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update OrderDetail because Order does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_Product ON Product FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Product */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Product (Product to OrderDetail) OrderDetail on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0005510f", PARENT_OWNER="", PARENT_TABLE="Product"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(Product to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from Product)", 
    FK_CONSTRAINT="FK_Product_OrderDetail", FK_COLUMNS="ProductId" */
    IF EXISTS (
      SELECT * FROM deleted,OrderDetail
      WHERE
        /*  %JoinFKPK(OrderDetail,deleted," = "," AND") */
        OrderDetail.ProductId = deleted.ProductId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Product because OrderDetail exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Product) Product on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(UserAuthorization to Product)", C2P_VERB_PHRASE="(Product from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Product", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Product
          WHERE
            /* %JoinFKPK(Product,UserAuthorization," = "," AND") */
            Product.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Product because UserAuthorization exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Supplier (Supplier to Product) Product on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(Supplier to Product)", C2P_VERB_PHRASE="(Product from Supplier)", 
    FK_CONSTRAINT="FK_Supplier_Product", FK_COLUMNS="SupplierId" */
    IF EXISTS (SELECT * FROM deleted,Supplier
      WHERE
        /* %JoinFKPK(deleted,Supplier," = "," AND") */
        deleted.SupplierId = Supplier.SupplierId AND
        NOT EXISTS (
          SELECT * FROM Product
          WHERE
            /* %JoinFKPK(Product,Supplier," = "," AND") */
            Product.SupplierId = Supplier.SupplierId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Product because Supplier exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Category (Category to Product) Product on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Category"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(Category to Product)", C2P_VERB_PHRASE="(Product from Category)", 
    FK_CONSTRAINT="FK_Category_Product", FK_COLUMNS="CategoryId" */
    IF EXISTS (SELECT * FROM deleted,Category
      WHERE
        /* %JoinFKPK(deleted,Category," = "," AND") */
        deleted.CategoryId = Category.CategoryId AND
        NOT EXISTS (
          SELECT * FROM Product
          WHERE
            /* %JoinFKPK(Product,Category," = "," AND") */
            Product.CategoryId = Category.CategoryId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Product because Category exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_Product ON Product FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Product */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insProductId SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Product (Product to OrderDetail) OrderDetail on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0005c820", PARENT_OWNER="", PARENT_TABLE="Product"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(Product to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from Product)", 
    FK_CONSTRAINT="FK_Product_OrderDetail", FK_COLUMNS="ProductId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ProductId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,OrderDetail
      WHERE
        /*  %JoinFKPK(OrderDetail,deleted," = "," AND") */
        OrderDetail.ProductId = deleted.ProductId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Product because OrderDetail exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to Product) Product on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(UserAuthorization to Product)", C2P_VERB_PHRASE="(Product from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Product", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,UserAuthorization) */
          inserted.UserAuthorizationId = UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Product because UserAuthorization does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Supplier (Supplier to Product) Product on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(Supplier to Product)", C2P_VERB_PHRASE="(Product from Supplier)", 
    FK_CONSTRAINT="FK_Supplier_Product", FK_COLUMNS="SupplierId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(SupplierId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Supplier
        WHERE
          /* %JoinFKPK(inserted,Supplier) */
          inserted.SupplierId = Supplier.SupplierId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Product because Supplier does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Category (Category to Product) Product on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Category"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(Category to Product)", C2P_VERB_PHRASE="(Product from Category)", 
    FK_CONSTRAINT="FK_Category_Product", FK_COLUMNS="CategoryId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(CategoryId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Category
        WHERE
          /* %JoinFKPK(inserted,Category) */
          inserted.CategoryId = Category.CategoryId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Product because Category does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_Shipper ON Shipper FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Shipper */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Shipper (Shipper to Order) Order on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002b696", PARENT_OWNER="", PARENT_TABLE="Shipper"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Shipper to Order)", C2P_VERB_PHRASE="(Order from Shipper)", 
    FK_CONSTRAINT="FK_Shipper_Order", FK_COLUMNS="ShipperId" */
    IF EXISTS (
      SELECT * FROM deleted,Order
      WHERE
        /*  %JoinFKPK(Order,deleted," = "," AND") */
        Order.ShipperId = deleted.ShipperId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Shipper because Order exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Shipper) Shipper on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Shipper"
    P2C_VERB_PHRASE="(UserAuthorization to Shipper)", C2P_VERB_PHRASE="(Shipper from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Shipper", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Shipper
          WHERE
            /* %JoinFKPK(Shipper,UserAuthorization," = "," AND") */
            Shipper.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Shipper because UserAuthorization exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_Shipper ON Shipper FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Shipper */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insShipperId SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Shipper (Shipper to Order) Order on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0002e8ab", PARENT_OWNER="", PARENT_TABLE="Shipper"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(Shipper to Order)", C2P_VERB_PHRASE="(Order from Shipper)", 
    FK_CONSTRAINT="FK_Shipper_Order", FK_COLUMNS="ShipperId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ShipperId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Order
      WHERE
        /*  %JoinFKPK(Order,deleted," = "," AND") */
        Order.ShipperId = deleted.ShipperId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Shipper because Order exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to Shipper) Shipper on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Shipper"
    P2C_VERB_PHRASE="(UserAuthorization to Shipper)", C2P_VERB_PHRASE="(Shipper from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Shipper", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,UserAuthorization) */
          inserted.UserAuthorizationId = UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Shipper because UserAuthorization does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_Supplier ON Supplier FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Supplier */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Supplier (Supplier to Product) Product on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002c4ed", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(Supplier to Product)", C2P_VERB_PHRASE="(Product from Supplier)", 
    FK_CONSTRAINT="FK_Supplier_Product", FK_COLUMNS="SupplierId" */
    IF EXISTS (
      SELECT * FROM deleted,Product
      WHERE
        /*  %JoinFKPK(Product,deleted," = "," AND") */
        Product.SupplierId = deleted.SupplierId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Supplier because Product exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Supplier) Supplier on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Supplier"
    P2C_VERB_PHRASE="(UserAuthorization to Supplier)", C2P_VERB_PHRASE="(Supplier from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Supplier", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Supplier
          WHERE
            /* %JoinFKPK(Supplier,UserAuthorization," = "," AND") */
            Supplier.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Supplier because UserAuthorization exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_Supplier ON Supplier FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Supplier */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insSupplierId SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Supplier (Supplier to Product) Product on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0002f95f", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(Supplier to Product)", C2P_VERB_PHRASE="(Product from Supplier)", 
    FK_CONSTRAINT="FK_Supplier_Product", FK_COLUMNS="SupplierId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(SupplierId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Product
      WHERE
        /*  %JoinFKPK(Product,deleted," = "," AND") */
        Product.SupplierId = deleted.SupplierId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Supplier because Product exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to Supplier) Supplier on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Supplier"
    P2C_VERB_PHRASE="(UserAuthorization to Supplier)", C2P_VERB_PHRASE="(Supplier from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Supplier", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,UserAuthorization) */
          inserted.UserAuthorizationId = UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Supplier because UserAuthorization does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_UserAuthorization ON UserAuthorization FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on UserAuthorization */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Employee) Employee on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0011fbb7", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Employee
      WHERE
        /*  %JoinFKPK(Employee,deleted," = "," AND") */
        Employee.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete UserAuthorization because Employee exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Customer) Customer on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="(UserAuthorization to Customer)", C2P_VERB_PHRASE="(Customer from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Customer", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Customer
      WHERE
        /*  %JoinFKPK(Customer,deleted," = "," AND") */
        Customer.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete UserAuthorization because Customer exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to VersionedEmployeeHistory) VersionedEmployeeHistory on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(UserAuthorization to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_VersionedEmployeeHistory", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,VersionedEmployeeHistory
      WHERE
        /*  %JoinFKPK(VersionedEmployeeHistory,deleted," = "," AND") */
        VersionedEmployeeHistory.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete UserAuthorization because VersionedEmployeeHistory exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Supplier) Supplier on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Supplier"
    P2C_VERB_PHRASE="(UserAuthorization to Supplier)", C2P_VERB_PHRASE="(Supplier from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Supplier", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Supplier
      WHERE
        /*  %JoinFKPK(Supplier,deleted," = "," AND") */
        Supplier.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete UserAuthorization because Supplier exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Shipper) Shipper on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Shipper"
    P2C_VERB_PHRASE="(UserAuthorization to Shipper)", C2P_VERB_PHRASE="(Shipper from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Shipper", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Shipper
      WHERE
        /*  %JoinFKPK(Shipper,deleted," = "," AND") */
        Shipper.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete UserAuthorization because Shipper exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Product) Product on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(UserAuthorization to Product)", C2P_VERB_PHRASE="(Product from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Product", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Product
      WHERE
        /*  %JoinFKPK(Product,deleted," = "," AND") */
        Product.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete UserAuthorization because Product exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to OrderDetail) OrderDetail on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(UserAuthorization to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_OrderDetail", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,OrderDetail
      WHERE
        /*  %JoinFKPK(OrderDetail,deleted," = "," AND") */
        OrderDetail.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete UserAuthorization because OrderDetail exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Order) Order on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(UserAuthorization to Order)", C2P_VERB_PHRASE="(Order from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Order", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Order
      WHERE
        /*  %JoinFKPK(Order,deleted," = "," AND") */
        Order.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete UserAuthorization because Order exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Nums) Nums on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Nums"
    P2C_VERB_PHRASE="(UserAuthorization to Nums)", C2P_VERB_PHRASE="(Nums from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Nums", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Nums
      WHERE
        /*  %JoinFKPK(Nums,deleted," = "," AND") */
        Nums.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete UserAuthorization because Nums exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Employee) Employee on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Employee
      WHERE
        /*  %JoinFKPK(Employee,deleted," = "," AND") */
        Employee.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete UserAuthorization because Employee exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to AuditTriggeredEmployeeHistory) AuditTriggeredEmployeeHistory on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="AuditTriggeredEmployeeHistory"
    P2C_VERB_PHRASE="(UserAuthorization to AuditTriggeredEmployeeHistory)", C2P_VERB_PHRASE="(AuditTriggeredEmployeeHistory from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_AuditTriggeredEmployeeHistory", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,AuditTriggeredEmployeeHistory
      WHERE
        /*  %JoinFKPK(AuditTriggeredEmployeeHistory,deleted," = "," AND") */
        AuditTriggeredEmployeeHistory.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete UserAuthorization because AuditTriggeredEmployeeHistory exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Employee) Employee on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Employee
      WHERE
        /*  %JoinFKPK(Employee,deleted," = "," AND") */
        Employee.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete UserAuthorization because Employee exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Employee) Employee on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Employee
      WHERE
        /*  %JoinFKPK(Employee,deleted," = "," AND") */
        Employee.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete UserAuthorization because Employee exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to Category) Category on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Category"
    P2C_VERB_PHRASE="(UserAuthorization to Category)", C2P_VERB_PHRASE="(Category from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Category", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Category
      WHERE
        /*  %JoinFKPK(Category,deleted," = "," AND") */
        Category.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete UserAuthorization because Category exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_UserAuthorization ON UserAuthorization FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on UserAuthorization */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insUserAuthorizationId SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to Employee) Employee on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00140d82", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Employee
      WHERE
        /*  %JoinFKPK(Employee,deleted," = "," AND") */
        Employee.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update UserAuthorization because Employee exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to Customer) Customer on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="(UserAuthorization to Customer)", C2P_VERB_PHRASE="(Customer from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Customer", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Customer
      WHERE
        /*  %JoinFKPK(Customer,deleted," = "," AND") */
        Customer.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update UserAuthorization because Customer exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to VersionedEmployeeHistory) VersionedEmployeeHistory on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(UserAuthorization to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_VersionedEmployeeHistory", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,VersionedEmployeeHistory
      WHERE
        /*  %JoinFKPK(VersionedEmployeeHistory,deleted," = "," AND") */
        VersionedEmployeeHistory.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update UserAuthorization because VersionedEmployeeHistory exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to Supplier) Supplier on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Supplier"
    P2C_VERB_PHRASE="(UserAuthorization to Supplier)", C2P_VERB_PHRASE="(Supplier from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Supplier", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Supplier
      WHERE
        /*  %JoinFKPK(Supplier,deleted," = "," AND") */
        Supplier.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update UserAuthorization because Supplier exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to Shipper) Shipper on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Shipper"
    P2C_VERB_PHRASE="(UserAuthorization to Shipper)", C2P_VERB_PHRASE="(Shipper from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Shipper", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Shipper
      WHERE
        /*  %JoinFKPK(Shipper,deleted," = "," AND") */
        Shipper.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update UserAuthorization because Shipper exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to Product) Product on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Product"
    P2C_VERB_PHRASE="(UserAuthorization to Product)", C2P_VERB_PHRASE="(Product from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Product", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Product
      WHERE
        /*  %JoinFKPK(Product,deleted," = "," AND") */
        Product.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update UserAuthorization because Product exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to OrderDetail) OrderDetail on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="OrderDetail"
    P2C_VERB_PHRASE="(UserAuthorization to OrderDetail)", C2P_VERB_PHRASE="(OrderDetail from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_OrderDetail", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,OrderDetail
      WHERE
        /*  %JoinFKPK(OrderDetail,deleted," = "," AND") */
        OrderDetail.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update UserAuthorization because OrderDetail exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to Order) Order on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Order"
    P2C_VERB_PHRASE="(UserAuthorization to Order)", C2P_VERB_PHRASE="(Order from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Order", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Order
      WHERE
        /*  %JoinFKPK(Order,deleted," = "," AND") */
        Order.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update UserAuthorization because Order exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to Nums) Nums on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Nums"
    P2C_VERB_PHRASE="(UserAuthorization to Nums)", C2P_VERB_PHRASE="(Nums from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Nums", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Nums
      WHERE
        /*  %JoinFKPK(Nums,deleted," = "," AND") */
        Nums.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update UserAuthorization because Nums exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to Employee) Employee on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Employee
      WHERE
        /*  %JoinFKPK(Employee,deleted," = "," AND") */
        Employee.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update UserAuthorization because Employee exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to AuditTriggeredEmployeeHistory) AuditTriggeredEmployeeHistory on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="AuditTriggeredEmployeeHistory"
    P2C_VERB_PHRASE="(UserAuthorization to AuditTriggeredEmployeeHistory)", C2P_VERB_PHRASE="(AuditTriggeredEmployeeHistory from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_AuditTriggeredEmployeeHistory", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,AuditTriggeredEmployeeHistory
      WHERE
        /*  %JoinFKPK(AuditTriggeredEmployeeHistory,deleted," = "," AND") */
        AuditTriggeredEmployeeHistory.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update UserAuthorization because AuditTriggeredEmployeeHistory exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to Employee) Employee on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Employee
      WHERE
        /*  %JoinFKPK(Employee,deleted," = "," AND") */
        Employee.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update UserAuthorization because Employee exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to Employee) Employee on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Employee"
    P2C_VERB_PHRASE="(UserAuthorization to Employee)", C2P_VERB_PHRASE="(Employee from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Employee", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Employee
      WHERE
        /*  %JoinFKPK(Employee,deleted," = "," AND") */
        Employee.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update UserAuthorization because Employee exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to Category) Category on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="Category"
    P2C_VERB_PHRASE="(UserAuthorization to Category)", C2P_VERB_PHRASE="(Category from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_Category", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Category
      WHERE
        /*  %JoinFKPK(Category,deleted," = "," AND") */
        Category.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update UserAuthorization because Category exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_VersionedEmployeeHistory ON VersionedEmployeeHistory FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on VersionedEmployeeHistory */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Employee (Employee to VersionedEmployeeHistory) VersionedEmployeeHistory on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00051b77", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_VersionedEmployeeHistory", FK_COLUMNS="EmployeeId" */
    IF EXISTS (SELECT * FROM deleted,Employee
      WHERE
        /* %JoinFKPK(deleted,Employee," = "," AND") */
        deleted.EmployeeId = Employee.EmployeeId AND
        NOT EXISTS (
          SELECT * FROM VersionedEmployeeHistory
          WHERE
            /* %JoinFKPK(VersionedEmployeeHistory,Employee," = "," AND") */
            VersionedEmployeeHistory.EmployeeId = Employee.EmployeeId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last VersionedEmployeeHistory because Employee exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Employee (Employee to VersionedEmployeeHistory) VersionedEmployeeHistory on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_VersionedEmployeeHistory", FK_COLUMNS="EmployeeId" */
    IF EXISTS (SELECT * FROM deleted,Employee
      WHERE
        /* %JoinFKPK(deleted,Employee," = "," AND") */
        deleted.EmployeeId = Employee.EmployeeId AND
        NOT EXISTS (
          SELECT * FROM VersionedEmployeeHistory
          WHERE
            /* %JoinFKPK(VersionedEmployeeHistory,Employee," = "," AND") */
            VersionedEmployeeHistory.EmployeeId = Employee.EmployeeId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last VersionedEmployeeHistory because Employee exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* UserAuthorization (UserAuthorization to VersionedEmployeeHistory) VersionedEmployeeHistory on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(UserAuthorization to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_VersionedEmployeeHistory", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM VersionedEmployeeHistory
          WHERE
            /* %JoinFKPK(VersionedEmployeeHistory,UserAuthorization," = "," AND") */
            VersionedEmployeeHistory.UserAuthorizationId = UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last VersionedEmployeeHistory because UserAuthorization exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_VersionedEmployeeHistory ON VersionedEmployeeHistory FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on VersionedEmployeeHistory */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insEmployeeId SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Employee (Employee to VersionedEmployeeHistory) VersionedEmployeeHistory on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00053863", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_VersionedEmployeeHistory", FK_COLUMNS="EmployeeId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(EmployeeId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Employee
        WHERE
          /* %JoinFKPK(inserted,Employee) */
          inserted.EmployeeId = Employee.EmployeeId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update VersionedEmployeeHistory because Employee does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Employee (Employee to VersionedEmployeeHistory) VersionedEmployeeHistory on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Employee"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(Employee to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from Employee)", 
    FK_CONSTRAINT="FK_Employee_VersionedEmployeeHistory", FK_COLUMNS="EmployeeId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(EmployeeId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Employee
        WHERE
          /* %JoinFKPK(inserted,Employee) */
          inserted.EmployeeId = Employee.EmployeeId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update VersionedEmployeeHistory because Employee does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* UserAuthorization (UserAuthorization to VersionedEmployeeHistory) VersionedEmployeeHistory on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="", CHILD_TABLE="VersionedEmployeeHistory"
    P2C_VERB_PHRASE="(UserAuthorization to VersionedEmployeeHistory)", C2P_VERB_PHRASE="(VersionedEmployeeHistory from UserAuthorization)", 
    FK_CONSTRAINT="FK_UserAuthorization_VersionedEmployeeHistory", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,UserAuthorization) */
          inserted.UserAuthorizationId = UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update VersionedEmployeeHistory because UserAuthorization does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


