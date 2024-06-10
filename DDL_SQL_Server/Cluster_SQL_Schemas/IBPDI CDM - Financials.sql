CREATE TABLE Account (
  AccountId NVARCHAR(50) NOT NULL,
  Name NVARCHAR(200) NOT NULL,
  IbpdiProject NVARCHAR(50) NOT NULL CHECK (IbpdiProject IN ('Assets', 'Liabilities', 'Equity', 'Revenue', 'Expenses', 'Other (Non-Operating) Income and expenses')),
  IbpdiCategory NVARCHAR(75) NOT NULL,
  IbpdiGroup NVARCHAR(75) NOT NULL,
  ValidFrom DATETIME2 NOT NULL,
  ValidUntil DATETIME2 NOT NULL,
  StatementType NVARCHAR(50) NOT NULL CHECK (StatementType IN ('BalanceStatement', 'P&L')),
  RecordType NVARCHAR(50) NOT NULL CHECK (RecordType IN ('Debit', 'Credit')),
  Version NVARCHAR(50) NOT NULL
  PRIMARY KEY (AccountId)
);

CREATE TABLE CostCenter (
  CostCenterId NVARCHAR(50) NOT NULL,
  OrganisationId NVARCHAR(50),
  Name NVARCHAR(200) NOT NULL,
  Type NVARCHAR(50)
  PRIMARY KEY (CostCenterId)
);

CREATE TABLE CostCenterBuilding (
  CostCenterId NVARCHAR(50) NOT NULL,
  BuildingId NVARCHAR(50) NOT NULL
  PRIMARY KEY (CostCenterId, BuildingId)
);

CREATE TABLE CostCenterLand (
  CostCenterId NVARCHAR(50) NOT NULL,
  LandId NVARCHAR(50) NOT NULL
  PRIMARY KEY (CostCenterId, LandId)
);

CREATE TABLE CostCenterPortfolio (
  CostCenterId NVARCHAR(50) NOT NULL,
  PortfolioId NVARCHAR(50) NOT NULL
  PRIMARY KEY (CostCenterId, PortfolioId)
);

CREATE TABLE CostCenterRentalUnit (
  CostCenterId NVARCHAR(50) NOT NULL,
  RentalUnitId NVARCHAR(50) NOT NULL
  PRIMARY KEY (CostCenterId, RentalUnitId)
);

CREATE TABLE CostCenterSite (
  CostCenterId NVARCHAR(50) NOT NULL,
  SiteId NVARCHAR(50) NOT NULL
  PRIMARY KEY (CostCenterId, SiteId)
);

CREATE TABLE IndividualAccount (
  IndividualAccountId NVARCHAR(50) NOT NULL,
  AccountId NVARCHAR(50),
  OrganisationId NVARCHAR(50),
  Name NVARCHAR(200) NOT NULL,
  Project NVARCHAR(50) NOT NULL,
  Category NVARCHAR(75) NOT NULL,
  [Group] NVARCHAR(75) NOT NULL,
  ValidFrom DATETIME2 NOT NULL,
  ValidUntil DATETIME2 NOT NULL,
  StatementType NVARCHAR(50) NOT NULL CHECK (StatementType IN ('BalanceStatement', 'P&L')),
  RecordType NVARCHAR(50) NOT NULL CHECK (RecordType IN ('Debit', 'Credit')),
  GAAP NVARCHAR(50),
  Version NVARCHAR(50) NOT NULL
  PRIMARY KEY (IndividualAccountId)
);

CREATE TABLE IndividualAccountBuilding (
  IndividualAccountId NVARCHAR(50) NOT NULL,
  BuildingId NVARCHAR(50) NOT NULL
  PRIMARY KEY (IndividualAccountId, BuildingId)
);

CREATE TABLE IndividualAccountPortfolio (
  IndividualAccountId NVARCHAR(50) NOT NULL,
  PortfolioId NVARCHAR(50) NOT NULL
  PRIMARY KEY (IndividualAccountId, PortfolioId)
);

CREATE TABLE IndividualAccountSite (
  IndividualAccountId NVARCHAR(50) NOT NULL,
  SiteId NVARCHAR(50) NOT NULL
  PRIMARY KEY (IndividualAccountId, SiteId)
);

CREATE TABLE [Transaction] (
  TransactionId NVARCHAR(50) NOT NULL,
  IndividualAccountId NVARCHAR(50) NOT NULL,
  CostCenterId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50) NOT NULL CHECK (Type IN ('Actual', 'Budget', 'Forecast')),
  BookingType NVARCHAR(50) NOT NULL CHECK (BookingType IN ('debit', 'credit')),
  Value DECIMAL(28, 4) NOT NULL,
  BookingCurrency NVARCHAR(50) NOT NULL CHECK (BookingCurrency IN ('AFN', 'ALL', 'DZD', 'USD', 'EUR', 'AOA', 'XCD', 'ARS', 'AMD', 'AWG', 'AUD', 'AZN', 'BSD', 'BHD', 'BDT', 'BBD', 'BYN', 'BZD', 'XOF', 'BMD', 'BTN', 'INR', 'BOB', 'BOV', 'BAM', 'BWP', 'NOK', 'BRL', 'BND', 'BGN', 'BIF', 'CVE', 'KHR', 'XAF', 'CAD', 'KYD', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'KMF', 'CDF', 'NZD', 'CRC', 'HRK', 'CUC', 'CUP', 'ANG', 'CZK', 'DKK', 'DJF', 'DOP', 'EGP', 'SVC', 'ERN', 'ETB', 'FKP', 'FJD', 'XPF', 'GMD', 'GEL', 'GHS', 'GIP', 'GTQ', 'GBP', 'GNF', 'GYD', 'HTG', 'HNL', 'HKD', 'HUF', 'ISK', 'IDR', 'XDR', 'IRR', 'IQD', 'ILS', 'JMD', 'JPY', 'JOD', 'KZT', 'KES', 'KPW', 'KRW', 'KWD', 'KGS', 'LAK', 'LBP', 'LSL', 'ZAR', 'LRD', 'LYD', 'CHF', 'MOP', 'MGA', 'MWK', 'MYR', 'MVR', 'MRU', 'MUR', 'XUA', 'MXN', 'MXV', 'MDL', 'MNT', 'MAD', 'MZN', 'MMK', 'NAD', 'NPR', 'NIO', 'NGN', 'OMR', 'PKR', 'PAB', 'PGK', 'PYG', 'PEN', 'PHP', 'PLN', 'QAR', 'MKD', 'RON', 'RUB', 'RWF', 'SHP', 'WST', 'STN', 'SAR', 'RSD', 'SCR', 'SLL', 'SGD', 'XSU', 'SBD', 'SOS', 'SSP', 'LKR', 'SDG', 'SRD', 'SZL', 'SEK', 'CHE', 'CHW', 'SYP', 'TWD', 'TJS', 'TZS', 'THB', 'TOP', 'TTD', 'TND', 'TRY', 'TMT', 'UGX', 'UAH', 'AED', 'USN', 'UYI', 'UYU', 'UZS', 'VUV', 'VEF', 'VED', 'VND', 'YER', 'ZMW', 'ZWL')),
  PostingDate DATETIME2 NOT NULL,
  DocumentId NVARCHAR(50)
  PRIMARY KEY (TransactionId)
);

ALTER TABLE CostCenterBuilding ADD CONSTRAINT FK_CostCenterBuilding_CostCenter FOREIGN KEY (CostCenterId) REFERENCES CostCenter(CostCenterId);
ALTER TABLE CostCenterBuilding ADD CONSTRAINT FK_CostCenterBuilding_Building FOREIGN KEY (BuildingId) REFERENCES Building(BuildingId);
ALTER TABLE CostCenterLand ADD CONSTRAINT FK_CostCenterLand_CostCenter FOREIGN KEY (CostCenterId) REFERENCES CostCenter(CostCenterId);
ALTER TABLE CostCenterLand ADD CONSTRAINT FK_CostCenterLand_Land FOREIGN KEY (LandId) REFERENCES Land(LandId);
ALTER TABLE CostCenterPortfolio ADD CONSTRAINT FK_CostCenterPortfolio_CostCenter FOREIGN KEY (CostCenterId) REFERENCES CostCenter(CostCenterId);
ALTER TABLE CostCenterPortfolio ADD CONSTRAINT FK_CostCenterPortfolio_Portfolio FOREIGN KEY (PortfolioId) REFERENCES Portfolio(PortfolioId);
ALTER TABLE CostCenterRentalUnit ADD CONSTRAINT FK_CostCenterRentalUnit_CostCenter FOREIGN KEY (CostCenterId) REFERENCES CostCenter(CostCenterId);
ALTER TABLE CostCenterRentalUnit ADD CONSTRAINT FK_CostCenterRentalUnit_RentalUnit FOREIGN KEY (RentalUnitId) REFERENCES RentalUnit(RentalUnitId);
ALTER TABLE CostCenterSite ADD CONSTRAINT FK_CostCenterSite_CostCenter FOREIGN KEY (CostCenterId) REFERENCES CostCenter(CostCenterId);
ALTER TABLE CostCenterSite ADD CONSTRAINT FK_CostCenterSite_Site FOREIGN KEY (SiteId) REFERENCES Site(SiteId);
ALTER TABLE IndividualAccount ADD CONSTRAINT FK_IndividualAccount_Account FOREIGN KEY (AccountId) REFERENCES Account(AccountId);
ALTER TABLE IndividualAccount ADD CONSTRAINT FK_IndividualAccount_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE IndividualAccountBuilding ADD CONSTRAINT FK_IndividualAccountBuilding_IndividualAccount FOREIGN KEY (IndividualAccountId) REFERENCES IndividualAccount(IndividualAccountId);
ALTER TABLE IndividualAccountBuilding ADD CONSTRAINT FK_IndividualAccountBuilding_Building FOREIGN KEY (BuildingId) REFERENCES Building(BuildingId);
ALTER TABLE IndividualAccountPortfolio ADD CONSTRAINT FK_IndividualAccountPortfolio_IndividualAccount FOREIGN KEY (IndividualAccountId) REFERENCES IndividualAccount(IndividualAccountId);
ALTER TABLE IndividualAccountPortfolio ADD CONSTRAINT FK_IndividualAccountPortfolio_Portfolio FOREIGN KEY (PortfolioId) REFERENCES Portfolio(PortfolioId);
ALTER TABLE IndividualAccountSite ADD CONSTRAINT FK_IndividualAccountSite_IndividualAccount FOREIGN KEY (IndividualAccountId) REFERENCES IndividualAccount(IndividualAccountId);
ALTER TABLE IndividualAccountSite ADD CONSTRAINT FK_IndividualAccountSite_Site FOREIGN KEY (SiteId) REFERENCES Site(SiteId);
ALTER TABLE [Transaction] ADD CONSTRAINT FK_Transaction_IndividualAccount FOREIGN KEY (IndividualAccountId) REFERENCES IndividualAccount(IndividualAccountId);
ALTER TABLE [Transaction] ADD CONSTRAINT FK_Transaction_CostCenter FOREIGN KEY (CostCenterId) REFERENCES CostCenter(CostCenterId);
ALTER TABLE [Transaction] ADD CONSTRAINT FK_Transaction_IndividualAccount FOREIGN KEY (IndividualAccountId) REFERENCES IndividualAccount(IndividualAccountId);
ALTER TABLE [Transaction] ADD CONSTRAINT FK_Transaction_CostCenter FOREIGN KEY (CostCenterId) REFERENCES CostCenter(CostCenterId);
ALTER TABLE ValuationIndividualAccount ADD CONSTRAINT FK_ValuationIndividualAccount_IndividualAccount FOREIGN KEY (IndividualAccountId) REFERENCES IndividualAccount(IndividualAccountId);


