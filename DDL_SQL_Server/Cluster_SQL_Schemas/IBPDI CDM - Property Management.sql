CREATE TABLE Dunning (
  DunningId NVARCHAR(50) NOT NULL,
  RentalPaymentId NVARCHAR(50) NOT NULL,
  DunningLevel NVARCHAR(50) NOT NULL,
  DunningAmount DECIMAL(28, 4) NOT NULL,
  Currency NVARCHAR(50) NOT NULL CHECK (Currency IN ('AFN', 'ALL', 'DZD', 'USD', 'EUR', 'AOA', 'XCD', 'ARS', 'AMD', 'AWG', 'AUD', 'AZN', 'BSD', 'BHD', 'BDT', 'BBD', 'BYN', 'BZD', 'XOF', 'BMD', 'BTN', 'INR', 'BOB', 'BOV', 'BAM', 'BWP', 'NOK', 'BRL', 'BND', 'BGN', 'BIF', 'CVE', 'KHR', 'XAF', 'CAD', 'KYD', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'KMF', 'CDF', 'NZD', 'CRC', 'HRK', 'CUC', 'CUP', 'ANG', 'CZK', 'DKK', 'DJF', 'DOP', 'EGP', 'SVC', 'ERN', 'ETB', 'FKP', 'FJD', 'XPF', 'GMD', 'GEL', 'GHS', 'GIP', 'GTQ', 'GBP', 'GNF', 'GYD', 'HTG', 'HNL', 'HKD', 'HUF', 'ISK', 'IDR', 'XDR', 'IRR', 'IQD', 'ILS', 'JMD', 'JPY', 'JOD', 'KZT', 'KES', 'KPW', 'KRW', 'KWD', 'KGS', 'LAK', 'LBP', 'LSL', 'ZAR', 'LRD', 'LYD', 'CHF', 'MOP', 'MGA', 'MWK', 'MYR', 'MVR', 'MRU', 'MUR', 'XUA', 'MXN', 'MXV', 'MDL', 'MNT', 'MAD', 'MZN', 'MMK', 'NAD', 'NPR', 'NIO', 'NGN', 'OMR', 'PKR', 'PAB', 'PGK', 'PYG', 'PEN', 'PHP', 'PLN', 'QAR', 'MKD', 'RON', 'RUB', 'RWF', 'SHP', 'WST', 'STN', 'SAR', 'RSD', 'SCR', 'SLL', 'SGD', 'XSU', 'SBD', 'SOS', 'SSP', 'LKR', 'SDG', 'SRD', 'SZL', 'SEK', 'CHE', 'CHW', 'SYP', 'TWD', 'TJS', 'TZS', 'THB', 'TOP', 'TTD', 'TND', 'TRY', 'TMT', 'UGX', 'UAH', 'AED', 'USN', 'UYI', 'UYU', 'UZS', 'VUV', 'VEF', 'VED', 'VND', 'YER', 'ZMW', 'ZWL')),
  PaymentAmount DECIMAL(28, 4) NOT NULL,
  InitialDueDate DATETIME2 NOT NULL,
  PaymentDate DATETIME2 NOT NULL
  PRIMARY KEY (DunningId)
);

CREATE TABLE RentalContract (
  RentalContractId NVARCHAR(50) NOT NULL,
  MainContractId NVARCHAR(50),
  ContractCode NVARCHAR(70) NOT NULL,
  ContractType NVARCHAR(50),
  CompanyCode NVARCHAR(70),
  ContractName NVARCHAR(200),
  ContractGroup NVARCHAR(50),
  RentBeginDate DATETIME2 NOT NULL,
  RentEndDate DATETIME2 NOT NULL,
  ValidFrom DATETIME2 NOT NULL,
  ValidUntil DATETIME2 NOT NULL,
  PeriodOfNotice NVARCHAR(50),
  PaymentInAdvance BIT,
  PaymentFrequency NVARCHAR(50) NOT NULL,
  ShortTermLease BIT,
  TenantSector NVARCHAR(50),
  TurnoverReportingInterval NVARCHAR(50)
  PRIMARY KEY (RentalContractId)
);

CREATE TABLE RentalContractRentalUnit (
  RentalContractId NVARCHAR(50) NOT NULL,
  RentalUnitId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RentalContractId, RentalUnitId)
);

CREATE TABLE RentalOption (
  RentalOptionId NVARCHAR(50) NOT NULL,
  RentalContractId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50) NOT NULL,
  SubType NVARCHAR(50) NOT NULL,
  ValidFrom DATETIME2 NOT NULL,
  ValidUntil DATETIME2 NOT NULL,
  DocumentId NVARCHAR(50)
  PRIMARY KEY (RentalOptionId)
);

CREATE TABLE RentalPayment (
  RentalPaymentId NVARCHAR(50) NOT NULL,
  RentalContractId NVARCHAR(50) NOT NULL,
  ValidFrom DATETIME2 NOT NULL,
  ValidUntil DATETIME2 NOT NULL,
  Type NVARCHAR(50) NOT NULL,
  Currency NVARCHAR(50) NOT NULL CHECK (Currency IN ('AFN', 'ALL', 'DZD', 'USD', 'EUR', 'AOA', 'XCD', 'ARS', 'AMD', 'AWG', 'AUD', 'AZN', 'BSD', 'BHD', 'BDT', 'BBD', 'BYN', 'BZD', 'XOF', 'BMD', 'BTN', 'INR', 'BOB', 'BOV', 'BAM', 'BWP', 'NOK', 'BRL', 'BND', 'BGN', 'BIF', 'CVE', 'KHR', 'XAF', 'CAD', 'KYD', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'KMF', 'CDF', 'NZD', 'CRC', 'HRK', 'CUC', 'CUP', 'ANG', 'CZK', 'DKK', 'DJF', 'DOP', 'EGP', 'SVC', 'ERN', 'ETB', 'FKP', 'FJD', 'XPF', 'GMD', 'GEL', 'GHS', 'GIP', 'GTQ', 'GBP', 'GNF', 'GYD', 'HTG', 'HNL', 'HKD', 'HUF', 'ISK', 'IDR', 'XDR', 'IRR', 'IQD', 'ILS', 'JMD', 'JPY', 'JOD', 'KZT', 'KES', 'KPW', 'KRW', 'KWD', 'KGS', 'LAK', 'LBP', 'LSL', 'ZAR', 'LRD', 'LYD', 'CHF', 'MOP', 'MGA', 'MWK', 'MYR', 'MVR', 'MRU', 'MUR', 'XUA', 'MXN', 'MXV', 'MDL', 'MNT', 'MAD', 'MZN', 'MMK', 'NAD', 'NPR', 'NIO', 'NGN', 'OMR', 'PKR', 'PAB', 'PGK', 'PYG', 'PEN', 'PHP', 'PLN', 'QAR', 'MKD', 'RON', 'RUB', 'RWF', 'SHP', 'WST', 'STN', 'SAR', 'RSD', 'SCR', 'SLL', 'SGD', 'XSU', 'SBD', 'SOS', 'SSP', 'LKR', 'SDG', 'SRD', 'SZL', 'SEK', 'CHE', 'CHW', 'SYP', 'TWD', 'TJS', 'TZS', 'THB', 'TOP', 'TTD', 'TND', 'TRY', 'TMT', 'UGX', 'UAH', 'AED', 'USN', 'UYI', 'UYU', 'UZS', 'VUV', 'VEF', 'VED', 'VND', 'YER', 'ZMW', 'ZWL')),
  ValueMonth DECIMAL(28, 4) NOT NULL,
  ValueYear DECIMAL(28, 4),
  DiscountInPercentage DECIMAL(19, 6),
  VatOpted BIT,
  IndexId NVARCHAR(50)
  PRIMARY KEY (RentalPaymentId)
);

CREATE TABLE RentalUnit (
  RentalUnitId NVARCHAR(50) NOT NULL,
  Name NVARCHAR(200) NOT NULL,
  RentalUnitCode NVARCHAR(70),
  RentedOut BIT,
  UsageType NVARCHAR(200),
  Vacancy BIT,
  ValidFrom DATETIME2 NOT NULL,
  ValidUntil DATETIME2 NOT NULL
  PRIMARY KEY (RentalUnitId)
);

CREATE TABLE RentalUnitBuilding (
  RentalUnitId NVARCHAR(50) NOT NULL,
  BuildingId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RentalUnitId, BuildingId)
);

CREATE TABLE RentalUnitFloor (
  RentalUnitId NVARCHAR(50) NOT NULL,
  FloorId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RentalUnitId, FloorId)
);

CREATE TABLE RentalUnitLand (
  RentalUnitId NVARCHAR(50) NOT NULL,
  LandId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RentalUnitId, LandId)
);

CREATE TABLE RentalUnitSite (
  RentalUnitId NVARCHAR(50) NOT NULL,
  SiteId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RentalUnitId, SiteId)
);

CREATE TABLE RentalUnitSpace (
  RentalUnitId NVARCHAR(50) NOT NULL,
  SpaceId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RentalUnitId, SpaceId)
);

CREATE TABLE RentalUnitUnit (
  RentalUnitId NVARCHAR(50) NOT NULL,
  UnitId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RentalUnitId, UnitId)
);

CREATE TABLE TenantCommunication (
  TenantCommunicationId NVARCHAR(50) NOT NULL,
  RentalUnitId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50) NOT NULL,
  Medium NVARCHAR(50),
  Description NVARCHAR(200) NOT NULL,
  ValidFrom DATETIME2 NOT NULL,
  ValidUntil DATETIME2,
  Status NVARCHAR(50) NOT NULL
  PRIMARY KEY (TenantCommunicationId)
);

ALTER TABLE Dunning ADD CONSTRAINT FK_Dunning_RentalPayment FOREIGN KEY (RentalPaymentId) REFERENCES RentalPayment(RentalPaymentId);
ALTER TABLE RentalContractRentalUnit ADD CONSTRAINT FK_RentalContractRentalUnit_RentalContract FOREIGN KEY (RentalContractId) REFERENCES RentalContract(RentalContractId);
ALTER TABLE RentalContractRentalUnit ADD CONSTRAINT FK_RentalContractRentalUnit_RentalUnit FOREIGN KEY (RentalUnitId) REFERENCES RentalUnit(RentalUnitId);
ALTER TABLE RentalOption ADD CONSTRAINT FK_RentalOption_RentalContract FOREIGN KEY (RentalContractId) REFERENCES RentalContract(RentalContractId);
ALTER TABLE RentalPayment ADD CONSTRAINT FK_RentalPayment_RentalContract FOREIGN KEY (RentalContractId) REFERENCES RentalContract(RentalContractId);
ALTER TABLE RentalUnitBuilding ADD CONSTRAINT FK_RentalUnitBuilding_RentalUnit FOREIGN KEY (RentalUnitId) REFERENCES RentalUnit(RentalUnitId);
ALTER TABLE RentalUnitBuilding ADD CONSTRAINT FK_RentalUnitBuilding_Building FOREIGN KEY (BuildingId) REFERENCES Building(BuildingId);
ALTER TABLE RentalUnitFloor ADD CONSTRAINT FK_RentalUnitFloor_RentalUnit FOREIGN KEY (RentalUnitId) REFERENCES RentalUnit(RentalUnitId);
ALTER TABLE RentalUnitFloor ADD CONSTRAINT FK_RentalUnitFloor_Floor FOREIGN KEY (FloorId) REFERENCES Floor(FloorId);
ALTER TABLE RentalUnitLand ADD CONSTRAINT FK_RentalUnitLand_RentalUnit FOREIGN KEY (RentalUnitId) REFERENCES RentalUnit(RentalUnitId);
ALTER TABLE RentalUnitLand ADD CONSTRAINT FK_RentalUnitLand_Land FOREIGN KEY (LandId) REFERENCES Land(LandId);
ALTER TABLE RentalUnitSite ADD CONSTRAINT FK_RentalUnitSite_RentalUnit FOREIGN KEY (RentalUnitId) REFERENCES RentalUnit(RentalUnitId);
ALTER TABLE RentalUnitSite ADD CONSTRAINT FK_RentalUnitSite_Site FOREIGN KEY (SiteId) REFERENCES Site(SiteId);
ALTER TABLE RentalUnitSpace ADD CONSTRAINT FK_RentalUnitSpace_RentalUnit FOREIGN KEY (RentalUnitId) REFERENCES RentalUnit(RentalUnitId);
ALTER TABLE RentalUnitSpace ADD CONSTRAINT FK_RentalUnitSpace_Space FOREIGN KEY (SpaceId) REFERENCES Space(SpaceId);
ALTER TABLE RentalUnitUnit ADD CONSTRAINT FK_RentalUnitUnit_RentalUnit FOREIGN KEY (RentalUnitId) REFERENCES RentalUnit(RentalUnitId);
ALTER TABLE RentalUnitUnit ADD CONSTRAINT FK_RentalUnitUnit_Unit FOREIGN KEY (UnitId) REFERENCES Unit(UnitId);
ALTER TABLE TenantCommunication ADD CONSTRAINT FK_TenantCommunication_RentalUnit FOREIGN KEY (RentalUnitId) REFERENCES RentalUnit(RentalUnitId);
ALTER TABLE AreaMeasurementRentalUnit ADD CONSTRAINT FK_AreaMeasurementRentalUnit_RentalUnit FOREIGN KEY (RentalUnitId) REFERENCES RentalUnit(RentalUnitId);
ALTER TABLE SensorRentalUnit ADD CONSTRAINT FK_SensorRentalUnit_RentalUnit FOREIGN KEY (RentalUnitId) REFERENCES RentalUnit(RentalUnitId);
ALTER TABLE SystemRentalUnit ADD CONSTRAINT FK_SystemRentalUnit_RentalUnit FOREIGN KEY (RentalUnitId) REFERENCES RentalUnit(RentalUnitId);

