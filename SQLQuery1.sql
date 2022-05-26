
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/24/2022 19:48:22
-- Generated from EDMX file: C:\Users\tunuguntla.lokesh\Downloads\TestBank-master\TestBank-master\TestBank\Models\Model2.edmx
-- --------------------------------------------------
Create database TestBankDB
SET QUOTED_IDENTIFIER OFF;
GO
USE [TestBankDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[fk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[States] DROP CONSTRAINT [fk_1];
GO
IF OBJECT_ID(N'[dbo].[fk_10]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SavingAccountDetails] DROP CONSTRAINT [fk_10];
GO
IF OBJECT_ID(N'[dbo].[fk_12]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SavingAccountTxnHistory] DROP CONSTRAINT [fk_12];
GO
IF OBJECT_ID(N'[dbo].[fk_13]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LoanAccountDetails] DROP CONSTRAINT [fk_13];
GO
IF OBJECT_ID(N'[dbo].[fk_14]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LoanEMIDetails] DROP CONSTRAINT [fk_14];
GO
IF OBJECT_ID(N'[dbo].[fk_2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Cities] DROP CONSTRAINT [fk_2];
GO
IF OBJECT_ID(N'[dbo].[fk_3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PostalCodes] DROP CONSTRAINT [fk_3];
GO
IF OBJECT_ID(N'[dbo].[fk_4]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CustomerDetails] DROP CONSTRAINT [fk_4];
GO
IF OBJECT_ID(N'[dbo].[fk_5]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CustomerDetails] DROP CONSTRAINT [fk_5];
GO
IF OBJECT_ID(N'[dbo].[fk_6]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CustomerDetails] DROP CONSTRAINT [fk_6];
GO
IF OBJECT_ID(N'[dbo].[fk_7]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CustomerDetails] DROP CONSTRAINT [fk_7];
GO
IF OBJECT_ID(N'[dbo].[fk_8]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CustomerAccounts] DROP CONSTRAINT [fk_8];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Cities]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Cities];
GO
IF OBJECT_ID(N'[dbo].[Countries]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Countries];
GO
IF OBJECT_ID(N'[dbo].[CustomerAccounts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CustomerAccounts];
GO
IF OBJECT_ID(N'[dbo].[CustomerDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CustomerDetails];
GO
IF OBJECT_ID(N'[dbo].[LoanAccountDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LoanAccountDetails];
GO
IF OBJECT_ID(N'[dbo].[LoanEMIDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LoanEMIDetails];
GO
IF OBJECT_ID(N'[dbo].[PostalCodes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PostalCodes];
GO
IF OBJECT_ID(N'[dbo].[SavingAccountDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SavingAccountDetails];
GO
IF OBJECT_ID(N'[dbo].[SavingAccountTxnHistory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SavingAccountTxnHistory];
GO
IF OBJECT_ID(N'[dbo].[States]', 'U') IS NOT NULL
    DROP TABLE [dbo].[States];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Cities'
CREATE TABLE [dbo].[Cities] (
    [CityCode] int IDENTITY(1,1) NOT NULL,
    [CityName] varchar(50)  NOT NULL,
    [Statecode] int  NULL
);
GO

-- Creating table 'Countries'
CREATE TABLE [dbo].[Countries] (
    [CountryCode] int IDENTITY(1,1) NOT NULL,
    [CountryName] varchar(50)  NULL
);
GO


-- Creating table 'CustomerAccounts'
CREATE TABLE [dbo].[CustomerAccounts] (
    [CustID] int  NULL,
    [AccNum] int IDENTITY(1,1) NOT NULL,
    [AccountType] nvarchar(max)  NULL,
    [AccountSubType] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CustomerDetails'
CREATE TABLE [dbo].[CustomerDetails] (
    [CustID] int IDENTITY(1,1) NOT NULL,
    [FirstName] varchar(50)  NOT NULL,
    [LastName] varchar(50)  NOT NULL,
    [Address1] varchar(100)  NOT NULL,
    [Address2] varchar(100)  NOT NULL,
    [EmailId] varchar(50)  NOT NULL,
    [MaritalStatus] varchar(20)  NOT NULL,
    [ZIPCode] int  NULL,
    [City] int  NULL,
    [State] int  NULL,
    [Country] int  NULL,
    [DOB] datetime  NULL,
    [Mobile] decimal(10,0)  NULL
);
GO

-- Creating table 'LoanAccountDetails'
CREATE TABLE [dbo].[LoanAccountDetails] (
    [AccNum] int  NOT NULL,
    [IFSCcode] varchar(20)  NULL,
    [BalanceAmount] decimal(18,0)  NULL,
    [BranchCode] int  NULL,
    [Principle] decimal(18,0)  NOT NULL,
    [RateOfInterest] decimal(18,0)  NOT NULL,
    [LoanDuration] int  NOT NULL,
    [TotalLoanAmount] decimal(18,0)  NOT NULL,
    [MonthlyPayment] decimal(18,0)  NOT NULL,
    [LoanAccountType] varchar(20)  NULL,
    [LoanIssuedDate] datetime  NULL,
    [LoanPayDate] datetime  NULL
);
GO

-- Creating table 'LoanEMIDetails'
CREATE TABLE [dbo].[LoanEMIDetails] (
    [EMIID] int IDENTITY(1,1) NOT NULL,
    [AccNum] int  NULL,
    [EMIDate] datetime  NOT NULL,
    [EMIAmount] int  NULL,
    [EMIStatus] varchar(100)  NULL,
    [EMIRemainder] varchar(100)  NULL,
    [RemainingBalance] int  NULL
);
GO

-- Creating table 'PostalCodes'
CREATE TABLE [dbo].[PostalCodes] (
    [ZipCode] int  NOT NULL,
    [Citycode] int  NULL
);
GO

-- Creating table 'SavingAccountDetails'
CREATE TABLE [dbo].[SavingAccountDetails] (
    [AccNum] int  NOT NULL,
    [SavingAccType] varchar(20)  NULL,
    [IFSCcode] varchar(20)  NULL,
    [TrasferLimit] int  NOT NULL,
    [BranchCode] int  NOT NULL,
    [Balance] decimal(18,0)  NULL
);
GO

-- Creating table 'SavingAccountTxnHistories'
CREATE TABLE [dbo].[SavingAccountTxnHistories] (
    [TxnID] int IDENTITY(1,1) NOT NULL,
    [AccNum] int  NULL,
    [SourceType] varchar(100)  NOT NULL,
    [TransType] varchar(20)  NOT NULL,
    [Amount] decimal(18,0)  NOT NULL,
    [Balance] decimal(18,0)  NULL,
    [TxnDate] datetime  NULL
);
GO

-- Creating table 'States'
CREATE TABLE [dbo].[States] (
    [StateCode] int IDENTITY(1,1) NOT NULL,
    [StateName] varchar(50)  NOT NULL,
    [CountryCode] int  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [CityCode] in table 'Cities'
ALTER TABLE [dbo].[Cities]
ADD CONSTRAINT [PK_Cities]
    PRIMARY KEY CLUSTERED ([CityCode] ASC);
GO

-- Creating primary key on [CountryCode] in table 'Countries'
ALTER TABLE [dbo].[Countries]
ADD CONSTRAINT [PK_Countries]
    PRIMARY KEY CLUSTERED ([CountryCode] ASC);
GO

-- Creating primary key on [AccNum] in table 'CustomerAccounts'
ALTER TABLE [dbo].[CustomerAccounts]
ADD CONSTRAINT [PK_CustomerAccounts]
    PRIMARY KEY CLUSTERED ([AccNum] ASC);
GO

-- Creating primary key on [CustID] in table 'CustomerDetails'
ALTER TABLE [dbo].[CustomerDetails]
ADD CONSTRAINT [PK_CustomerDetails]
    PRIMARY KEY CLUSTERED ([CustID] ASC);
GO

-- Creating primary key on [AccNum] in table 'LoanAccountDetails'
ALTER TABLE [dbo].[LoanAccountDetails]
ADD CONSTRAINT [PK_LoanAccountDetails]
    PRIMARY KEY CLUSTERED ([AccNum] ASC);
GO

-- Creating primary key on [EMIID] in table 'LoanEMIDetails'
ALTER TABLE [dbo].[LoanEMIDetails]
ADD CONSTRAINT [PK_LoanEMIDetails]
    PRIMARY KEY CLUSTERED ([EMIID] ASC);
GO

-- Creating primary key on [ZipCode] in table 'PostalCodes'
ALTER TABLE [dbo].[PostalCodes]
ADD CONSTRAINT [PK_PostalCodes]
    PRIMARY KEY CLUSTERED ([ZipCode] ASC);
GO

-- Creating primary key on [AccNum] in table 'SavingAccountDetails'
ALTER TABLE [dbo].[SavingAccountDetails]
ADD CONSTRAINT [PK_SavingAccountDetails]
    PRIMARY KEY CLUSTERED ([AccNum] ASC);
GO

-- Creating primary key on [TxnID] in table 'SavingAccountTxnHistories'
ALTER TABLE [dbo].[SavingAccountTxnHistories]
ADD CONSTRAINT [PK_SavingAccountTxnHistories]
    PRIMARY KEY CLUSTERED ([TxnID] ASC);
GO

-- Creating primary key on [StateCode] in table 'States'
ALTER TABLE [dbo].[States]
ADD CONSTRAINT [PK_States]
    PRIMARY KEY CLUSTERED ([StateCode] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Statecode] in table 'Cities'
ALTER TABLE [dbo].[Cities]
ADD CONSTRAINT [fk_2]
    FOREIGN KEY ([Statecode])
    REFERENCES [dbo].[States]
        ([StateCode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_2'
CREATE INDEX [IX_fk_2]
ON [dbo].[Cities]
    ([Statecode]);
GO

-- Creating foreign key on [Citycode] in table 'PostalCodes'
ALTER TABLE [dbo].[PostalCodes]
ADD CONSTRAINT [fk_3]
    FOREIGN KEY ([Citycode])
    REFERENCES [dbo].[Cities]
        ([CityCode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_3'
CREATE INDEX [IX_fk_3]
ON [dbo].[PostalCodes]
    ([Citycode]);
GO

-- Creating foreign key on [City] in table 'CustomerDetails'
ALTER TABLE [dbo].[CustomerDetails]
ADD CONSTRAINT [fk_5]
    FOREIGN KEY ([City])
    REFERENCES [dbo].[Cities]
        ([CityCode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_5'
CREATE INDEX [IX_fk_5]
ON [dbo].[CustomerDetails]
    ([City]);
GO

-- Creating foreign key on [CountryCode] in table 'States'
ALTER TABLE [dbo].[States]
ADD CONSTRAINT [fk_1]
    FOREIGN KEY ([CountryCode])
    REFERENCES [dbo].[Countries]
        ([CountryCode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_1'
CREATE INDEX [IX_fk_1]
ON [dbo].[States]
    ([CountryCode]);
GO

-- Creating foreign key on [Country] in table 'CustomerDetails'
ALTER TABLE [dbo].[CustomerDetails]
ADD CONSTRAINT [fk_7]
    FOREIGN KEY ([Country])
    REFERENCES [dbo].[Countries]
        ([CountryCode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_7'
CREATE INDEX [IX_fk_7]
ON [dbo].[CustomerDetails]
    ([Country]);
GO

-- Creating foreign key on [AccNum] in table 'SavingAccountDetails'
ALTER TABLE [dbo].[SavingAccountDetails]
ADD CONSTRAINT [fk_10]
    FOREIGN KEY ([AccNum])
    REFERENCES [dbo].[CustomerAccounts]
        ([AccNum])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [AccNum] in table 'LoanAccountDetails'
ALTER TABLE [dbo].[LoanAccountDetails]
ADD CONSTRAINT [fk_13]
    FOREIGN KEY ([AccNum])
    REFERENCES [dbo].[CustomerAccounts]
        ([AccNum])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [CustID] in table 'CustomerAccounts'
ALTER TABLE [dbo].[CustomerAccounts]
ADD CONSTRAINT [fk_8]
    FOREIGN KEY ([CustID])
    REFERENCES [dbo].[CustomerDetails]
        ([CustID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_8'
CREATE INDEX [IX_fk_8]
ON [dbo].[CustomerAccounts]
    ([CustID]);
GO

-- Creating foreign key on [ZIPCode] in table 'CustomerDetails'
ALTER TABLE [dbo].[CustomerDetails]
ADD CONSTRAINT [fk_4]
    FOREIGN KEY ([ZIPCode])
    REFERENCES [dbo].[PostalCodes]
        ([ZipCode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_4'
CREATE INDEX [IX_fk_4]
ON [dbo].[CustomerDetails]
    ([ZIPCode]);
GO

-- Creating foreign key on [State] in table 'CustomerDetails'
ALTER TABLE [dbo].[CustomerDetails]
ADD CONSTRAINT [fk_6]
    FOREIGN KEY ([State])
    REFERENCES [dbo].[States]
        ([StateCode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_6'
CREATE INDEX [IX_fk_6]
ON [dbo].[CustomerDetails]
    ([State]);
GO

-- Creating foreign key on [AccNum] in table 'LoanEMIDetails'
ALTER TABLE [dbo].[LoanEMIDetails]
ADD CONSTRAINT [fk_14]
    FOREIGN KEY ([AccNum])
    REFERENCES [dbo].[LoanAccountDetails]
        ([AccNum])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_14'
CREATE INDEX [IX_fk_14]
ON [dbo].[LoanEMIDetails]
    ([AccNum]);
GO

-- Creating foreign key on [AccNum] in table 'SavingAccountTxnHistories'
ALTER TABLE [dbo].[SavingAccountTxnHistories]
ADD CONSTRAINT [fk_12]
    FOREIGN KEY ([AccNum])
    REFERENCES [dbo].[SavingAccountDetails]
        ([AccNum])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_12'
CREATE INDEX [IX_fk_12]
ON [dbo].[SavingAccountTxnHistories]
    ([AccNum]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------