CREATE TABLE Portfolio (
  PortfolioId NVARCHAR(50) NOT NULL,
  Name NVARCHAR(200) NOT NULL,
  PortfolioCode NVARCHAR(70),
  Type NVARCHAR(75) NOT NULL,
  AssetCategory NVARCHAR(50),
  OwnershipType NVARCHAR(50),
  ValidFrom DATETIME2 NOT NULL,
  ValidUntil DATETIME2 NOT NULL,
  PrimaryUsageType NVARCHAR(50),
  SecondaryUsageType NVARCHAR(50),
  MarketValue DECIMAL(28, 4),
  Currency NVARCHAR(50) CHECK (Currency IN ('AFN', 'ALL', 'DZD', 'USD', 'EUR', 'AOA', 'XCD', 'ARS', 'AMD', 'AWG', 'AUD', 'AZN', 'BSD', 'BHD', 'BDT', 'BBD', 'BYN', 'BZD', 'XOF', 'BMD', 'BTN', 'INR', 'BOB', 'BOV', 'BAM', 'BWP', 'NOK', 'BRL', 'BND', 'BGN', 'BIF', 'CVE', 'KHR', 'XAF', 'CAD', 'KYD', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'KMF', 'CDF', 'NZD', 'CRC', 'HRK', 'CUC', 'CUP', 'ANG', 'CZK', 'DKK', 'DJF', 'DOP', 'EGP', 'SVC', 'ERN', 'ETB', 'FKP', 'FJD', 'XPF', 'GMD', 'GEL', 'GHS', 'GIP', 'GTQ', 'GBP', 'GNF', 'GYD', 'HTG', 'HNL', 'HKD', 'HUF', 'ISK', 'IDR', 'XDR', 'IRR', 'IQD', 'ILS', 'JMD', 'JPY', 'JOD', 'KZT', 'KES', 'KPW', 'KRW', 'KWD', 'KGS', 'LAK', 'LBP', 'LSL', 'ZAR', 'LRD', 'LYD', 'CHF', 'MOP', 'MGA', 'MWK', 'MYR', 'MVR', 'MRU', 'MUR', 'XUA', 'MXN', 'MXV', 'MDL', 'MNT', 'MAD', 'MZN', 'MMK', 'NAD', 'NPR', 'NIO', 'NGN', 'OMR', 'PKR', 'PAB', 'PGK', 'PYG', 'PEN', 'PHP', 'PLN', 'QAR', 'MKD', 'RON', 'RUB', 'RWF', 'SHP', 'WST', 'STN', 'SAR', 'RSD', 'SCR', 'SLL', 'SGD', 'XSU', 'SBD', 'SOS', 'SSP', 'LKR', 'SDG', 'SRD', 'SZL', 'SEK', 'CHE', 'CHW', 'SYP', 'TWD', 'TJS', 'TZS', 'THB', 'TOP', 'TTD', 'TND', 'TRY', 'TMT', 'UGX', 'UAH', 'AED', 'USN', 'UYI', 'UYU', 'UZS', 'VUV', 'VEF', 'VED', 'VND', 'YER', 'ZMW', 'ZWL')),
  ReportingDate DATETIME2,
  ReportingCycle NVARCHAR(50)
  PRIMARY KEY (PortfolioId)
);

CREATE TABLE PortfolioBuilding (
  PortfolioId NVARCHAR(50) NOT NULL,
  BuildingId NVARCHAR(50) NOT NULL
  PRIMARY KEY (PortfolioId, BuildingId)
);

CREATE TABLE PortfolioLand (
  PortfolioId NVARCHAR(50) NOT NULL,
  LandId NVARCHAR(50) NOT NULL
  PRIMARY KEY (PortfolioId, LandId)
);

CREATE TABLE PortfolioSite (
  PortfolioId NVARCHAR(50) NOT NULL,
  SiteId NVARCHAR(50) NOT NULL
  PRIMARY KEY (PortfolioId, SiteId)
);

CREATE TABLE PortfolioStrategy (
  PortfolioStrategyId NVARCHAR(50) NOT NULL,
  PortfolioId NVARCHAR(50) NOT NULL,
  Name NVARCHAR(200) NOT NULL,
  InvestmentType NVARCHAR(50),
  ValidFrom DATETIME2 NOT NULL,
  ValidUntil DATETIME2 NOT NULL,
  StrategyObjectiveTargetsSteering NVARCHAR(50) NOT NULL,
  StrategyObjectiveValuesSteering DECIMAL(28, 4) NOT NULL,
  StrategyObjectiveUnitSteering NVARCHAR(50) NOT NULL,
  StrategyObjectiveTargets NVARCHAR(50),
  StrategyObjectiveValues DECIMAL(28, 4),
  StrategyObjectiveUnit NVARCHAR(50),
  Source NVARCHAR(50)
  PRIMARY KEY (PortfolioStrategyId)
);

CREATE TABLE PortfolioUnit (
  PortfolioId NVARCHAR(50) NOT NULL,
  UnitId NVARCHAR(50) NOT NULL
  PRIMARY KEY (PortfolioId, UnitId)
);

CREATE TABLE Valuation (
  ValuationId NVARCHAR(50) NOT NULL,
  PreviousValuationId NVARCHAR(50),
  Name NVARCHAR(200) NOT NULL,
  Type NVARCHAR(75) NOT NULL,
  ValidFrom DATETIME2 NOT NULL,
  ValidUntil DATETIME2 NOT NULL,
  Description NVARCHAR(200),
  Text NVARCHAR(200),
  Keywords NVARCHAR(200),
  Url NVARCHAR(200),
  JurisdictionType NVARCHAR(50),
  ProfessionalStandard NVARCHAR(50),
  AccountingStandard NVARCHAR(50),
  JurisdictionStandard NVARCHAR(50),
  Value DECIMAL(28, 4) NOT NULL,
  Unit NVARCHAR(50) NOT NULL,
  Assumptions NVARCHAR(200),
  SpecialAssumptions NVARCHAR(200),
  Constrains NVARCHAR(50),
  Approach NVARCHAR(50),
  MaintenanceBacklog BIT,
  SingleTenant BIT,
  DiscountRate DECIMAL(19, 6),
  DiscountPremiums DECIMAL(19, 6),
  Uncertainty NVARCHAR(50),
  Liquidity DECIMAL(28, 4),
  SpaceEfficiency NVARCHAR(50),
  EnergyEfficiency NVARCHAR(50),
  DocumentId NVARCHAR(50)
  PRIMARY KEY (ValuationId)
);

CREATE TABLE ValuationBuilding (
  ValuationId NVARCHAR(50) NOT NULL,
  BuildingId NVARCHAR(50) NOT NULL
  PRIMARY KEY (ValuationId, BuildingId)
);

CREATE TABLE ValuationIndividualAccount (
  ValuationId NVARCHAR(50) NOT NULL,
  IndividualAccountId NVARCHAR(50) NOT NULL
  PRIMARY KEY (ValuationId, IndividualAccountId)
);

CREATE TABLE ValuationLand (
  ValuationId NVARCHAR(50) NOT NULL,
  LandId NVARCHAR(50) NOT NULL
  PRIMARY KEY (ValuationId, LandId)
);

CREATE TABLE ValuationOperationalMeasurement (
  ValuationId NVARCHAR(50) NOT NULL,
  OperationalMeasurementId NVARCHAR(36) NOT NULL
  PRIMARY KEY (ValuationId, OperationalMeasurementId)
);

ALTER TABLE PortfolioBuilding ADD CONSTRAINT FK_PortfolioBuilding_Portfolio FOREIGN KEY (PortfolioId) REFERENCES Portfolio(PortfolioId);
ALTER TABLE PortfolioBuilding ADD CONSTRAINT FK_PortfolioBuilding_Building FOREIGN KEY (BuildingId) REFERENCES Building(BuildingId);
ALTER TABLE PortfolioLand ADD CONSTRAINT FK_PortfolioLand_Portfolio FOREIGN KEY (PortfolioId) REFERENCES Portfolio(PortfolioId);
ALTER TABLE PortfolioLand ADD CONSTRAINT FK_PortfolioLand_Land FOREIGN KEY (LandId) REFERENCES Land(LandId);
ALTER TABLE PortfolioSite ADD CONSTRAINT FK_PortfolioSite_Portfolio FOREIGN KEY (PortfolioId) REFERENCES Portfolio(PortfolioId);
ALTER TABLE PortfolioSite ADD CONSTRAINT FK_PortfolioSite_Site FOREIGN KEY (SiteId) REFERENCES Site(SiteId);
ALTER TABLE PortfolioStrategy ADD CONSTRAINT FK_PortfolioStrategy_Portfolio FOREIGN KEY (PortfolioId) REFERENCES Portfolio(PortfolioId);
ALTER TABLE PortfolioUnit ADD CONSTRAINT FK_PortfolioUnit_Portfolio FOREIGN KEY (PortfolioId) REFERENCES Portfolio(PortfolioId);
ALTER TABLE PortfolioUnit ADD CONSTRAINT FK_PortfolioUnit_Unit FOREIGN KEY (UnitId) REFERENCES Unit(UnitId);
ALTER TABLE ValuationBuilding ADD CONSTRAINT FK_ValuationBuilding_Valuation FOREIGN KEY (ValuationId) REFERENCES Valuation(ValuationId);
ALTER TABLE ValuationBuilding ADD CONSTRAINT FK_ValuationBuilding_Building FOREIGN KEY (BuildingId) REFERENCES Building(BuildingId);
ALTER TABLE ValuationIndividualAccount ADD CONSTRAINT FK_ValuationIndividualAccount_Valuation FOREIGN KEY (ValuationId) REFERENCES Valuation(ValuationId);
ALTER TABLE ValuationLand ADD CONSTRAINT FK_ValuationLand_Valuation FOREIGN KEY (ValuationId) REFERENCES Valuation(ValuationId);
ALTER TABLE ValuationLand ADD CONSTRAINT FK_ValuationLand_Land FOREIGN KEY (LandId) REFERENCES Land(LandId);
ALTER TABLE ValuationOperationalMeasurement ADD CONSTRAINT FK_ValuationOperationalMeasurement_Valuation FOREIGN KEY (ValuationId) REFERENCES Valuation(ValuationId);
ALTER TABLE CertificateValuation ADD CONSTRAINT FK_CertificateValuation_Valuation FOREIGN KEY (ValuationId) REFERENCES Valuation(ValuationId);
ALTER TABLE RolePortfolioContact ADD CONSTRAINT FK_RolePortfolioContact_Portfolio FOREIGN KEY (PortfolioId) REFERENCES Portfolio(PortfolioId);
ALTER TABLE RolePortfolioOrganisation ADD CONSTRAINT FK_RolePortfolioOrganisation_Portfolio FOREIGN KEY (PortfolioId) REFERENCES Portfolio(PortfolioId);
ALTER TABLE RolePortfolioStrategyContact ADD CONSTRAINT FK_RolePortfolioStrategyContact_PortfolioStrategy FOREIGN KEY (PortfolioStrategyId) REFERENCES PortfolioStrategy(PortfolioStrategyId);
ALTER TABLE RolePortfolioStrategyOrganisation ADD CONSTRAINT FK_RolePortfolioStrategyOrganisation_PortfolioStrategy FOREIGN KEY (PortfolioStrategyId) REFERENCES PortfolioStrategy(PortfolioStrategyId);
ALTER TABLE RoleValuationContact ADD CONSTRAINT FK_RoleValuationContact_Valuation FOREIGN KEY (ValuationId) REFERENCES Valuation(ValuationId);
ALTER TABLE RoleValuationOrganisation ADD CONSTRAINT FK_RoleValuationOrganisation_Valuation FOREIGN KEY (ValuationId) REFERENCES Valuation(ValuationId);

