CREATE TABLE AccessPanel (
  AccessPanelId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  Width DECIMAL(19, 6),
  Thickness DECIMAL(19, 6),
  Material NVARCHAR(75),
  Height DECIMAL(19, 6),
  FrameMaterial NVARCHAR(75),
  FireRating NVARCHAR(50)
  PRIMARY KEY (AccessPanelId)
);

CREATE TABLE AirCompressor (
  AirCompressorId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  WorkingPressure DECIMAL(19, 6),
  MotorPower DECIMAL(19, 6),
  FreeAirDelivery DECIMAL(19, 6)
  PRIMARY KEY (AirCompressorId)
);

CREATE TABLE AirFilter (
  AirFilterId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  FanNominalAirflow DECIMAL(19, 6),
  FanMotorPower DECIMAL(19, 6),
  FanMinAirflowRating DECIMAL(19, 6),
  FanMaxAirflowRating DECIMAL(19, 6),
  FanDriveType NVARCHAR(50),
  FanName NVARCHAR(200),
  FanCommissionDate DATETIME2,
  FanExpectedEndOfLife DATETIME2,
  FanDurationLifeYear INT,
  FanExpectedReplacementCost DECIMAL(28, 4),
  FanInitialCost DECIMAL(28, 4),
  Currency NVARCHAR(50) CHECK (Currency IN ('AFN', 'ALL', 'DZD', 'USD', 'EUR', 'AOA', 'XCD', 'ARS', 'AMD', 'AWG', 'AUD', 'AZN', 'BSD', 'BHD', 'BDT', 'BBD', 'BYN', 'BZD', 'XOF', 'BMD', 'BTN', 'INR', 'BOB', 'BOV', 'BAM', 'BWP', 'NOK', 'BRL', 'BND', 'BGN', 'BIF', 'CVE', 'KHR', 'XAF', 'CAD', 'KYD', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'KMF', 'CDF', 'NZD', 'CRC', 'HRK', 'CUC', 'CUP', 'ANG', 'CZK', 'DKK', 'DJF', 'DOP', 'EGP', 'SVC', 'ERN', 'ETB', 'FKP', 'FJD', 'XPF', 'GMD', 'GEL', 'GHS', 'GIP', 'GTQ', 'GBP', 'GNF', 'GYD', 'HTG', 'HNL', 'HKD', 'HUF', 'ISK', 'IDR', 'XDR', 'IRR', 'IQD', 'ILS', 'JMD', 'JPY', 'JOD', 'KZT', 'KES', 'KPW', 'KRW', 'KWD', 'KGS', 'LAK', 'LBP', 'LSL', 'ZAR', 'LRD', 'LYD', 'CHF', 'MOP', 'MGA', 'MWK', 'MYR', 'MVR', 'MRU', 'MUR', 'XUA', 'MXN', 'MXV', 'MDL', 'MNT', 'MAD', 'MZN', 'MMK', 'NAD', 'NPR', 'NIO', 'NGN', 'OMR', 'PKR', 'PAB', 'PGK', 'PYG', 'PEN', 'PHP', 'PLN', 'QAR', 'MKD', 'RON', 'RUB', 'RWF', 'SHP', 'WST', 'STN', 'SAR', 'RSD', 'SCR', 'SLL', 'SGD', 'XSU', 'SBD', 'SOS', 'SSP', 'LKR', 'SDG', 'SRD', 'SZL', 'SEK', 'CHE', 'CHW', 'SYP', 'TWD', 'TJS', 'TZS', 'THB', 'TOP', 'TTD', 'TND', 'TRY', 'TMT', 'UGX', 'UAH', 'AED', 'USN', 'UYI', 'UYU', 'UZS', 'VUV', 'VEF', 'VED', 'VND', 'YER', 'ZMW', 'ZWL')),
  FanInstallationDate DATETIME2,
  FanMaintenanceInterval NVARCHAR(50),
  FanTurnoverDate DATETIME2,
  FanModelNumber NVARCHAR(50),
  FanTagNumber NVARCHAR(50),
  FanSerialNumber NVARCHAR(50)
  PRIMARY KEY (AirFilterId)
);

CREATE TABLE AirHandlingUnit (
  AirHandlingUnitId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  NominalHeatingCapacity DECIMAL(19, 6),
  NominalCoolingCapacity DECIMAL(19, 6),
  VentilationConfiguration NVARCHAR(200),
  RefrigerantType NVARCHAR(50),
  NetSensibleCoolingCapacity DECIMAL(19, 6),
  HumidificationMethod NVARCHAR(50),
  Type NVARCHAR(50),
  FilterType NVARCHAR(50),
  DischargeDuctworkConfiguration NVARCHAR(50),
  DehumidificationMethod NVARCHAR(50),
  AirflowModulation NVARCHAR(50),
  Currency NVARCHAR(50) CHECK (Currency IN ('AFN', 'ALL', 'DZD', 'USD', 'EUR', 'AOA', 'XCD', 'ARS', 'AMD', 'AWG', 'AUD', 'AZN', 'BSD', 'BHD', 'BDT', 'BBD', 'BYN', 'BZD', 'XOF', 'BMD', 'BTN', 'INR', 'BOB', 'BOV', 'BAM', 'BWP', 'NOK', 'BRL', 'BND', 'BGN', 'BIF', 'CVE', 'KHR', 'XAF', 'CAD', 'KYD', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'KMF', 'CDF', 'NZD', 'CRC', 'HRK', 'CUC', 'CUP', 'ANG', 'CZK', 'DKK', 'DJF', 'DOP', 'EGP', 'SVC', 'ERN', 'ETB', 'FKP', 'FJD', 'XPF', 'GMD', 'GEL', 'GHS', 'GIP', 'GTQ', 'GBP', 'GNF', 'GYD', 'HTG', 'HNL', 'HKD', 'HUF', 'ISK', 'IDR', 'XDR', 'IRR', 'IQD', 'ILS', 'JMD', 'JPY', 'JOD', 'KZT', 'KES', 'KPW', 'KRW', 'KWD', 'KGS', 'LAK', 'LBP', 'LSL', 'ZAR', 'LRD', 'LYD', 'CHF', 'MOP', 'MGA', 'MWK', 'MYR', 'MVR', 'MRU', 'MUR', 'XUA', 'MXN', 'MXV', 'MDL', 'MNT', 'MAD', 'MZN', 'MMK', 'NAD', 'NPR', 'NIO', 'NGN', 'OMR', 'PKR', 'PAB', 'PGK', 'PYG', 'PEN', 'PHP', 'PLN', 'QAR', 'MKD', 'RON', 'RUB', 'RWF', 'SHP', 'WST', 'STN', 'SAR', 'RSD', 'SCR', 'SLL', 'SGD', 'XSU', 'SBD', 'SOS', 'SSP', 'LKR', 'SDG', 'SRD', 'SZL', 'SEK', 'CHE', 'CHW', 'SYP', 'TWD', 'TJS', 'TZS', 'THB', 'TOP', 'TTD', 'TND', 'TRY', 'TMT', 'UGX', 'UAH', 'AED', 'USN', 'UYI', 'UYU', 'UZS', 'VUV', 'VEF', 'VED', 'VND', 'YER', 'ZMW', 'ZWL')),
  VentilationStrategy NVARCHAR(100),
  SupplyFanNominalAirflow DECIMAL(19, 6),
  SupplyFanMotorPower DECIMAL(19, 6),
  SupplyFanMinAirflowRating DECIMAL(19, 6),
  SupplyFanMaxAirflowRating DECIMAL(19, 6),
  SupplyFanDriveType NVARCHAR(50),
  SupplyFanName NVARCHAR(200),
  SupplyFanCommissionDate DATETIME2,
  SupplyFanExpectedEndOfLife DATETIME2,
  SupplyFanDurationLifeYear INT,
  SupplyFanExpectedReplacementCost DECIMAL(28, 4),
  SupplyFanInitialCost DECIMAL(28, 4),
  SupplyFanInstallationDate DATETIME2,
  SupplyFanMaintenanceInterval NVARCHAR(50),
  SupplyFanTurnoverDate DATETIME2,
  SupplyFanModelNumber NVARCHAR(50),
  SupplyFanTagNumber NVARCHAR(50),
  SupplyFanSerialNumber NVARCHAR(50),
  ReturnFanNominalAirflow DECIMAL(19, 6),
  ReturnFanMotorPower DECIMAL(19, 6),
  ReturnFanMinAirflowRating DECIMAL(19, 6),
  ReturnFanMaxAirflowRating DECIMAL(19, 6),
  ReturnFanDriveType NVARCHAR(50),
  ReturnFanName NVARCHAR(200),
  ReturnFanCommissionDate DATETIME2,
  ReturnFanExpectedEndOfLife DATETIME2,
  ReturnFanDurationLifeYear INT,
  ReturnFanExpectedReplacementCost DECIMAL(28, 4),
  ReturnFanInitialCost DECIMAL(28, 4),
  ReturnFanInstallationDate DATETIME2,
  ReturnFanMaintenanceInterval NVARCHAR(50),
  ReturnFanTurnoverDate DATETIME2,
  ReturnFanModelNumber NVARCHAR(50),
  ReturnFanTagNumber NVARCHAR(50),
  ReturnFanSerialNumber NVARCHAR(50),
  ExhaustFanNominalAirflow DECIMAL(19, 6),
  ExhaustFanMotorPower DECIMAL(19, 6),
  ExhaustFanMinAirflowRating DECIMAL(19, 6),
  ExhaustFanMaxAirflowRating DECIMAL(19, 6),
  ExhaustFanDriveType NVARCHAR(50),
  ExhaustFanName NVARCHAR(200),
  ExhaustFanCommissionDate DATETIME2,
  ExhaustFanExpectedEndOfLife DATETIME2,
  ExhaustFanDurationLifeYear INT,
  ExhaustFanExpectedReplacementCost DECIMAL(28, 4),
  ExhaustFanInitialCost DECIMAL(28, 4),
  ExhaustFanInstallationDate DATETIME2,
  ExhaustFanMaintenanceInterval NVARCHAR(50),
  ExhaustFanTurnoverDate DATETIME2,
  ExhaustFanModelNumber NVARCHAR(50),
  ExhaustFanTagNumber NVARCHAR(50),
  ExhaustFanSerialNumber NVARCHAR(50),
  PrimaryCoolingMethodType NVARCHAR(50),
  PrimaryCoolingMethodRefrigerantType NVARCHAR(50),
  PrimaryCoolingOutsideDiameter DECIMAL(19, 6),
  PrimaryCoolingName NVARCHAR(200),
  PrimaryCoolingCommissionDate DATETIME2,
  PrimaryCoolingExpectedEndOfLife DATETIME2,
  PrimaryCoolingDurationLifeYear INT,
  PrimaryCoolingExpectedReplacementCost DECIMAL(28, 4),
  PrimaryCoolingInitialCost DECIMAL(28, 4),
  PrimaryCoolingInstallationDate DATETIME2,
  PrimaryCoolingMaintenanceInterval NVARCHAR(50),
  PrimaryCoolingTurnoverDate DATETIME2,
  PrimaryCoolingModelNumber NVARCHAR(50),
  PrimaryCoolingTagNumber NVARCHAR(50),
  PrimaryCoolingSerialNumber NVARCHAR(50),
  SecondaryCoolingMethodType NVARCHAR(50),
  SecondaryCoolingMethodRefrigerantType NVARCHAR(50),
  SecondaryCoolingOutsideDiameter DECIMAL(19, 6),
  SecondaryCoolingName NVARCHAR(200),
  SecondaryCoolingCommissionDate DATETIME2,
  SecondaryCoolingExpectedEndOfLife DATETIME2,
  SecondaryCoolingDurationLifeYear INT,
  SecondaryCoolingExpectedReplacementCost DECIMAL(28, 4),
  SecondaryCoolingInitialCost DECIMAL(28, 4),
  SecondaryCoolingInstallationDate DATETIME2,
  SecondaryCoolingMaintenanceInterval NVARCHAR(50),
  SecondaryCoolingTurnoverDate DATETIME2,
  SecondaryCoolingModelNumber NVARCHAR(50),
  SecondaryCoolingTagNumber NVARCHAR(50),
  SecondaryCoolingSerialNumber NVARCHAR(50),
  PreHeatingType NVARCHAR(50),
  PreHeatingOutsideDiameter DECIMAL(18, 0),
  PreHeatingName NVARCHAR(200),
  PreHeatingCommissionDate DATETIME2,
  PreHeatingExpectedEndOfLife DATETIME2,
  PreHeatingDurationLifeYear INT,
  PreHeatingExpectedReplacementCost DECIMAL(28, 4),
  PreHeatingInitialCost DECIMAL(28, 4),
  PreHeatingInstallationDate DATETIME2,
  PreHeatingMaintenanceInterval NVARCHAR(50),
  PreHeatingTurnoverDate DATETIME2,
  PreHeatingModelNumber NVARCHAR(50),
  PreHeatingTagNumber NVARCHAR(50),
  PreHeatingSerialNumber NVARCHAR(50),
  ReHeatingType NVARCHAR(50),
  ReHeatingOutsideDiameter DECIMAL(19, 6),
  ReHeatingName NVARCHAR(200),
  ReHeatingCommissionDate DATETIME2,
  ReHeatingExpectedEndOfLife DATETIME2,
  ReHeatingDurationLifeYear INT,
  ReHeatingExpectedReplacementCost DECIMAL(28, 4),
  ReHeatingInitialCost DECIMAL(28, 4),
  ReHeatingInstallationDate DATETIME2,
  ReHeatingMaintenanceInterval NVARCHAR(50),
  ReHeatingTurnoverDate DATETIME2,
  ReHeatingModelNumber NVARCHAR(50),
  ReHeatingTagNumber NVARCHAR(50),
  ReHeatingSerialNumber NVARCHAR(50),
  MixingBoxEconomiser NVARCHAR(100),
  MixingBoxName NVARCHAR(200),
  MixingBoxCommissionDate DATETIME2,
  MixingBoxExpectedEndOfLife DATETIME2,
  MixingBoxDurationLifeYear INT,
  MixingBoxExpectedReplacementCost DECIMAL(28, 4),
  MixingBoxInitialCost DECIMAL(28, 4),
  MixingBoxInstallationDate DATETIME2,
  MixingBoxMaintenanceInterval NVARCHAR(50),
  MixingBoxTurnoverDate DATETIME2,
  MixingBoxModelNumber NVARCHAR(50),
  MixingBoxTagNumber NVARCHAR(50),
  MixingBoxSerialNumber NVARCHAR(50)
  PRIMARY KEY (AirHandlingUnitId)
);

CREATE TABLE AreaMeasurement (
  AreaMeasurementId NVARCHAR(50) NOT NULL,
  Standard NVARCHAR(50) NOT NULL CHECK (Standard IN ('DIN 277-1', 'MFG', 'IPMS', 'RICS', 'BOMA', 'NA')),
  Type NVARCHAR(50) NOT NULL CHECK (Type IN ('Gross floor area', 'Construction area', 'Net room area', 'Circulation area', 'Net usable area', 'Technical area', 'Living/residence area', 'Office area', 'Production/laboratory area', 'Storage/distribution/selling area', 'Education/teaching/culture area', 'Healing/care area', 'Other uses', 'Rentable exclusion', 'Rentable area', 'Gross external area', 'External Wall area', 'Gross internal area', 'A-Vertical penetrations', 'B-Structural elements', 'C-Technical services', 'D-Hygiene areas', 'E-Circulation areas', 'F-Amenities', 'G-Workspace', 'H-Other areas', 'Boundary area', 'Rentable area common occupancy', 'Building amenity area', 'Building service area', 'Floor service area', 'Rentable area exclusive occupancy', 'Tenant ancillary area', 'Tenant area', 'Major vertical penetrations', 'Occupant Storage area', 'Parking area', 'Unenclosed Building Feature: Covered Gallery', 'Vacant area', 'NA', 'Energy reference area')),
  Value DECIMAL(19, 6) NOT NULL,
  Unit NVARCHAR(50) NOT NULL CHECK (Unit IN ('sqm', 'sqft')),
  ValidFrom DATETIME2 NOT NULL,
  ValidUntil DATETIME2 NOT NULL,
  Accuracy NVARCHAR(50) CHECK (Accuracy IN ('Estimated', 'Measured', 'Aggregated', 'Unknown'))
  PRIMARY KEY (AreaMeasurementId)
);

CREATE TABLE AreaMeasurementBuilding (
  AreaMeasurementId NVARCHAR(50) NOT NULL,
  BuildingId NVARCHAR(50) NOT NULL
  PRIMARY KEY (AreaMeasurementId, BuildingId)
);

CREATE TABLE AreaMeasurementFloor (
  AreaMeasurementId NVARCHAR(50) NOT NULL,
  FloorId NVARCHAR(50) NOT NULL
  PRIMARY KEY (AreaMeasurementId, FloorId)
);

CREATE TABLE AreaMeasurementLand (
  AreaMeasurementId NVARCHAR(50) NOT NULL,
  LandId NVARCHAR(50) NOT NULL
  PRIMARY KEY (AreaMeasurementId, LandId)
);

CREATE TABLE AreaMeasurementRentalUnit (
  AreaMeasurementId NVARCHAR(50) NOT NULL,
  RentalUnitId NVARCHAR(50) NOT NULL
  PRIMARY KEY (AreaMeasurementId, RentalUnitId)
);

CREATE TABLE AreaMeasurementSite (
  AreaMeasurementId NVARCHAR(50) NOT NULL,
  SiteId NVARCHAR(50) NOT NULL
  PRIMARY KEY (AreaMeasurementId, SiteId)
);

CREATE TABLE AreaMeasurementSpace (
  AreaMeasurementId NVARCHAR(50) NOT NULL,
  SpaceId NVARCHAR(50) NOT NULL
  PRIMARY KEY (AreaMeasurementId, SpaceId)
);

CREATE TABLE AreaMeasurementUnit (
  AreaMeasurementId NVARCHAR(50) NOT NULL,
  UnitId NVARCHAR(50) NOT NULL
  PRIMARY KEY (AreaMeasurementId, UnitId)
);

CREATE TABLE AutomaticTransferSwitch (
  AutomaticTransferSwitchId NVARCHAR(50) NOT NULL,
  TransferSwitchId NVARCHAR(50) NOT NULL,
  MainBusMaterial NVARCHAR(50),
  MainBusCurrentRating DECIMAL(19, 6),
  Poles INT,
  MainsRating DECIMAL(19, 6),
  TransitionType NVARCHAR(50),
  SwitchingMechanism NVARCHAR(50)
  PRIMARY KEY (AutomaticTransferSwitchId)
);

CREATE TABLE BacNetController (
  BacNetControllerId NVARCHAR(50) NOT NULL,
  ControllerId NVARCHAR(50) NOT NULL,
  Address NVARCHAR(50),
  RegistrationId NVARCHAR(50),
  RegistrationKey NVARCHAR(50),
  ConnectorId NVARCHAR(50),
  Enabled BIT,
  Detected BIT
  PRIMARY KEY (BacNetControllerId)
);

CREATE TABLE Boiler (
  BoilerId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  TankCapacity DECIMAL(19, 6),
  PowerInput DECIMAL(19, 6),
  PowerOutput DECIMAL(19, 6),
  Medium NVARCHAR(50),
  Recovery100FRise DECIMAL(19, 6)
  PRIMARY KEY (BoilerId)
);

CREATE TABLE Building (
  BuildingId NVARCHAR(50) NOT NULL,
  SiteId NVARCHAR(50) NOT NULL,
  Name NVARCHAR(200) NOT NULL,
  BuildingCode NVARCHAR(70),
  PrimaryTypeOfBuilding NVARCHAR(75) NOT NULL CHECK (PrimaryTypeOfBuilding IN ('Retail', 'Retail, High Street', 'Retail, Retail Centers', 'Retail, Shopping Center', 'Retail, Strip Mall', 'Retail, Lifestyle Center', 'Retail, Warehouse', 'Retail, Restaurants/Bars', 'Retail, Other', 'Office', 'Office, Corporate', 'Office, Low-Rise Office', 'Office, Mid-Rise Office', 'Office, High-Rise Office', 'Office, Medical Office', 'Office, Business Park', 'Office, Other', 'Industrial', 'Industrial, Distribution Warehouse', 'Industrial, Industrial Park', 'Industrial, Manufacturing', 'Industrial, Other', 'Residential', 'Residential, Multi-Family', 'Residential, Low-Rise Multi-Family', 'Residential, Mid-Rise Multi-Family', 'Residential, High-Rise Multi-Family', 'Residential, Family Homes', 'Residential, Student Housing', 'Residential, Retirement Living', 'Residential, Other', 'Hotel', 'Lodging, Leisure & Recreation', 'Lodging, Leisure & Recreation, Indoor Arena', 'Lodging, Leisure & Recreation, Fitness Center', 'Lodging, Leisure & Recreation, Performing Arts', 'Lodging, Leisure & Recreation, Swimming Center', 'Lodging, Leisure & Recreation, Museum/Gallery', 'Lodging, Leisure & Recreation, Other', 'Education', 'Education, School', 'Education, University', 'Education, Library', 'Education, Other', 'Technology/Science', 'Technology/Science, Data Center', 'Technology/Science, Laboratory/Life sciences', 'Technology/Science, Other', 'Health Care', 'Health Care, Health Care Center', 'Health Care, Senior Homes', 'Health Care, Other', 'Mixed Use', 'Mixed Use, Office/Retail', 'Mixed Use, Office/Residential', 'Mixed Use, Office/Industrial', 'Mixed Use, Other', 'Other', 'Other, Parking (Indoors)', 'Other, Self-Storage')),
  SecondaryTypeOfBuilding NVARCHAR(75) CHECK (SecondaryTypeOfBuilding IN ('Retail', 'Retail, High Street', 'Retail, Retail Centers', 'Retail, Shopping Center', 'Retail, Strip Mall', 'Retail, Lifestyle Center', 'Retail, Warehouse', 'Retail, Restaurants/Bars', 'Retail, Other', 'Office', 'Office, Corporate', 'Office, Low-Rise Office', 'Office, Mid-Rise Office', 'Office, High-Rise Office', 'Office, Medical Office', 'Office, Business Park', 'Office, Other', 'Industrial', 'Industrial, Distribution Warehouse', 'Industrial, Industrial Park', 'Industrial, Manufacturing', 'Industrial, Other', 'Residential', 'Residential, Multi-Family', 'Residential, Low-Rise Multi-Family', 'Residential, Mid-Rise Multi-Family', 'Residential, High-Rise Multi-Family', 'Residential, Family Homes', 'Residential, Student Housing', 'Residential, Retirement Living', 'Residential, Other', 'Hotel', 'Lodging, Leisure & Recreation', 'Lodging, Leisure & Recreation, Indoor Arena', 'Lodging, Leisure & Recreation, Fitness Center', 'Lodging, Leisure & Recreation, Performing Arts', 'Lodging, Leisure & Recreation, Swimming Center', 'Lodging, Leisure & Recreation, Museum/Gallery', 'Lodging, Leisure & Recreation, Other', 'Education', 'Education, School', 'Education, University', 'Education, Library', 'Education, Other', 'Technology/Science', 'Technology/Science, Data Center', 'Technology/Science, Laboratory/Life sciences', 'Technology/Science, Other', 'Health Care', 'Health Care, Health Care Center', 'Health Care, Senior Homes', 'Health Care, Other', 'Mixed Use', 'Mixed Use, Office/Retail', 'Mixed Use, Office/Residential', 'Mixed Use, Office/Industrial', 'Mixed Use, Other', 'Other', 'Other, Parking (Indoors)', 'Other, Self-Storage')),
  EnergyEfficiencyClass NVARCHAR(50),
  ValidFrom DATETIME2 NOT NULL,
  ValidUntil DATETIME2 NOT NULL,
  ConstructionYear DATETIME2,
  YearOfLastRefurbishment DATETIME2,
  MonumentProtection BIT,
  TypeOfOwnership NVARCHAR(50) NOT NULL CHECK (TypeOfOwnership IN ('Owner', 'Tenant')),
  SelfUse BIT,
  TenantStructure NVARCHAR(50) CHECK (TenantStructure IN ('Single-tenant', 'Multi-tenant')),
  ParkingSpaces INT,
  ElectricVehicleChargingStations INT,
  PrimaryEnergyType NVARCHAR(50) CHECK (PrimaryEnergyType IN ('Natural Gas', 'Coal', 'Nuclear', 'Petroleum', 'Hydropower', 'Wind', 'Biomass', 'Geothermal', 'Solar')),
  PrimaryWaterType NVARCHAR(50),
  PrimaryHeatingType NVARCHAR(50) CHECK (PrimaryHeatingType IN ('District heating', 'Natural gas', 'Oil-based fuels', 'Solar thermal', 'Unspecified', 'Heat pump', 'Electricity (radiator)', 'Biomass', 'Micro combined heat and power')),
  SecondaryHeatingType NVARCHAR(50) CHECK (SecondaryHeatingType IN ('District heating', 'Natural gas', 'Oil-based fuels', 'Solar thermal', 'Unspecified', 'Heat pump', 'Electricity (radiator)')),
  AirConditioning BIT,
  Status NVARCHAR(50)
  PRIMARY KEY (BuildingId)
);

CREATE TABLE CeilingFan (
  CeilingFanId NVARCHAR(50) NOT NULL,
  HvacFanId NVARCHAR(50) NOT NULL,
  DriveType NVARCHAR(50),
  NominalAirflow DECIMAL(19, 6),
  MotorPower DECIMAL(19, 6),
  MinAirflowRating DECIMAL(19, 6),
  MaxAirflowRating DECIMAL(19, 6),
  MaxRotationSpeed DECIMAL(19, 6),
  BladeDiameter DECIMAL(19, 6),
  Type NVARCHAR(50),
  FanNominalAirflow DECIMAL(19, 6),
  FanMotorPower DECIMAL(19, 6),
  FanMinAirflowRating DECIMAL(19, 6),
  FanMaxAirflowRating DECIMAL(19, 6),
  FanDriveType NVARCHAR(50),
  FanName NVARCHAR(200),
  FanCommissionDate DATETIME2,
  FanExpectedEndOfLife DATETIME2,
  FanDurationLifeYear INT,
  FanExpectedReplacementCost DECIMAL(28, 4),
  FanInitialCost DECIMAL(28, 4),
  Currency NVARCHAR(50) CHECK (Currency IN ('AFN', 'ALL', 'DZD', 'USD', 'EUR', 'AOA', 'XCD', 'ARS', 'AMD', 'AWG', 'AUD', 'AZN', 'BSD', 'BHD', 'BDT', 'BBD', 'BYN', 'BZD', 'XOF', 'BMD', 'BTN', 'INR', 'BOB', 'BOV', 'BAM', 'BWP', 'NOK', 'BRL', 'BND', 'BGN', 'BIF', 'CVE', 'KHR', 'XAF', 'CAD', 'KYD', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'KMF', 'CDF', 'NZD', 'CRC', 'HRK', 'CUC', 'CUP', 'ANG', 'CZK', 'DKK', 'DJF', 'DOP', 'EGP', 'SVC', 'ERN', 'ETB', 'FKP', 'FJD', 'XPF', 'GMD', 'GEL', 'GHS', 'GIP', 'GTQ', 'GBP', 'GNF', 'GYD', 'HTG', 'HNL', 'HKD', 'HUF', 'ISK', 'IDR', 'XDR', 'IRR', 'IQD', 'ILS', 'JMD', 'JPY', 'JOD', 'KZT', 'KES', 'KPW', 'KRW', 'KWD', 'KGS', 'LAK', 'LBP', 'LSL', 'ZAR', 'LRD', 'LYD', 'CHF', 'MOP', 'MGA', 'MWK', 'MYR', 'MVR', 'MRU', 'MUR', 'XUA', 'MXN', 'MXV', 'MDL', 'MNT', 'MAD', 'MZN', 'MMK', 'NAD', 'NPR', 'NIO', 'NGN', 'OMR', 'PKR', 'PAB', 'PGK', 'PYG', 'PEN', 'PHP', 'PLN', 'QAR', 'MKD', 'RON', 'RUB', 'RWF', 'SHP', 'WST', 'STN', 'SAR', 'RSD', 'SCR', 'SLL', 'SGD', 'XSU', 'SBD', 'SOS', 'SSP', 'LKR', 'SDG', 'SRD', 'SZL', 'SEK', 'CHE', 'CHW', 'SYP', 'TWD', 'TJS', 'TZS', 'THB', 'TOP', 'TTD', 'TND', 'TRY', 'TMT', 'UGX', 'UAH', 'AED', 'USN', 'UYI', 'UYU', 'UZS', 'VUV', 'VEF', 'VED', 'VND', 'YER', 'ZMW', 'ZWL')),
  FanInstallationDate DATETIME2,
  FanMaintenanceInterval NVARCHAR(50),
  FanTurnoverDate DATETIME2,
  FanModelNumber NVARCHAR(50),
  FanTagNumber NVARCHAR(50),
  FanSerialNumber NVARCHAR(50),
  DuctInletSize DECIMAL(19, 6),
  DuctInletShape DECIMAL(19, 6),
  DuctInletConfiguration NVARCHAR(200),
  DuctInletName NVARCHAR(200),
  DuctInletCommissionDate DATETIME2,
  DuctInletExpectedEndOfLife DATETIME2,
  DuctInletExpectedReplacementCost DECIMAL(28, 4),
  DuctInletInitialCost DECIMAL(28, 4),
  DuctInletCurrency NVARCHAR(50) CHECK (DuctInletCurrency IN ('AFN', 'ALL', 'DZD', 'USD', 'EUR', 'AOA', 'XCD', 'ARS', 'AMD', 'AWG', 'AUD', 'AZN', 'BSD', 'BHD', 'BDT', 'BBD', 'BYN', 'BZD', 'XOF', 'BMD', 'BTN', 'INR', 'BOB', 'BOV', 'BAM', 'BWP', 'NOK', 'BRL', 'BND', 'BGN', 'BIF', 'CVE', 'KHR', 'XAF', 'CAD', 'KYD', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'KMF', 'CDF', 'NZD', 'CRC', 'HRK', 'CUC', 'CUP', 'ANG', 'CZK', 'DKK', 'DJF', 'DOP', 'EGP', 'SVC', 'ERN', 'ETB', 'FKP', 'FJD', 'XPF', 'GMD', 'GEL', 'GHS', 'GIP', 'GTQ', 'GBP', 'GNF', 'GYD', 'HTG', 'HNL', 'HKD', 'HUF', 'ISK', 'IDR', 'XDR', 'IRR', 'IQD', 'ILS', 'JMD', 'JPY', 'JOD', 'KZT', 'KES', 'KPW', 'KRW', 'KWD', 'KGS', 'LAK', 'LBP', 'LSL', 'ZAR', 'LRD', 'LYD', 'CHF', 'MOP', 'MGA', 'MWK', 'MYR', 'MVR', 'MRU', 'MUR', 'XUA', 'MXN', 'MXV', 'MDL', 'MNT', 'MAD', 'MZN', 'MMK', 'NAD', 'NPR', 'NIO', 'NGN', 'OMR', 'PKR', 'PAB', 'PGK', 'PYG', 'PEN', 'PHP', 'PLN', 'QAR', 'MKD', 'RON', 'RUB', 'RWF', 'SHP', 'WST', 'STN', 'SAR', 'RSD', 'SCR', 'SLL', 'SGD', 'XSU', 'SBD', 'SOS', 'SSP', 'LKR', 'SDG', 'SRD', 'SZL', 'SEK', 'CHE', 'CHW', 'SYP', 'TWD', 'TJS', 'TZS', 'THB', 'TOP', 'TTD', 'TND', 'TRY', 'TMT', 'UGX', 'UAH', 'AED', 'USN', 'UYI', 'UYU', 'UZS', 'VUV', 'VEF', 'VED', 'VND', 'YER', 'ZMW', 'ZWL')),
  DuctInletInstallationDate DATETIME2,
  DuctInletMaintenanceInterval NVARCHAR(50),
  DuctInletTurnoverDate DATETIME2,
  DuctInletModel NVARCHAR(200),
  DuctInletTagNumber NVARCHAR(50),
  DuctInletSerialNumber NVARCHAR(50)
  PRIMARY KEY (CeilingFanId)
);

CREATE TABLE Certificate (
  CertificateId NVARCHAR(50) NOT NULL,
  Name NVARCHAR(200) NOT NULL,
  Type NVARCHAR(50) NOT NULL,
  CertificateValue NVARCHAR(50) NOT NULL,
  IssuingDate DATETIME2,
  ValidFrom DATETIME2 NOT NULL,
  ValidUntil DATETIME2 NOT NULL,
  CertificateUrl NVARCHAR(200),
  DocumentId NVARCHAR(50)
  PRIMARY KEY (CertificateId)
);

CREATE TABLE CertificateBuilding (
  CertificateId NVARCHAR(50) NOT NULL,
  BuildingId NVARCHAR(50) NOT NULL
  PRIMARY KEY (CertificateId, BuildingId)
);

CREATE TABLE CertificateComponent (
  CertificateId NVARCHAR(50) NOT NULL,
  ComponentId NVARCHAR(50) NOT NULL
  PRIMARY KEY (CertificateId, ComponentId)
);

CREATE TABLE CertificateSystem (
  CertificateId NVARCHAR(50) NOT NULL,
  SystemId NVARCHAR(50) NOT NULL
  PRIMARY KEY (CertificateId, SystemId)
);

CREATE TABLE CertificateValuation (
  CertificateId NVARCHAR(50) NOT NULL,
  ValuationId NVARCHAR(50) NOT NULL
  PRIMARY KEY (CertificateId, ValuationId)
);

CREATE TABLE Chiller (
  ChillerId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  RefrigerantType NVARCHAR(50),
  NominalCoolingCapacity DECIMAL(19, 6),
  NetSensibleCoolingCapacity DECIMAL(19, 6),
  CompressorType NVARCHAR(50)
  PRIMARY KEY (ChillerId)
);

CREATE TABLE CoGenerator (
  CoGeneratorId NVARCHAR(50) NOT NULL,
  GeneratorId NVARCHAR(50) NOT NULL,
  OutputVoltage DECIMAL(19, 6),
  OutputPhases NVARCHAR(50),
  ModeOfOperation NVARCHAR(50),
  FuelType NVARCHAR(50),
  Frequency NVARCHAR(50),
  DayTankCapacity DECIMAL(19, 6),
  BulkStorageCapacity DECIMAL(19, 6),
  StandbyPowerKva DECIMAL(19, 6),
  StandbyPower DECIMAL(19, 6),
  PrimePowerKva DECIMAL(19, 6),
  PrimePower DECIMAL(19, 6)
  PRIMARY KEY (CoGeneratorId)
);

CREATE TABLE Component (
  ComponentId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Name NVARCHAR(200) NOT NULL,
  Type NVARCHAR(50) NOT NULL,
  Counter INT,
  Description NVARCHAR(200),
  ConditionStatus NVARCHAR(50) NOT NULL CHECK (ConditionStatus IN ('Defect', 'Good', 'Not Available')),
  DurationLifeYear INT NOT NULL,
  WarrantyStartDate DATETIME2 NOT NULL,
  TurnoverDate DATETIME2,
  CommissionDate DATETIME2,
  ExpectedEndOfLife DATETIME2,
  SerialNumber NVARCHAR(50) NOT NULL,
  TagNumber NVARCHAR(50),
  GeometrySpatialReference NVARCHAR(200),
  ExpectedReplacementCost DECIMAL(28, 4),
  InitialCost DECIMAL(28, 4),
  Currency NVARCHAR(50) NOT NULL CHECK (Currency IN ('AFN', 'ALL', 'DZD', 'USD', 'EUR', 'AOA', 'XCD', 'ARS', 'AMD', 'AWG', 'AUD', 'AZN', 'BSD', 'BHD', 'BDT', 'BBD', 'BYN', 'BZD', 'XOF', 'BMD', 'BTN', 'INR', 'BOB', 'BOV', 'BAM', 'BWP', 'NOK', 'BRL', 'BND', 'BGN', 'BIF', 'CVE', 'KHR', 'XAF', 'CAD', 'KYD', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'KMF', 'CDF', 'NZD', 'CRC', 'HRK', 'CUC', 'CUP', 'ANG', 'CZK', 'DKK', 'DJF', 'DOP', 'EGP', 'SVC', 'ERN', 'ETB', 'FKP', 'FJD', 'XPF', 'GMD', 'GEL', 'GHS', 'GIP', 'GTQ', 'GBP', 'GNF', 'GYD', 'HTG', 'HNL', 'HKD', 'HUF', 'ISK', 'IDR', 'XDR', 'IRR', 'IQD', 'ILS', 'JMD', 'JPY', 'JOD', 'KZT', 'KES', 'KPW', 'KRW', 'KWD', 'KGS', 'LAK', 'LBP', 'LSL', 'ZAR', 'LRD', 'LYD', 'CHF', 'MOP', 'MGA', 'MWK', 'MYR', 'MVR', 'MRU', 'MUR', 'XUA', 'MXN', 'MXV', 'MDL', 'MNT', 'MAD', 'MZN', 'MMK', 'NAD', 'NPR', 'NIO', 'NGN', 'OMR', 'PKR', 'PAB', 'PGK', 'PYG', 'PEN', 'PHP', 'PLN', 'QAR', 'MKD', 'RON', 'RUB', 'RWF', 'SHP', 'WST', 'STN', 'SAR', 'RSD', 'SCR', 'SLL', 'SGD', 'XSU', 'SBD', 'SOS', 'SSP', 'LKR', 'SDG', 'SRD', 'SZL', 'SEK', 'CHE', 'CHW', 'SYP', 'TWD', 'TJS', 'TZS', 'THB', 'TOP', 'TTD', 'TND', 'TRY', 'TMT', 'UGX', 'UAH', 'AED', 'USN', 'UYI', 'UYU', 'UZS', 'VUV', 'VEF', 'VED', 'VND', 'YER', 'ZMW', 'ZWL')),
  InstallationDate DATETIME2,
  Barcode NVARCHAR(50)
  PRIMARY KEY (ComponentId)
);

CREATE TABLE ComponentBuilding (
  ComponentId NVARCHAR(50) NOT NULL,
  BuildingId NVARCHAR(50) NOT NULL
  PRIMARY KEY (ComponentId, BuildingId)
);

CREATE TABLE ComponentFloor (
  ComponentId NVARCHAR(50) NOT NULL,
  FloorId NVARCHAR(50) NOT NULL
  PRIMARY KEY (ComponentId, FloorId)
);

CREATE TABLE ComponentRentalUnit (
  ComponentId NVARCHAR(50) NOT NULL,
  RentalUnitId NVARCHAR(50) NOT NULL
  PRIMARY KEY (ComponentId, RentalUnitId)
);

CREATE TABLE ComponentSite (
  ComponentId NVARCHAR(50) NOT NULL,
  SiteId NVARCHAR(50) NOT NULL
  PRIMARY KEY (ComponentId, SiteId)
);

CREATE TABLE ComponentSpace (
  ComponentId NVARCHAR(50) NOT NULL,
  SpaceId NVARCHAR(50) NOT NULL
  PRIMARY KEY (ComponentId, SpaceId)
);

CREATE TABLE ComponentSystem (
  ComponentId NVARCHAR(50) NOT NULL,
  SystemId NVARCHAR(50) NOT NULL
  PRIMARY KEY (ComponentId, SystemId)
);

CREATE TABLE ComponentType (
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Name NVARCHAR(200) NOT NULL,
  Description NVARCHAR(200),
  Type NVARCHAR(50) NOT NULL,
  Model NVARCHAR(200),
  ExpectedLifeYear INT,
  MaintenanceInterval NVARCHAR(50),
  ModelNumber NVARCHAR(50),
  WarrantyDuration INT,
  DocumentId NVARCHAR(50),
  Class NVARCHAR(200) NOT NULL,
  MaintenanceGroup NVARCHAR(50),
  MaintenanceRelevance NVARCHAR(50) CHECK (MaintenanceRelevance IN ('High', 'Medium', 'Low')),
  UrlLibrary NVARCHAR(200),
  CeIdentification NVARCHAR(50)
  PRIMARY KEY (ComponentTypeId)
);

CREATE TABLE ComponentUnit (
  ComponentId NVARCHAR(50) NOT NULL,
  UnitId NVARCHAR(50) NOT NULL
  PRIMARY KEY (ComponentId, UnitId)
);

CREATE TABLE CondensingUnit (
  CondensingUnitId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  RefrigerantType NVARCHAR(50),
  NominalHeatingCapacity DECIMAL(19, 6),
  NominalCoolingCapacity DECIMAL(19, 6),
  NetSensibleHeatingCapacity DECIMAL(19, 6),
  NetSensibleCoolingCapacity DECIMAL(19, 6),
  EnergyEfficiencyRating NVARCHAR(50)
  PRIMARY KEY (CondensingUnitId)
);

CREATE TABLE Controller (
  ControllerId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  RegistrationId NVARCHAR(50),
  RegistrationKey NVARCHAR(50),
  ConnectorId NVARCHAR(50),
  Enabled BIT,
  Detected BIT
  PRIMARY KEY (ControllerId)
);

CREATE TABLE CoolingTower (
  CoolingTowerId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  FlowCapacity DECIMAL(19, 6),
  NominalCoolingCapacity DECIMAL(19, 6),
  FanNominalAirflow DECIMAL(19, 6),
  FanMotorPower DECIMAL(19, 6),
  FanMinAirflowRating DECIMAL(19, 6),
  FanMaxAirflowRating DECIMAL(19, 6),
  FanDriveType NVARCHAR(50),
  FanName NVARCHAR(200),
  FanCommissionDate DATETIME2,
  FanExpectedEndOfLife DATETIME2,
  FanDurationLifeYear INT,
  FanExpectedReplacementCost DECIMAL(28, 4),
  FanInitialCost DECIMAL(28, 4),
  Currency NVARCHAR(50) CHECK (Currency IN ('AFN', 'ALL', 'DZD', 'USD', 'EUR', 'AOA', 'XCD', 'ARS', 'AMD', 'AWG', 'AUD', 'AZN', 'BSD', 'BHD', 'BDT', 'BBD', 'BYN', 'BZD', 'XOF', 'BMD', 'BTN', 'INR', 'BOB', 'BOV', 'BAM', 'BWP', 'NOK', 'BRL', 'BND', 'BGN', 'BIF', 'CVE', 'KHR', 'XAF', 'CAD', 'KYD', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'KMF', 'CDF', 'NZD', 'CRC', 'HRK', 'CUC', 'CUP', 'ANG', 'CZK', 'DKK', 'DJF', 'DOP', 'EGP', 'SVC', 'ERN', 'ETB', 'FKP', 'FJD', 'XPF', 'GMD', 'GEL', 'GHS', 'GIP', 'GTQ', 'GBP', 'GNF', 'GYD', 'HTG', 'HNL', 'HKD', 'HUF', 'ISK', 'IDR', 'XDR', 'IRR', 'IQD', 'ILS', 'JMD', 'JPY', 'JOD', 'KZT', 'KES', 'KPW', 'KRW', 'KWD', 'KGS', 'LAK', 'LBP', 'LSL', 'ZAR', 'LRD', 'LYD', 'CHF', 'MOP', 'MGA', 'MWK', 'MYR', 'MVR', 'MRU', 'MUR', 'XUA', 'MXN', 'MXV', 'MDL', 'MNT', 'MAD', 'MZN', 'MMK', 'NAD', 'NPR', 'NIO', 'NGN', 'OMR', 'PKR', 'PAB', 'PGK', 'PYG', 'PEN', 'PHP', 'PLN', 'QAR', 'MKD', 'RON', 'RUB', 'RWF', 'SHP', 'WST', 'STN', 'SAR', 'RSD', 'SCR', 'SLL', 'SGD', 'XSU', 'SBD', 'SOS', 'SSP', 'LKR', 'SDG', 'SRD', 'SZL', 'SEK', 'CHE', 'CHW', 'SYP', 'TWD', 'TJS', 'TZS', 'THB', 'TOP', 'TTD', 'TND', 'TRY', 'TMT', 'UGX', 'UAH', 'AED', 'USN', 'UYI', 'UYU', 'UZS', 'VUV', 'VEF', 'VED', 'VND', 'YER', 'ZMW', 'ZWL')),
  FanInstallationDate DATETIME2,
  FanMaintenanceInterval NVARCHAR(50),
  FanTurnoverDate DATETIME2,
  FanModelNumber NVARCHAR(50),
  FanTagNumber NVARCHAR(50),
  FanSerialNumber NVARCHAR(50)
  PRIMARY KEY (CoolingTowerId)
);

CREATE TABLE Damper (
  DamperId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  LeakageClass NVARCHAR(200),
  BladeType NVARCHAR(50),
  DuctInletSize DECIMAL(19, 6),
  DuctInletShape DECIMAL(19, 6),
  DuctInletConfiguration NVARCHAR(200),
  DuctInletName NVARCHAR(200),
  DuctInletCommissionDate DATETIME2,
  DuctInletExpectedEndOfLife DATETIME2,
  DuctInletExpectedReplacementCost DECIMAL(28, 4),
  DuctInletInitialCost DECIMAL(28, 4),
  DuctInletCurrency NVARCHAR(50) CHECK (DuctInletCurrency IN ('AFN', 'ALL', 'DZD', 'USD', 'EUR', 'AOA', 'XCD', 'ARS', 'AMD', 'AWG', 'AUD', 'AZN', 'BSD', 'BHD', 'BDT', 'BBD', 'BYN', 'BZD', 'XOF', 'BMD', 'BTN', 'INR', 'BOB', 'BOV', 'BAM', 'BWP', 'NOK', 'BRL', 'BND', 'BGN', 'BIF', 'CVE', 'KHR', 'XAF', 'CAD', 'KYD', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'KMF', 'CDF', 'NZD', 'CRC', 'HRK', 'CUC', 'CUP', 'ANG', 'CZK', 'DKK', 'DJF', 'DOP', 'EGP', 'SVC', 'ERN', 'ETB', 'FKP', 'FJD', 'XPF', 'GMD', 'GEL', 'GHS', 'GIP', 'GTQ', 'GBP', 'GNF', 'GYD', 'HTG', 'HNL', 'HKD', 'HUF', 'ISK', 'IDR', 'XDR', 'IRR', 'IQD', 'ILS', 'JMD', 'JPY', 'JOD', 'KZT', 'KES', 'KPW', 'KRW', 'KWD', 'KGS', 'LAK', 'LBP', 'LSL', 'ZAR', 'LRD', 'LYD', 'CHF', 'MOP', 'MGA', 'MWK', 'MYR', 'MVR', 'MRU', 'MUR', 'XUA', 'MXN', 'MXV', 'MDL', 'MNT', 'MAD', 'MZN', 'MMK', 'NAD', 'NPR', 'NIO', 'NGN', 'OMR', 'PKR', 'PAB', 'PGK', 'PYG', 'PEN', 'PHP', 'PLN', 'QAR', 'MKD', 'RON', 'RUB', 'RWF', 'SHP', 'WST', 'STN', 'SAR', 'RSD', 'SCR', 'SLL', 'SGD', 'XSU', 'SBD', 'SOS', 'SSP', 'LKR', 'SDG', 'SRD', 'SZL', 'SEK', 'CHE', 'CHW', 'SYP', 'TWD', 'TJS', 'TZS', 'THB', 'TOP', 'TTD', 'TND', 'TRY', 'TMT', 'UGX', 'UAH', 'AED', 'USN', 'UYI', 'UYU', 'UZS', 'VUV', 'VEF', 'VED', 'VND', 'YER', 'ZMW', 'ZWL')),
  DuctInletInstallationDate DATETIME2,
  DuctInletMaintenanceInterval NVARCHAR(50),
  DuctInletTurnoverDate DATETIME2,
  DuctInletModel NVARCHAR(200),
  DuctInletTagNumber NVARCHAR(50),
  DuctInletSerialNumber NVARCHAR(50)
  PRIMARY KEY (DamperId)
);

CREATE TABLE DataNetworkEquipment (
  DataNetworkEquipmentId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  MountedInRack BIT,
  RackPosition NVARCHAR(50)
  PRIMARY KEY (DataNetworkEquipmentId)
);

CREATE TABLE DataNetworkSubComponent (
  DataNetworkSubComponentId NVARCHAR(50) NOT NULL,
  DataNetworkEquipmentId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  RackPosition NVARCHAR(50),
  NumberOfPorts INT,
  HeightRUs DECIMAL(19, 6)
  PRIMARY KEY (DataNetworkSubComponentId)
);

CREATE TABLE ElectricalDistributionEquipmentSubComponent (
  ElectricalDistributionEquipmentSubComponentId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  ShortCircuitRating DECIMAL(19, 6),
  InputVoltage DECIMAL(19, 6),
  InputPhases NVARCHAR(50),
  MainBusMaterial NVARCHAR(50),
  MainBusCurrentRating DECIMAL(19, 6),
  MainBusName NVARCHAR(200),
  MainBusCommissionDate DATETIME2,
  MainBusExpectedEndOfLife DATETIME2,
  MainBusDurationLifeYear INT,
  MainBusExpectedReplacementCost DECIMAL(28, 4),
  MainBusInitialCost DECIMAL(28, 4),
  MainBusInstallationDate DATETIME2,
  MainBusMaintenanceInterval NVARCHAR(50),
  MainBusTurnoverDate DATETIME2,
  MainBusModelNumber NVARCHAR(50),
  MainBusTagNumber NVARCHAR(50),
  MainBusSerialNumber NVARCHAR(50)
  PRIMARY KEY (ElectricalDistributionEquipmentSubComponentId)
);

CREATE TABLE ElectricalMeter (
  ElectricalMeterId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  NetEnergy DECIMAL(19, 6),
  NetPower DECIMAL(19, 6),
  ImportPower DECIMAL(19, 6),
  ImportEnergy DECIMAL(19, 6),
  ExportPower DECIMAL(19, 6),
  ExportEnergy DECIMAL(19, 6)
  PRIMARY KEY (ElectricalMeterId)
);

CREATE TABLE ElectricalPanelBoard (
  ElectricalPanelBoardId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  ShortCircuitRating DECIMAL(19, 6),
  MaxNumberOfPoles INT,
  InputVoltage DECIMAL(19, 6),
  InputPhases NVARCHAR(50),
  OutputPhases NVARCHAR(50),
  MainBusMaterial NVARCHAR(50),
  MainBusCurrentRating DECIMAL(19, 6),
  MainBusName NVARCHAR(200),
  MainBusCommissionDate DATETIME2,
  MainBusExpectedEndOfLife DATETIME2,
  MainBusDurationLifeYear INT,
  MainBusExpectedReplacementCost DECIMAL(28, 4),
  MainBusInitialCost DECIMAL(28, 4),
  MainBusInstallationDate DATETIME2,
  MainBusMaintenanceInterval NVARCHAR(50),
  MainBusTurnoverDate DATETIME2,
  MainBusModelNumber NVARCHAR(50),
  MainBusTagNumber NVARCHAR(50),
  MainBusSerialNumber NVARCHAR(50)
  PRIMARY KEY (ElectricalPanelBoardId)
);

CREATE TABLE ElectricalPanelBoardMcb (
  ElectricalPanelBoardMcbId NVARCHAR(50) NOT NULL,
  ElectricalPanelBoardId NVARCHAR(50) NOT NULL,
  InputPhases NVARCHAR(50),
  ShortCircuitRating DECIMAL(19, 6),
  OutputPhases NVARCHAR(50),
  InputVoltage DECIMAL(19, 6),
  MaxNumberOfPoles INT,
  MainBusMaterial NVARCHAR(50),
  MainBusCurrentRating DECIMAL(19, 6),
  MainBusName NVARCHAR(200),
  MainBusCommissionDate DATETIME2,
  MainBusExpectedEndOfLife DATETIME2,
  MainBusDurationLifeYear INT,
  MainBusExpectedReplacementCost DECIMAL(28, 4),
  MainBusInitialCost DECIMAL(28, 4),
  MainBusInstallationDate DATETIME2,
  MainBusMaintenanceInterval NVARCHAR(50),
  MainBusTurnoverDate DATETIME2,
  MainBusModelNumber NVARCHAR(50),
  MainBusTagNumber NVARCHAR(50),
  MainBusSerialNumber NVARCHAR(50),
  McbRating NVARCHAR(50)
  PRIMARY KEY (ElectricalPanelBoardMcbId)
);

CREATE TABLE ElectricalPanelBoardMlo (
  ElectricalPanelBoardMloId NVARCHAR(50) NOT NULL,
  ElectricalPanelBoardId NVARCHAR(50) NOT NULL,
  InputPhases NVARCHAR(50),
  ShortCircuitRating DECIMAL(19, 6),
  OutputPhases NVARCHAR(50),
  InputVoltage DECIMAL(19, 6),
  MaxNumberOfPoles INT,
  MainBusMaterial NVARCHAR(50),
  MainBusCurrentRating DECIMAL(19, 6),
  MainBusName NVARCHAR(200),
  MainBusCommissionDate DATETIME2,
  MainBusExpectedEndOfLife DATETIME2,
  MainBusDurationLifeYear INT,
  MainBusExpectedReplacementCost DECIMAL(28, 4),
  MainBusInitialCost DECIMAL(28, 4),
  MainBusInstallationDate DATETIME2,
  MainBusMaintenanceInterval NVARCHAR(50),
  MainBusTurnoverDate DATETIME2,
  MainBusModelNumber NVARCHAR(50),
  MainBusTagNumber NVARCHAR(50),
  MainBusSerialNumber NVARCHAR(50)
  PRIMARY KEY (ElectricalPanelBoardMloId)
);

CREATE TABLE ElectricalSystem (
  ElectricalSystemId NVARCHAR(50) NOT NULL,
  SystemId NVARCHAR(50) NOT NULL,
  ElectricalSource NVARCHAR(50),
  ElectricalPowerFactor DECIMAL(19, 6),
  CurrentDraw DECIMAL(19, 6),
  ElectricalCurrentDensity DECIMAL(19, 6),
  TrueCurrent DECIMAL(19, 6),
  TrueLoad DECIMAL(19, 6),
  TotalPanels INT,
  NumberOfPoles INT,
  MaximumNumberOfPoleBreakers INT,
  CircuitName NVARCHAR(200),
  CircuitNumber NVARCHAR(50),
  CircuitLoadName NVARCHAR(200),
  DedicatedCircuit BIT,
  WireType NVARCHAR(50),
  WireSize DECIMAL(19, 6),
  NumberOfRuns INT,
  NumberOfHotConductors INT,
  NumberOfNeutralConductors INT,
  EstimatedDemand DECIMAL(19, 6),
  ConnectedDemand DECIMAL(19, 6),
  HVACEstimatedDemand DECIMAL(19, 6),
  HVACConnectedDemand DECIMAL(19, 6),
  LightingEstimatedDemand DECIMAL(19, 6),
  LightingConnectedDemand DECIMAL(19, 6),
  PowerEstimatedDemand DECIMAL(19, 6),
  PowerConnectedDemand DECIMAL(19, 6),
  OtherEstimatedDemand DECIMAL(19, 6),
  OtherConnectedDemand DECIMAL(19, 6)
  PRIMARY KEY (ElectricalSystemId)
);

CREATE TABLE ElectricalVehicleChargingStation (
  ElectricalVehicleChargingStationId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  ChargingLevel INT
  PRIMARY KEY (ElectricalVehicleChargingStationId)
);

CREATE TABLE ElectronicSafetyAndSecuritySystem (
  ElectronicSafetyAndSecuritySystemId NVARCHAR(50) NOT NULL,
  SystemId NVARCHAR(50) NOT NULL,
  AlarmType NVARCHAR(50),
  StatusCode NVARCHAR(50),
  SystemStatus NVARCHAR(50),
  BackupBatteryCapacity BIT,
  DisplayType NVARCHAR(50),
  FailSafeCapability BIT
  PRIMARY KEY (ElectronicSafetyAndSecuritySystemId)
);

CREATE TABLE Elevator (
  ElevatorId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  PersonCapacity INT,
  WeightCapacity DECIMAL(19, 6),
  MaxTravelSpeed DECIMAL(19, 6),
  MaxTravelDistance DECIMAL(19, 6),
  MaxLandings DECIMAL(19, 6),
  FireServiceAccessElevator BIT,
  EmergencyCommunicationTwoWayVoice BIT,
  EmergencyCommunicationTwoWayMessageDisplay BIT,
  EmergencyCommunicationOneWayVideo BIT
  PRIMARY KEY (ElevatorId)
);

CREATE TABLE ElevatorMachine (
  ElevatorMachineId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  WeightCapacity DECIMAL(19, 6),
  MotorPower DECIMAL(19, 6)
  PRIMARY KEY (ElevatorMachineId)
);

CREATE TABLE Escalator (
  EscalatorId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  StepWidth DECIMAL(19, 6),
  MaxVerticalRise DECIMAL(19, 6),
  MaxTravelSpeed DECIMAL(19, 6),
  Inclination NVARCHAR(50)
  PRIMARY KEY (EscalatorId)
);

CREATE TABLE EthernetSwitchPort (
  EthernetSwitchPortId NVARCHAR(50) NOT NULL,
  DataNetworkEquipmentId NVARCHAR(50) NOT NULL,
  MountedInRack BIT,
  RackPosition NVARCHAR(50),
  PortType NVARCHAR(50),
  PortSpeed DECIMAL(19, 6)
  PRIMARY KEY (EthernetSwitchPortId)
);

CREATE TABLE FanCoilUnit (
  FanCoilUnitId NVARCHAR(50) NOT NULL,
  TerminalUnitId NVARCHAR(50) NOT NULL,
  MinAirflowRating DECIMAL(19, 6),
  MaxAirflowRating DECIMAL(19, 6),
  DuctInletShape DECIMAL(19, 6),
  DuctInletSize DECIMAL(19, 6),
  DuctInletConfiguration NVARCHAR(200),
  DuctInletName NVARCHAR(200),
  DuctInletCommissionDate DATETIME2,
  DuctInletExpectedEndOfLife DATETIME2,
  DuctInletExpectedReplacementCost DECIMAL(28, 4),
  DuctInletInitialCost DECIMAL(28, 4),
  DuctInletCurrency NVARCHAR(50) CHECK (DuctInletCurrency IN ('AFN', 'ALL', 'DZD', 'USD', 'EUR', 'AOA', 'XCD', 'ARS', 'AMD', 'AWG', 'AUD', 'AZN', 'BSD', 'BHD', 'BDT', 'BBD', 'BYN', 'BZD', 'XOF', 'BMD', 'BTN', 'INR', 'BOB', 'BOV', 'BAM', 'BWP', 'NOK', 'BRL', 'BND', 'BGN', 'BIF', 'CVE', 'KHR', 'XAF', 'CAD', 'KYD', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'KMF', 'CDF', 'NZD', 'CRC', 'HRK', 'CUC', 'CUP', 'ANG', 'CZK', 'DKK', 'DJF', 'DOP', 'EGP', 'SVC', 'ERN', 'ETB', 'FKP', 'FJD', 'XPF', 'GMD', 'GEL', 'GHS', 'GIP', 'GTQ', 'GBP', 'GNF', 'GYD', 'HTG', 'HNL', 'HKD', 'HUF', 'ISK', 'IDR', 'XDR', 'IRR', 'IQD', 'ILS', 'JMD', 'JPY', 'JOD', 'KZT', 'KES', 'KPW', 'KRW', 'KWD', 'KGS', 'LAK', 'LBP', 'LSL', 'ZAR', 'LRD', 'LYD', 'CHF', 'MOP', 'MGA', 'MWK', 'MYR', 'MVR', 'MRU', 'MUR', 'XUA', 'MXN', 'MXV', 'MDL', 'MNT', 'MAD', 'MZN', 'MMK', 'NAD', 'NPR', 'NIO', 'NGN', 'OMR', 'PKR', 'PAB', 'PGK', 'PYG', 'PEN', 'PHP', 'PLN', 'QAR', 'MKD', 'RON', 'RUB', 'RWF', 'SHP', 'WST', 'STN', 'SAR', 'RSD', 'SCR', 'SLL', 'SGD', 'XSU', 'SBD', 'SOS', 'SSP', 'LKR', 'SDG', 'SRD', 'SZL', 'SEK', 'CHE', 'CHW', 'SYP', 'TWD', 'TJS', 'TZS', 'THB', 'TOP', 'TTD', 'TND', 'TRY', 'TMT', 'UGX', 'UAH', 'AED', 'USN', 'UYI', 'UYU', 'UZS', 'VUV', 'VEF', 'VED', 'VND', 'YER', 'ZMW', 'ZWL')),
  DuctInletInstallationDate DATETIME2,
  DuctInletMaintenanceInterval NVARCHAR(50),
  DuctInletTurnoverDate DATETIME2,
  DuctInletModel NVARCHAR(200),
  DuctInletTagNumber NVARCHAR(50),
  DuctInletSerialNumber NVARCHAR(50),
  Type NVARCHAR(50),
  RefrigerantType NVARCHAR(50),
  NominalCoolingCapacity DECIMAL(19, 6),
  NetSensibleCoolingCapacity DECIMAL(19, 6),
  FilterType NVARCHAR(50),
  PrimaryCoolingMethodType NVARCHAR(50),
  PrimaryCoolingMethodRefrigerantType NVARCHAR(50),
  PrimaryCoolingOutsideDiameter DECIMAL(19, 6),
  PrimaryCoolingName NVARCHAR(200),
  PrimaryCoolingCommissionDate DATETIME2,
  PrimaryCoolingExpectedEndOfLife DATETIME2,
  PrimaryCoolingDurationLifeYear INT,
  PrimaryCoolingExpectedReplacementCost DECIMAL(28, 4),
  PrimaryCoolingInitialCost DECIMAL(28, 4),
  PrimaryCoolingInstallationDate DATETIME2,
  PrimaryCoolingMaintenanceInterval NVARCHAR(50),
  PrimaryCoolingTurnoverDate DATETIME2,
  PrimaryCoolingModelNumber NVARCHAR(50),
  PrimaryCoolingTagNumber NVARCHAR(50),
  PrimaryCoolingSerialNumber NVARCHAR(50),
  SecondaryCoolingMethodType NVARCHAR(50),
  SecondaryCoolingMethodRefrigerantType NVARCHAR(50),
  SecondaryCoolingOutsideDiameter DECIMAL(19, 6),
  SecondaryCoolingName NVARCHAR(200),
  SecondaryCoolingCommissionDate DATETIME2,
  SecondaryCoolingExpectedEndOfLife DATETIME2,
  SecondaryCoolingDurationLifeYear INT,
  SecondaryCoolingExpectedReplacementCost DECIMAL(28, 4),
  SecondaryCoolingInitialCost DECIMAL(28, 4),
  SecondaryCoolingInstallationDate DATETIME2,
  SecondaryCoolingMaintenanceInterval NVARCHAR(50),
  SecondaryCoolingTurnoverDate DATETIME2,
  SecondaryCoolingModelNumber NVARCHAR(50),
  SecondaryCoolingTagNumber NVARCHAR(50),
  SecondaryCoolingSerialNumber NVARCHAR(50),
  FanNominalAirflow DECIMAL(19, 6),
  FanMotorPower DECIMAL(19, 6),
  FanMinAirflowRating DECIMAL(19, 6),
  FanMaxAirflowRating DECIMAL(19, 6),
  FanDriveType NVARCHAR(50),
  FanName NVARCHAR(200),
  FanCommissionDate DATETIME2,
  FanExpectedEndOfLife DATETIME2,
  FanDurationLifeYear INT,
  FanExpectedReplacementCost DECIMAL(28, 4),
  FanInitialCost DECIMAL(28, 4),
  Currency NVARCHAR(50) CHECK (Currency IN ('AFN', 'ALL', 'DZD', 'USD', 'EUR', 'AOA', 'XCD', 'ARS', 'AMD', 'AWG', 'AUD', 'AZN', 'BSD', 'BHD', 'BDT', 'BBD', 'BYN', 'BZD', 'XOF', 'BMD', 'BTN', 'INR', 'BOB', 'BOV', 'BAM', 'BWP', 'NOK', 'BRL', 'BND', 'BGN', 'BIF', 'CVE', 'KHR', 'XAF', 'CAD', 'KYD', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'KMF', 'CDF', 'NZD', 'CRC', 'HRK', 'CUC', 'CUP', 'ANG', 'CZK', 'DKK', 'DJF', 'DOP', 'EGP', 'SVC', 'ERN', 'ETB', 'FKP', 'FJD', 'XPF', 'GMD', 'GEL', 'GHS', 'GIP', 'GTQ', 'GBP', 'GNF', 'GYD', 'HTG', 'HNL', 'HKD', 'HUF', 'ISK', 'IDR', 'XDR', 'IRR', 'IQD', 'ILS', 'JMD', 'JPY', 'JOD', 'KZT', 'KES', 'KPW', 'KRW', 'KWD', 'KGS', 'LAK', 'LBP', 'LSL', 'ZAR', 'LRD', 'LYD', 'CHF', 'MOP', 'MGA', 'MWK', 'MYR', 'MVR', 'MRU', 'MUR', 'XUA', 'MXN', 'MXV', 'MDL', 'MNT', 'MAD', 'MZN', 'MMK', 'NAD', 'NPR', 'NIO', 'NGN', 'OMR', 'PKR', 'PAB', 'PGK', 'PYG', 'PEN', 'PHP', 'PLN', 'QAR', 'MKD', 'RON', 'RUB', 'RWF', 'SHP', 'WST', 'STN', 'SAR', 'RSD', 'SCR', 'SLL', 'SGD', 'XSU', 'SBD', 'SOS', 'SSP', 'LKR', 'SDG', 'SRD', 'SZL', 'SEK', 'CHE', 'CHW', 'SYP', 'TWD', 'TJS', 'TZS', 'THB', 'TOP', 'TTD', 'TND', 'TRY', 'TMT', 'UGX', 'UAH', 'AED', 'USN', 'UYI', 'UYU', 'UZS', 'VUV', 'VEF', 'VED', 'VND', 'YER', 'ZMW', 'ZWL')),
  FanInstallationDate DATETIME2,
  FanMaintenanceInterval NVARCHAR(50),
  FanTurnoverDate DATETIME2,
  FanModelNumber NVARCHAR(50),
  FanTagNumber NVARCHAR(50),
  FanSerialNumber NVARCHAR(50)
  PRIMARY KEY (FanCoilUnitId)
);

CREATE TABLE FanCoilUnitReheat (
  FanCoilUnitReheatId NVARCHAR(50) NOT NULL,
  FanCoilUnitId NVARCHAR(50) NOT NULL,
  NominalHeatingCapacity DECIMAL(19, 6),
  MinAirflowRating DECIMAL(19, 6),
  MaxAirflowRating DECIMAL(19, 6),
  Configuration NVARCHAR(200),
  DuctInletShape DECIMAL(19, 6),
  DuctInletSize DECIMAL(19, 6),
  DuctInletConfiguration NVARCHAR(200),
  DuctInletName NVARCHAR(200),
  DuctInletCommissionDate DATETIME2,
  DuctInletExpectedEndOfLife DATETIME2,
  DuctInletExpectedReplacementCost DECIMAL(28, 4),
  DuctInletInitialCost DECIMAL(28, 4),
  DuctInletCurrency NVARCHAR(50) CHECK (DuctInletCurrency IN ('AFN', 'ALL', 'DZD', 'USD', 'EUR', 'AOA', 'XCD', 'ARS', 'AMD', 'AWG', 'AUD', 'AZN', 'BSD', 'BHD', 'BDT', 'BBD', 'BYN', 'BZD', 'XOF', 'BMD', 'BTN', 'INR', 'BOB', 'BOV', 'BAM', 'BWP', 'NOK', 'BRL', 'BND', 'BGN', 'BIF', 'CVE', 'KHR', 'XAF', 'CAD', 'KYD', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'KMF', 'CDF', 'NZD', 'CRC', 'HRK', 'CUC', 'CUP', 'ANG', 'CZK', 'DKK', 'DJF', 'DOP', 'EGP', 'SVC', 'ERN', 'ETB', 'FKP', 'FJD', 'XPF', 'GMD', 'GEL', 'GHS', 'GIP', 'GTQ', 'GBP', 'GNF', 'GYD', 'HTG', 'HNL', 'HKD', 'HUF', 'ISK', 'IDR', 'XDR', 'IRR', 'IQD', 'ILS', 'JMD', 'JPY', 'JOD', 'KZT', 'KES', 'KPW', 'KRW', 'KWD', 'KGS', 'LAK', 'LBP', 'LSL', 'ZAR', 'LRD', 'LYD', 'CHF', 'MOP', 'MGA', 'MWK', 'MYR', 'MVR', 'MRU', 'MUR', 'XUA', 'MXN', 'MXV', 'MDL', 'MNT', 'MAD', 'MZN', 'MMK', 'NAD', 'NPR', 'NIO', 'NGN', 'OMR', 'PKR', 'PAB', 'PGK', 'PYG', 'PEN', 'PHP', 'PLN', 'QAR', 'MKD', 'RON', 'RUB', 'RWF', 'SHP', 'WST', 'STN', 'SAR', 'RSD', 'SCR', 'SLL', 'SGD', 'XSU', 'SBD', 'SOS', 'SSP', 'LKR', 'SDG', 'SRD', 'SZL', 'SEK', 'CHE', 'CHW', 'SYP', 'TWD', 'TJS', 'TZS', 'THB', 'TOP', 'TTD', 'TND', 'TRY', 'TMT', 'UGX', 'UAH', 'AED', 'USN', 'UYI', 'UYU', 'UZS', 'VUV', 'VEF', 'VED', 'VND', 'YER', 'ZMW', 'ZWL')),
  DuctInletInstallationDate DATETIME2,
  DuctInletMaintenanceInterval NVARCHAR(50),
  DuctInletTurnoverDate DATETIME2,
  DuctInletModel NVARCHAR(200),
  DuctInletTagNumber NVARCHAR(50),
  DuctInletSerialNumber NVARCHAR(50),
  FanNominalAirflow DECIMAL(19, 6),
  FanMotorPower DECIMAL(19, 6),
  FanMinAirflowRating DECIMAL(19, 6),
  FanMaxAirflowRating DECIMAL(19, 6),
  FanDriveType NVARCHAR(50),
  FanName NVARCHAR(200),
  FanCommissionDate DATETIME2,
  FanExpectedEndOfLife DATETIME2,
  FanDurationLifeYear INT,
  FanExpectedReplacementCost DECIMAL(28, 4),
  FanInitialCost DECIMAL(28, 4),
  Currency NVARCHAR(50) CHECK (Currency IN ('AFN', 'ALL', 'DZD', 'USD', 'EUR', 'AOA', 'XCD', 'ARS', 'AMD', 'AWG', 'AUD', 'AZN', 'BSD', 'BHD', 'BDT', 'BBD', 'BYN', 'BZD', 'XOF', 'BMD', 'BTN', 'INR', 'BOB', 'BOV', 'BAM', 'BWP', 'NOK', 'BRL', 'BND', 'BGN', 'BIF', 'CVE', 'KHR', 'XAF', 'CAD', 'KYD', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'KMF', 'CDF', 'NZD', 'CRC', 'HRK', 'CUC', 'CUP', 'ANG', 'CZK', 'DKK', 'DJF', 'DOP', 'EGP', 'SVC', 'ERN', 'ETB', 'FKP', 'FJD', 'XPF', 'GMD', 'GEL', 'GHS', 'GIP', 'GTQ', 'GBP', 'GNF', 'GYD', 'HTG', 'HNL', 'HKD', 'HUF', 'ISK', 'IDR', 'XDR', 'IRR', 'IQD', 'ILS', 'JMD', 'JPY', 'JOD', 'KZT', 'KES', 'KPW', 'KRW', 'KWD', 'KGS', 'LAK', 'LBP', 'LSL', 'ZAR', 'LRD', 'LYD', 'CHF', 'MOP', 'MGA', 'MWK', 'MYR', 'MVR', 'MRU', 'MUR', 'XUA', 'MXN', 'MXV', 'MDL', 'MNT', 'MAD', 'MZN', 'MMK', 'NAD', 'NPR', 'NIO', 'NGN', 'OMR', 'PKR', 'PAB', 'PGK', 'PYG', 'PEN', 'PHP', 'PLN', 'QAR', 'MKD', 'RON', 'RUB', 'RWF', 'SHP', 'WST', 'STN', 'SAR', 'RSD', 'SCR', 'SLL', 'SGD', 'XSU', 'SBD', 'SOS', 'SSP', 'LKR', 'SDG', 'SRD', 'SZL', 'SEK', 'CHE', 'CHW', 'SYP', 'TWD', 'TJS', 'TZS', 'THB', 'TOP', 'TTD', 'TND', 'TRY', 'TMT', 'UGX', 'UAH', 'AED', 'USN', 'UYI', 'UYU', 'UZS', 'VUV', 'VEF', 'VED', 'VND', 'YER', 'ZMW', 'ZWL')),
  FanInstallationDate DATETIME2,
  FanMaintenanceInterval NVARCHAR(50),
  FanTurnoverDate DATETIME2,
  FanModelNumber NVARCHAR(50),
  FanTagNumber NVARCHAR(50),
  FanSerialNumber NVARCHAR(50),
  ReHeatingType NVARCHAR(50),
  ReHeatingOutsideDiameter DECIMAL(19, 6),
  ReHeatingName NVARCHAR(200),
  ReHeatingCommissionDate DATETIME2,
  ReHeatingExpectedEndOfLife DATETIME2,
  ReHeatingDurationLifeYear INT,
  ReHeatingExpectedReplacementCost DECIMAL(28, 4),
  ReHeatingInitialCost DECIMAL(28, 4),
  ReHeatingInstallationDate DATETIME2,
  ReHeatingMaintenanceInterval NVARCHAR(50),
  ReHeatingTurnoverDate DATETIME2,
  ReHeatingModelNumber NVARCHAR(50),
  ReHeatingTagNumber NVARCHAR(50),
  ReHeatingSerialNumber NVARCHAR(50),
  Type NVARCHAR(50),
  RefrigerantType NVARCHAR(50),
  NominalCoolingCapacity DECIMAL(19, 6),
  NetSensibleCoolingCapacity DECIMAL(19, 6),
  FilterType NVARCHAR(50),
  PrimaryCoolingMethodType NVARCHAR(50),
  PrimaryCoolingRefrigerantType NVARCHAR(50),
  PrimaryCoolingOutsideDiameter DECIMAL(19, 6),
  PrimaryCoolingName NVARCHAR(200),
  PrimaryCoolingCommissionDate DATETIME2,
  PrimaryCoolingExpectedEndOfLife DATETIME2,
  PrimaryCoolingDurationLifeYear INT,
  PrimaryCoolingExpectedReplacementCost DECIMAL(28, 4),
  PrimaryCoolingInitialCost DECIMAL(28, 4),
  PrimaryCoolingInstallationDate DATETIME2,
  PrimaryCoolingMaintenanceInterval NVARCHAR(50),
  PrimaryCoolingTurnoverDate DATETIME2,
  PrimaryCoolingModelNumber NVARCHAR(50),
  PrimaryCoolingTagNumber NVARCHAR(50),
  PrimaryCoolingSerialNumber NVARCHAR(50),
  SecondaryCoolingMethodType NVARCHAR(50),
  SecondaryCoolingMethodRefrigerantType NVARCHAR(50),
  SecondaryCoolingOutsideDiameter DECIMAL(19, 6),
  SecondaryCoolingName NVARCHAR(200),
  SecondaryCoolingCommissionDate DATETIME2,
  SecondaryCoolingExpectedEndOfLife DATETIME2,
  SecondaryCoolingDurationLifeYear INT,
  SecondaryCoolingExpectedReplacementCost DECIMAL(28, 4),
  SecondaryCoolingInitialCost DECIMAL(28, 4),
  SecondaryCoolingInstallationDate DATETIME2,
  SecondaryCoolingMaintenanceInterval NVARCHAR(50),
  SecondaryCoolingTurnoverDate DATETIME2,
  SecondaryCoolingModelNumber NVARCHAR(50),
  SecondaryCoolingTagNumber NVARCHAR(50),
  SecondaryCoolingSerialNumber NVARCHAR(50)
  PRIMARY KEY (FanCoilUnitReheatId)
);

CREATE TABLE FanPoweredBox (
  FanPoweredBoxId NVARCHAR(50) NOT NULL,
  TerminalUnitId NVARCHAR(50) NOT NULL,
  MinAirflowRating DECIMAL(19, 6),
  MaxAirflowRating DECIMAL(19, 6),
  Configuration NVARCHAR(200),
  DuctInletShape DECIMAL(19, 6),
  DuctInletSize DECIMAL(19, 6),
  DuctInletConfiguration NVARCHAR(200),
  DuctInletName NVARCHAR(200),
  DuctInletCommissionDate DATETIME2,
  DuctInletExpectedEndOfLife DATETIME2,
  DuctInletExpectedReplacementCost DECIMAL(28, 4),
  DuctInletInitialCost DECIMAL(28, 4),
  DuctInletCurrency NVARCHAR(50) CHECK (DuctInletCurrency IN ('AFN', 'ALL', 'DZD', 'USD', 'EUR', 'AOA', 'XCD', 'ARS', 'AMD', 'AWG', 'AUD', 'AZN', 'BSD', 'BHD', 'BDT', 'BBD', 'BYN', 'BZD', 'XOF', 'BMD', 'BTN', 'INR', 'BOB', 'BOV', 'BAM', 'BWP', 'NOK', 'BRL', 'BND', 'BGN', 'BIF', 'CVE', 'KHR', 'XAF', 'CAD', 'KYD', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'KMF', 'CDF', 'NZD', 'CRC', 'HRK', 'CUC', 'CUP', 'ANG', 'CZK', 'DKK', 'DJF', 'DOP', 'EGP', 'SVC', 'ERN', 'ETB', 'FKP', 'FJD', 'XPF', 'GMD', 'GEL', 'GHS', 'GIP', 'GTQ', 'GBP', 'GNF', 'GYD', 'HTG', 'HNL', 'HKD', 'HUF', 'ISK', 'IDR', 'XDR', 'IRR', 'IQD', 'ILS', 'JMD', 'JPY', 'JOD', 'KZT', 'KES', 'KPW', 'KRW', 'KWD', 'KGS', 'LAK', 'LBP', 'LSL', 'ZAR', 'LRD', 'LYD', 'CHF', 'MOP', 'MGA', 'MWK', 'MYR', 'MVR', 'MRU', 'MUR', 'XUA', 'MXN', 'MXV', 'MDL', 'MNT', 'MAD', 'MZN', 'MMK', 'NAD', 'NPR', 'NIO', 'NGN', 'OMR', 'PKR', 'PAB', 'PGK', 'PYG', 'PEN', 'PHP', 'PLN', 'QAR', 'MKD', 'RON', 'RUB', 'RWF', 'SHP', 'WST', 'STN', 'SAR', 'RSD', 'SCR', 'SLL', 'SGD', 'XSU', 'SBD', 'SOS', 'SSP', 'LKR', 'SDG', 'SRD', 'SZL', 'SEK', 'CHE', 'CHW', 'SYP', 'TWD', 'TJS', 'TZS', 'THB', 'TOP', 'TTD', 'TND', 'TRY', 'TMT', 'UGX', 'UAH', 'AED', 'USN', 'UYI', 'UYU', 'UZS', 'VUV', 'VEF', 'VED', 'VND', 'YER', 'ZMW', 'ZWL')),
  DuctInletInstallationDate DATETIME2,
  DuctInletMaintenanceInterval NVARCHAR(50),
  DuctInletTurnoverDate DATETIME2,
  DuctInletModel NVARCHAR(200),
  DuctInletTagNumber NVARCHAR(50),
  DuctInletSerialNumber NVARCHAR(50),
  FanNominalAirflow DECIMAL(19, 6),
  FanMotorPower DECIMAL(19, 6),
  FanMinAirflowRating DECIMAL(19, 6),
  FanMaxAirflowRating DECIMAL(19, 6),
  FanDriveType NVARCHAR(50),
  FanName NVARCHAR(200),
  FanCommissionDate DATETIME2,
  FanExpectedEndOfLife DATETIME2,
  FanDurationLifeYear INT,
  FanExpectedReplacementCost DECIMAL(28, 4),
  FanInitialCost DECIMAL(28, 4),
  Currency NVARCHAR(50) CHECK (Currency IN ('AFN', 'ALL', 'DZD', 'USD', 'EUR', 'AOA', 'XCD', 'ARS', 'AMD', 'AWG', 'AUD', 'AZN', 'BSD', 'BHD', 'BDT', 'BBD', 'BYN', 'BZD', 'XOF', 'BMD', 'BTN', 'INR', 'BOB', 'BOV', 'BAM', 'BWP', 'NOK', 'BRL', 'BND', 'BGN', 'BIF', 'CVE', 'KHR', 'XAF', 'CAD', 'KYD', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'KMF', 'CDF', 'NZD', 'CRC', 'HRK', 'CUC', 'CUP', 'ANG', 'CZK', 'DKK', 'DJF', 'DOP', 'EGP', 'SVC', 'ERN', 'ETB', 'FKP', 'FJD', 'XPF', 'GMD', 'GEL', 'GHS', 'GIP', 'GTQ', 'GBP', 'GNF', 'GYD', 'HTG', 'HNL', 'HKD', 'HUF', 'ISK', 'IDR', 'XDR', 'IRR', 'IQD', 'ILS', 'JMD', 'JPY', 'JOD', 'KZT', 'KES', 'KPW', 'KRW', 'KWD', 'KGS', 'LAK', 'LBP', 'LSL', 'ZAR', 'LRD', 'LYD', 'CHF', 'MOP', 'MGA', 'MWK', 'MYR', 'MVR', 'MRU', 'MUR', 'XUA', 'MXN', 'MXV', 'MDL', 'MNT', 'MAD', 'MZN', 'MMK', 'NAD', 'NPR', 'NIO', 'NGN', 'OMR', 'PKR', 'PAB', 'PGK', 'PYG', 'PEN', 'PHP', 'PLN', 'QAR', 'MKD', 'RON', 'RUB', 'RWF', 'SHP', 'WST', 'STN', 'SAR', 'RSD', 'SCR', 'SLL', 'SGD', 'XSU', 'SBD', 'SOS', 'SSP', 'LKR', 'SDG', 'SRD', 'SZL', 'SEK', 'CHE', 'CHW', 'SYP', 'TWD', 'TJS', 'TZS', 'THB', 'TOP', 'TTD', 'TND', 'TRY', 'TMT', 'UGX', 'UAH', 'AED', 'USN', 'UYI', 'UYU', 'UZS', 'VUV', 'VEF', 'VED', 'VND', 'YER', 'ZMW', 'ZWL')),
  FanInstallationDate DATETIME2,
  FanMaintenanceInterval NVARCHAR(50),
  FanTurnoverDate DATETIME2,
  FanModelNumber NVARCHAR(50),
  FanTagNumber NVARCHAR(50),
  FanSerialNumber NVARCHAR(50)
  PRIMARY KEY (FanPoweredBoxId)
);

CREATE TABLE FanPoweredBoxReheat (
  FanPoweredBoxReheatId NVARCHAR(50) NOT NULL,
  TerminalUnitId NVARCHAR(50) NOT NULL,
  NominalHeatingCapacity DECIMAL(19, 6),
  MinAirflowRating DECIMAL(19, 6),
  MaxAirflowRating DECIMAL(19, 6),
  Configuration NVARCHAR(200),
  DuctInletShape DECIMAL(19, 6),
  DuctInletSize DECIMAL(19, 6),
  DuctInletConfiguration NVARCHAR(200),
  DuctInletName NVARCHAR(200),
  DuctInletCommissionDate DATETIME2,
  DuctInletExpectedEndOfLife DATETIME2,
  DuctInletExpectedReplacementCost DECIMAL(28, 4),
  DuctInletInitialCost DECIMAL(28, 4),
  DuctInletCurrency NVARCHAR(50) CHECK (DuctInletCurrency IN ('AFN', 'ALL', 'DZD', 'USD', 'EUR', 'AOA', 'XCD', 'ARS', 'AMD', 'AWG', 'AUD', 'AZN', 'BSD', 'BHD', 'BDT', 'BBD', 'BYN', 'BZD', 'XOF', 'BMD', 'BTN', 'INR', 'BOB', 'BOV', 'BAM', 'BWP', 'NOK', 'BRL', 'BND', 'BGN', 'BIF', 'CVE', 'KHR', 'XAF', 'CAD', 'KYD', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'KMF', 'CDF', 'NZD', 'CRC', 'HRK', 'CUC', 'CUP', 'ANG', 'CZK', 'DKK', 'DJF', 'DOP', 'EGP', 'SVC', 'ERN', 'ETB', 'FKP', 'FJD', 'XPF', 'GMD', 'GEL', 'GHS', 'GIP', 'GTQ', 'GBP', 'GNF', 'GYD', 'HTG', 'HNL', 'HKD', 'HUF', 'ISK', 'IDR', 'XDR', 'IRR', 'IQD', 'ILS', 'JMD', 'JPY', 'JOD', 'KZT', 'KES', 'KPW', 'KRW', 'KWD', 'KGS', 'LAK', 'LBP', 'LSL', 'ZAR', 'LRD', 'LYD', 'CHF', 'MOP', 'MGA', 'MWK', 'MYR', 'MVR', 'MRU', 'MUR', 'XUA', 'MXN', 'MXV', 'MDL', 'MNT', 'MAD', 'MZN', 'MMK', 'NAD', 'NPR', 'NIO', 'NGN', 'OMR', 'PKR', 'PAB', 'PGK', 'PYG', 'PEN', 'PHP', 'PLN', 'QAR', 'MKD', 'RON', 'RUB', 'RWF', 'SHP', 'WST', 'STN', 'SAR', 'RSD', 'SCR', 'SLL', 'SGD', 'XSU', 'SBD', 'SOS', 'SSP', 'LKR', 'SDG', 'SRD', 'SZL', 'SEK', 'CHE', 'CHW', 'SYP', 'TWD', 'TJS', 'TZS', 'THB', 'TOP', 'TTD', 'TND', 'TRY', 'TMT', 'UGX', 'UAH', 'AED', 'USN', 'UYI', 'UYU', 'UZS', 'VUV', 'VEF', 'VED', 'VND', 'YER', 'ZMW', 'ZWL')),
  DuctInletInstallationDate DATETIME2,
  DuctInletMaintenanceInterval NVARCHAR(50),
  DuctInletTurnoverDate DATETIME2,
  DuctInletModel NVARCHAR(200),
  DuctInletTagNumber NVARCHAR(50),
  DuctInletSerialNumber NVARCHAR(50),
  FanNominalAirflow DECIMAL(19, 6),
  FanMotorPower DECIMAL(19, 6),
  FanMinAirflowRating DECIMAL(19, 6),
  FanMaxAirflowRating DECIMAL(19, 6),
  FanDriveType NVARCHAR(50),
  FanName NVARCHAR(200),
  FanCommissionDate DATETIME2,
  FanExpectedEndOfLife DATETIME2,
  FanDurationLifeYear INT,
  FanExpectedReplacementCost DECIMAL(28, 4),
  FanInitialCost DECIMAL(28, 4),
  Currency NVARCHAR(50) CHECK (Currency IN ('AFN', 'ALL', 'DZD', 'USD', 'EUR', 'AOA', 'XCD', 'ARS', 'AMD', 'AWG', 'AUD', 'AZN', 'BSD', 'BHD', 'BDT', 'BBD', 'BYN', 'BZD', 'XOF', 'BMD', 'BTN', 'INR', 'BOB', 'BOV', 'BAM', 'BWP', 'NOK', 'BRL', 'BND', 'BGN', 'BIF', 'CVE', 'KHR', 'XAF', 'CAD', 'KYD', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'KMF', 'CDF', 'NZD', 'CRC', 'HRK', 'CUC', 'CUP', 'ANG', 'CZK', 'DKK', 'DJF', 'DOP', 'EGP', 'SVC', 'ERN', 'ETB', 'FKP', 'FJD', 'XPF', 'GMD', 'GEL', 'GHS', 'GIP', 'GTQ', 'GBP', 'GNF', 'GYD', 'HTG', 'HNL', 'HKD', 'HUF', 'ISK', 'IDR', 'XDR', 'IRR', 'IQD', 'ILS', 'JMD', 'JPY', 'JOD', 'KZT', 'KES', 'KPW', 'KRW', 'KWD', 'KGS', 'LAK', 'LBP', 'LSL', 'ZAR', 'LRD', 'LYD', 'CHF', 'MOP', 'MGA', 'MWK', 'MYR', 'MVR', 'MRU', 'MUR', 'XUA', 'MXN', 'MXV', 'MDL', 'MNT', 'MAD', 'MZN', 'MMK', 'NAD', 'NPR', 'NIO', 'NGN', 'OMR', 'PKR', 'PAB', 'PGK', 'PYG', 'PEN', 'PHP', 'PLN', 'QAR', 'MKD', 'RON', 'RUB', 'RWF', 'SHP', 'WST', 'STN', 'SAR', 'RSD', 'SCR', 'SLL', 'SGD', 'XSU', 'SBD', 'SOS', 'SSP', 'LKR', 'SDG', 'SRD', 'SZL', 'SEK', 'CHE', 'CHW', 'SYP', 'TWD', 'TJS', 'TZS', 'THB', 'TOP', 'TTD', 'TND', 'TRY', 'TMT', 'UGX', 'UAH', 'AED', 'USN', 'UYI', 'UYU', 'UZS', 'VUV', 'VEF', 'VED', 'VND', 'YER', 'ZMW', 'ZWL')),
  FanInstallationDate DATETIME2,
  FanMaintenanceInterval NVARCHAR(50),
  FanTurnoverDate DATETIME2,
  FanModelNumber NVARCHAR(50),
  FanTagNumber NVARCHAR(50),
  FanSerialNumber NVARCHAR(50),
  ReHeatingType NVARCHAR(50),
  ReHeatingOutsideDiameter DECIMAL(19, 6),
  ReHeatingName NVARCHAR(200),
  ReHeatingCommissionDate DATETIME2,
  ReHeatingExpectedEndOfLife DATETIME2,
  ReHeatingDurationLifeYear INT,
  ReHeatingExpectedReplacementCost DECIMAL(28, 4),
  ReHeatingInitialCost DECIMAL(28, 4),
  ReHeatingInstallationDate DATETIME2,
  ReHeatingMaintenanceInterval NVARCHAR(50),
  ReHeatingTurnoverDate DATETIME2,
  ReHeatingModelNumber NVARCHAR(50),
  ReHeatingTagNumber NVARCHAR(50),
  ReHeatingSerialNumber NVARCHAR(50)
  PRIMARY KEY (FanPoweredBoxReheatId)
);

CREATE TABLE Faucet (
  FaucetId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  MaxFlowRate DECIMAL(19, 6),
  NumberOfHandles INT,
  MountedOn BIT
  PRIMARY KEY (FaucetId)
);

CREATE TABLE FireDamper (
  FireDamperId NVARCHAR(50) NOT NULL,
  DamperId NVARCHAR(50) NOT NULL,
  LeakageClass NVARCHAR(200),
  BladeType NVARCHAR(50),
  FireRating NVARCHAR(50),
  DuctInletSize DECIMAL(19, 6),
  DuctInletShape DECIMAL(19, 6),
  DuctInletConfiguration NVARCHAR(200),
  DuctInletName NVARCHAR(200),
  DuctInletCommissionDate DATETIME2,
  DuctInletExpectedEndOfLife DATETIME2,
  DuctInletExpectedReplacementCost DECIMAL(28, 4),
  DuctInletInitialCost DECIMAL(28, 4),
  DuctInletCurrency NVARCHAR(50) CHECK (DuctInletCurrency IN ('AFN', 'ALL', 'DZD', 'USD', 'EUR', 'AOA', 'XCD', 'ARS', 'AMD', 'AWG', 'AUD', 'AZN', 'BSD', 'BHD', 'BDT', 'BBD', 'BYN', 'BZD', 'XOF', 'BMD', 'BTN', 'INR', 'BOB', 'BOV', 'BAM', 'BWP', 'NOK', 'BRL', 'BND', 'BGN', 'BIF', 'CVE', 'KHR', 'XAF', 'CAD', 'KYD', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'KMF', 'CDF', 'NZD', 'CRC', 'HRK', 'CUC', 'CUP', 'ANG', 'CZK', 'DKK', 'DJF', 'DOP', 'EGP', 'SVC', 'ERN', 'ETB', 'FKP', 'FJD', 'XPF', 'GMD', 'GEL', 'GHS', 'GIP', 'GTQ', 'GBP', 'GNF', 'GYD', 'HTG', 'HNL', 'HKD', 'HUF', 'ISK', 'IDR', 'XDR', 'IRR', 'IQD', 'ILS', 'JMD', 'JPY', 'JOD', 'KZT', 'KES', 'KPW', 'KRW', 'KWD', 'KGS', 'LAK', 'LBP', 'LSL', 'ZAR', 'LRD', 'LYD', 'CHF', 'MOP', 'MGA', 'MWK', 'MYR', 'MVR', 'MRU', 'MUR', 'XUA', 'MXN', 'MXV', 'MDL', 'MNT', 'MAD', 'MZN', 'MMK', 'NAD', 'NPR', 'NIO', 'NGN', 'OMR', 'PKR', 'PAB', 'PGK', 'PYG', 'PEN', 'PHP', 'PLN', 'QAR', 'MKD', 'RON', 'RUB', 'RWF', 'SHP', 'WST', 'STN', 'SAR', 'RSD', 'SCR', 'SLL', 'SGD', 'XSU', 'SBD', 'SOS', 'SSP', 'LKR', 'SDG', 'SRD', 'SZL', 'SEK', 'CHE', 'CHW', 'SYP', 'TWD', 'TJS', 'TZS', 'THB', 'TOP', 'TTD', 'TND', 'TRY', 'TMT', 'UGX', 'UAH', 'AED', 'USN', 'UYI', 'UYU', 'UZS', 'VUV', 'VEF', 'VED', 'VND', 'YER', 'ZMW', 'ZWL')),
  DuctInletInstallationDate DATETIME2,
  DuctInletMaintenanceInterval NVARCHAR(50),
  DuctInletTurnoverDate DATETIME2,
  DuctInletModel NVARCHAR(200),
  DuctInletTagNumber NVARCHAR(50),
  DuctInletSerialNumber NVARCHAR(50)
  PRIMARY KEY (FireDamperId)
);

CREATE TABLE FirePump (
  FirePumpId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  PumpingMedia NVARCHAR(100),
  PressureCapacity DECIMAL(19, 6),
  HeadCapacity DECIMAL(19, 6),
  FlowCapacity DECIMAL(19, 6)
  PRIMARY KEY (FirePumpId)
);

CREATE TABLE FireSprinklerHead (
  FireSprinklerHeadId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  KFactorMetric DECIMAL(19, 6),
  KFactorImperial DECIMAL(19, 6)
  PRIMARY KEY (FireSprinklerHeadId)
);

CREATE TABLE Floor (
  FloorId NVARCHAR(50) NOT NULL,
  BuildingId NVARCHAR(50) NOT NULL,
  Name NVARCHAR(200) NOT NULL,
  FloorCode NVARCHAR(70),
  FloorNumber INT NOT NULL,
  ValidFrom DATETIME2 NOT NULL,
  ValidUntil DATETIME2 NOT NULL
  PRIMARY KEY (FloorId)
);

CREATE TABLE FlushometerValve (
  FlushometerValveId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  WaterPerFlush DECIMAL(19, 6),
  Type NVARCHAR(50),
  Technology NVARCHAR(50),
  MountedOn BIT
  PRIMARY KEY (FlushometerValveId)
);

CREATE TABLE GasMeter (
  GasMeterId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  MassFlow DECIMAL(19, 6),
  Mass DECIMAL(19, 6),
  Measures NVARCHAR(50)
  PRIMARY KEY (GasMeterId)
);

CREATE TABLE Gateway (
  GatewayId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  RegistrationId NVARCHAR(50),
  RegistrationKey NVARCHAR(50),
  ConnectorId NVARCHAR(50),
  Enabled BIT,
  Detected BIT,
  MountedInRack BIT,
  RackPosition NVARCHAR(50)
  PRIMARY KEY (GatewayId)
);

CREATE TABLE Generator (
  GeneratorId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  OutputVoltage DECIMAL(19, 6),
  OutputPhases NVARCHAR(50),
  ModeOfOperation NVARCHAR(50),
  FuelType NVARCHAR(50),
  Frequency NVARCHAR(50),
  DayTankCapacity DECIMAL(19, 6),
  BulkStorageCapacity DECIMAL(19, 6),
  StandbyPowerKva DECIMAL(19, 6),
  StandbyPower DECIMAL(19, 6),
  PrimePowerKva DECIMAL(19, 6),
  PrimePower DECIMAL(19, 6)
  PRIMARY KEY (GeneratorId)
);

CREATE TABLE HvacFan (
  HvacFanId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  DriveType NVARCHAR(50),
  NominalAirflow DECIMAL(19, 6),
  MotorPower DECIMAL(19, 6),
  MinAirflowRating DECIMAL(19, 6),
  MaxAirflowRating DECIMAL(19, 6)
  PRIMARY KEY (HvacFanId)
);

CREATE TABLE HvacFanSubComponent (
  HvacFanSubComponentId NVARCHAR(50) NOT NULL,
  HvacFanId NVARCHAR(50) NOT NULL,
  DriveType NVARCHAR(50),
  NominalAirflow DECIMAL(18, 0),
  MotorPower DECIMAL(18, 0),
  MinAirflowRating DECIMAL(18, 0),
  MaxAirflowRating DECIMAL(18, 0),
  MaxRotationSpeed DECIMAL(18, 0),
  FanNominalAirflow DECIMAL(18, 0),
  Type NVARCHAR(50),
  FanMotorPower DECIMAL(18, 0),
  FanMinAirflowRating DECIMAL(18, 0),
  FanMaxAirflowRating DECIMAL(18, 0),
  FanDriveType NVARCHAR(50),
  FanName NVARCHAR(200),
  FanCommissionDate DATETIME2,
  FanExpectedEndOfLife DATETIME2,
  FanDurationLifeYear INT,
  FanExpectedReplacementCost DECIMAL(18, 0),
  FanInitialCost DECIMAL(18, 0),
  Currency NVARCHAR(50) CHECK (Currency IN ('AFN', 'ALL', 'DZD', 'USD', 'EUR', 'AOA', 'XCD', 'ARS', 'AMD', 'AWG', 'AUD', 'AZN', 'BSD', 'BHD', 'BDT', 'BBD', 'BYN', 'BZD', 'XOF', 'BMD', 'BTN', 'INR', 'BOB', 'BOV', 'BAM', 'BWP', 'NOK', 'BRL', 'BND', 'BGN', 'BIF', 'CVE', 'KHR', 'XAF', 'CAD', 'KYD', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'KMF', 'CDF', 'NZD', 'CRC', 'HRK', 'CUC', 'CUP', 'ANG', 'CZK', 'DKK', 'DJF', 'DOP', 'EGP', 'SVC', 'ERN', 'ETB', 'FKP', 'FJD', 'XPF', 'GMD', 'GEL', 'GHS', 'GIP', 'GTQ', 'GBP', 'GNF', 'GYD', 'HTG', 'HNL', 'HKD', 'HUF', 'ISK', 'IDR', 'XDR', 'IRR', 'IQD', 'ILS', 'JMD', 'JPY', 'JOD', 'KZT', 'KES', 'KPW', 'KRW', 'KWD', 'KGS', 'LAK', 'LBP', 'LSL', 'ZAR', 'LRD', 'LYD', 'CHF', 'MOP', 'MGA', 'MWK', 'MYR', 'MVR', 'MRU', 'MUR', 'XUA', 'MXN', 'MXV', 'MDL', 'MNT', 'MAD', 'MZN', 'MMK', 'NAD', 'NPR', 'NIO', 'NGN', 'OMR', 'PKR', 'PAB', 'PGK', 'PYG', 'PEN', 'PHP', 'PLN', 'QAR', 'MKD', 'RON', 'RUB', 'RWF', 'SHP', 'WST', 'STN', 'SAR', 'RSD', 'SCR', 'SLL', 'SGD', 'XSU', 'SBD', 'SOS', 'SSP', 'LKR', 'SDG', 'SRD', 'SZL', 'SEK', 'CHE', 'CHW', 'SYP', 'TWD', 'TJS', 'TZS', 'THB', 'TOP', 'TTD', 'TND', 'TRY', 'TMT', 'UGX', 'UAH', 'AED', 'USN', 'UYI', 'UYU', 'UZS', 'VUV', 'VEF', 'VED', 'VND', 'YER', 'ZMW', 'ZWL')),
  FanInstallationDate DATETIME2,
  FanMaintenanceInterval NVARCHAR(50),
  FanTurnoverDate DATETIME2,
  FanModelNumber NVARCHAR(50),
  FanTagNumber NVARCHAR(50),
  FanSerialNumber NVARCHAR(50),
  DuctInletSize DECIMAL(18, 0),
  DuctInletShape DECIMAL(18, 0),
  DuctInletConfiguration NVARCHAR(200),
  DuctInletName NVARCHAR(200),
  DuctInletCommissionDate DATETIME2,
  DuctInletExpectedEndOfLife DATETIME2,
  DuctInletExpectedReplacementCost DECIMAL(18, 0),
  DuctInletInitialCost DECIMAL(18, 0),
  DuctInletCurrency NVARCHAR(50) CHECK (DuctInletCurrency IN ('AFN', 'ALL', 'DZD', 'USD', 'EUR', 'AOA', 'XCD', 'ARS', 'AMD', 'AWG', 'AUD', 'AZN', 'BSD', 'BHD', 'BDT', 'BBD', 'BYN', 'BZD', 'XOF', 'BMD', 'BTN', 'INR', 'BOB', 'BOV', 'BAM', 'BWP', 'NOK', 'BRL', 'BND', 'BGN', 'BIF', 'CVE', 'KHR', 'XAF', 'CAD', 'KYD', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'KMF', 'CDF', 'NZD', 'CRC', 'HRK', 'CUC', 'CUP', 'ANG', 'CZK', 'DKK', 'DJF', 'DOP', 'EGP', 'SVC', 'ERN', 'ETB', 'FKP', 'FJD', 'XPF', 'GMD', 'GEL', 'GHS', 'GIP', 'GTQ', 'GBP', 'GNF', 'GYD', 'HTG', 'HNL', 'HKD', 'HUF', 'ISK', 'IDR', 'XDR', 'IRR', 'IQD', 'ILS', 'JMD', 'JPY', 'JOD', 'KZT', 'KES', 'KPW', 'KRW', 'KWD', 'KGS', 'LAK', 'LBP', 'LSL', 'ZAR', 'LRD', 'LYD', 'CHF', 'MOP', 'MGA', 'MWK', 'MYR', 'MVR', 'MRU', 'MUR', 'XUA', 'MXN', 'MXV', 'MDL', 'MNT', 'MAD', 'MZN', 'MMK', 'NAD', 'NPR', 'NIO', 'NGN', 'OMR', 'PKR', 'PAB', 'PGK', 'PYG', 'PEN', 'PHP', 'PLN', 'QAR', 'MKD', 'RON', 'RUB', 'RWF', 'SHP', 'WST', 'STN', 'SAR', 'RSD', 'SCR', 'SLL', 'SGD', 'XSU', 'SBD', 'SOS', 'SSP', 'LKR', 'SDG', 'SRD', 'SZL', 'SEK', 'CHE', 'CHW', 'SYP', 'TWD', 'TJS', 'TZS', 'THB', 'TOP', 'TTD', 'TND', 'TRY', 'TMT', 'UGX', 'UAH', 'AED', 'USN', 'UYI', 'UYU', 'UZS', 'VUV', 'VEF', 'VED', 'VND', 'YER', 'ZMW', 'ZWL')),
  DuctInletInstallationDate DATETIME2,
  DuctInletMaintenanceInterval NVARCHAR(50),
  DuctInletTurnoverDate DATETIME2,
  DuctInletModel NVARCHAR(200),
  DuctInletTagNumber NVARCHAR(50),
  DuctInletSerialNumber NVARCHAR(50)
  PRIMARY KEY (HvacFanSubComponentId)
);

CREATE TABLE HvacHeatTracing (
  HvacHeatTracingId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  PowerDensity DECIMAL(19, 6)
  PRIMARY KEY (HvacHeatTracingId)
);

CREATE TABLE HvacPump (
  HvacPumpId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  PumpingMedia NVARCHAR(100),
  PressureCapacity DECIMAL(19, 6),
  HeadCapacity DECIMAL(19, 6),
  FlowCapacity DECIMAL(19, 6)
  PRIMARY KEY (HvacPumpId)
);

CREATE TABLE HvacShutOffValve (
  HvacShutOffValveId NVARCHAR(50) NOT NULL,
  HvacValveId NVARCHAR(50) NOT NULL,
  PressureCapacity DECIMAL(19, 6),
  PipeDiameter DECIMAL(19, 6),
  FlowCapacity DECIMAL(19, 6)
  PRIMARY KEY (HvacShutOffValveId)
);

CREATE TABLE HvacSystem (
  HvacSystemId NVARCHAR(50) NOT NULL,
  SystemId NVARCHAR(50) NOT NULL,
  DesignLoadPerArea DECIMAL(19, 6),
  ActualLoad DECIMAL(19, 6),
  DesignHeatingLoad DECIMAL(19, 6),
  CalculatedHeatingLoad DECIMAL(19, 6),
  DesignCoolingLoad DECIMAL(19, 6),
  CalculatedCoolingLoad DECIMAL(19, 6),
  LoadUnit NVARCHAR(50) CHECK (LoadUnit IN ('W/sqm', 'W/sqft')),
  SpecifiedSupplyAirflow DECIMAL(19, 6),
  CalculatedSupplyAirflow DECIMAL(19, 6),
  ActualSupplyAirflow DECIMAL(19, 6),
  SpecifiedExhaustAirflow DECIMAL(19, 6),
  ActualExhaustAirflow DECIMAL(19, 6),
  AirflowUnit NVARCHAR(50) CHECK (AirflowUnit IN ('CMM', 'CFM')),
  HeatingCapacity DECIMAL(19, 6),
  CoolingCapacity DECIMAL(19, 6),
  CoolingSensibleHeatRatio DECIMAL(19, 6),
  MaximumCoolingCapacity DECIMAL(19, 6),
  ManufacturerCoilBypassFactor DECIMAL(19, 6)
  PRIMARY KEY (HvacSystemId)
);

CREATE TABLE HvacTank (
  HvacTankId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  PumpingMedia NVARCHAR(100),
  PressureCapacity DECIMAL(19, 6),
  HeadCapacity DECIMAL(19, 6),
  FlowCapacity DECIMAL(18, 0)
  PRIMARY KEY (HvacTankId)
);

CREATE TABLE HvacValve (
  HvacValveId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  PressureCapacity DECIMAL(19, 6),
  PipeDiameter DECIMAL(19, 6),
  FlowCapacity DECIMAL(19, 6)
  PRIMARY KEY (HvacValveId)
);

CREATE TABLE IctHardware (
  IctHardwareId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  MountedInRack BIT,
  RackPosition NVARCHAR(50)
  PRIMARY KEY (IctHardwareId)
);

CREATE TABLE InformationAndCommunicationSystem (
  InformationAndCommunicationSystemId NVARCHAR(50) NOT NULL,
  SystemId NVARCHAR(50) NOT NULL,
  CableCategory NVARCHAR(50),
  CableRating NVARCHAR(50),
  CableType NVARCHAR(50),
  FibreType NVARCHAR(50),
  SignalType NVARCHAR(50)
  PRIMARY KEY (InformationAndCommunicationSystemId)
);

CREATE TABLE ItRack (
  ItRackId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  Mounting NVARCHAR(200),
  HeightRUs DECIMAL(19, 6)
  PRIMARY KEY (ItRackId)
);

CREATE TABLE JockeyPump (
  JockeyPumpId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  PumpingMedia NVARCHAR(100),
  PressureCapacity DECIMAL(19, 6),
  HeadCapacity DECIMAL(19, 6),
  FlowCapacity DECIMAL(19, 6)
  PRIMARY KEY (JockeyPumpId)
);

CREATE TABLE Land (
  LandId NVARCHAR(50) NOT NULL,
  SiteId NVARCHAR(50) NOT NULL,
  Name NVARCHAR(200) NOT NULL,
  LandCode NVARCHAR(70),
  Type NVARCHAR(75) NOT NULL,
  LandCoverage NVARCHAR(50),
  LandParcelNr NVARCHAR(50),
  ValidFrom DATETIME2 NOT NULL,
  ValidUntil DATETIME2 NOT NULL,
  TypeOfOwnership NVARCHAR(50) NOT NULL CHECK (TypeOfOwnership IN ('Owner', 'Tenant')),
  SelfUse BIT,
  Status NVARCHAR(50)
  PRIMARY KEY (LandId)
);

CREATE TABLE LightingSystem (
  LightingSystemId NVARCHAR(50) NOT NULL,
  SystemId NVARCHAR(50) NOT NULL,
  IEEEIlluminationLevels INT,
  IlluminationUnit NVARCHAR(50) CHECK (IlluminationUnit IN ('lx', 'fc')),
  GlareIndex INT,
  LightBrightness INT,
  SolarReflectanceIndex DECIMAL(19, 6),
  RoomCavityRatio DECIMAL(19, 6)
  PRIMARY KEY (LightingSystemId)
);

CREATE TABLE Luminaire (
  LuminaireId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50)
  PRIMARY KEY (LuminaireId)
);

CREATE TABLE ModbusController (
  ModbusControllerId NVARCHAR(50) NOT NULL,
  ControllerId NVARCHAR(50) NOT NULL,
  RegistrationId NVARCHAR(50),
  RegistrationKey NVARCHAR(50),
  ConnectorId NVARCHAR(50),
  Enabled BIT,
  Detected BIT
  PRIMARY KEY (ModbusControllerId)
);

CREATE TABLE MovingWalkway (
  MovingWalkwayId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  StepWidth DECIMAL(19, 6),
  MaxLength DECIMAL(19, 6),
  MaxTravelSpeed DECIMAL(19, 6),
  Inclination NVARCHAR(50)
  PRIMARY KEY (MovingWalkwayId)
);

CREATE TABLE PlumbingExpansionTank (
  PlumbingExpansionTankId NVARCHAR(50) NOT NULL,
  PlumbingTankId NVARCHAR(50) NOT NULL,
  TankCapacity DECIMAL(19, 6),
  SystemPressure DECIMAL(19, 6),
  Type NVARCHAR(50)
  PRIMARY KEY (PlumbingExpansionTankId)
);

CREATE TABLE PlumbingPump (
  PlumbingPumpId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  PumpingMedia NVARCHAR(100),
  PressureCapacity DECIMAL(19, 6),
  HeadCapacity DECIMAL(19, 6),
  FlowCapacity DECIMAL(19, 6)
  PRIMARY KEY (PlumbingPumpId)
);

CREATE TABLE PlumbingPumpSubComponent (
  PlumbingPumpSubComponentId NVARCHAR(50) NOT NULL,
  PlumbingPumpId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  PumpingMedia NVARCHAR(100),
  PressureCapacity DECIMAL(19, 6),
  HeadCapacity DECIMAL(19, 6),
  FlowCapacity DECIMAL(19, 6)
  PRIMARY KEY (PlumbingPumpSubComponentId)
);

CREATE TABLE PlumbingStorageTank (
  PlumbingStorageTankId NVARCHAR(50) NOT NULL,
  PlumbingTankId NVARCHAR(50) NOT NULL,
  TankCapacity DECIMAL(19, 6),
  SystemPressure DECIMAL(19, 6),
  Type NVARCHAR(50),
  Arrangement NVARCHAR(200)
  PRIMARY KEY (PlumbingStorageTankId)
);

CREATE TABLE PlumbingShutOffValve (
  PlumbingShutOffValveId NVARCHAR(50) NOT NULL,
  PlumbingValveId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  PipeDiameter DECIMAL(19, 6),
  FlowCapacity DECIMAL(19, 6)
  PRIMARY KEY (PlumbingShutOffValveId)
);

CREATE TABLE PlumbingSystem (
  PlumbingSystemId NVARCHAR(50) NOT NULL,
  SystemId NVARCHAR(50) NOT NULL,
  VolumeDomesticColdWater INT,
  VolumeDomesticHotWater INT,
  VolumeSanitaryWater INT,
  VolumeWasteWater INT,
  VolumeStormWater INT,
  VolumeFireDepartmentWater INT,
  PlumbingVolume INT
  PRIMARY KEY (PlumbingSystemId)
);

CREATE TABLE PlumbingTank (
  PlumbingTankId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  TankCapacity DECIMAL(19, 6),
  SystemPressure DECIMAL(19, 6)
  PRIMARY KEY (PlumbingTankId)
);

CREATE TABLE PlumbingValve (
  PlumbingValveId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  PipeDiameter DECIMAL(19, 6),
  FlowCapacity DECIMAL(19, 6)
  PRIMARY KEY (PlumbingValveId)
);

CREATE TABLE PlumbingValveSubComponent (
  PlumbingValveSubComponentId NVARCHAR(50) NOT NULL,
  PlumbingValveId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  PipeDiameter DECIMAL(19, 6),
  FlowCapacity DECIMAL(19, 6)
  PRIMARY KEY (PlumbingValveSubComponentId)
);

CREATE TABLE Sensor (
  SensorId NVARCHAR(50) NOT NULL,
  ParentId NVARCHAR(50),
  Name NVARCHAR(200),
  Type NVARCHAR(50),
  Model NVARCHAR(50),
  DataProvider NVARCHAR(100),
  SensorAccuracy DECIMAL(18, 0),
  MeasurementType NVARCHAR(50)
  PRIMARY KEY (SensorId)
);

CREATE TABLE SensorBuilding (
  SensorId NVARCHAR(50) NOT NULL,
  BuildingId NVARCHAR(50) NOT NULL
  PRIMARY KEY (SensorId, BuildingId)
);

CREATE TABLE SensorComponent (
  SensorId NVARCHAR(50) NOT NULL,
  ComponentId NVARCHAR(50) NOT NULL
  PRIMARY KEY (SensorId, ComponentId)
);

CREATE TABLE SensorEquipment (
  SensorEquipmentId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  WifiSignalStrength NVARCHAR(50),
  BatteryPercentage DECIMAL(19, 6)
  PRIMARY KEY (SensorEquipmentId)
);

CREATE TABLE SensorFloor (
  SensorId NVARCHAR(50) NOT NULL,
  FloorId NVARCHAR(50) NOT NULL
  PRIMARY KEY (SensorId, FloorId)
);

CREATE TABLE SensorLand (
  SensorId NVARCHAR(50) NOT NULL,
  LandId NVARCHAR(50) NOT NULL
  PRIMARY KEY (SensorId, LandId)
);

CREATE TABLE SensorMeasurement (
  SensorMeasurementId NVARCHAR(50) NOT NULL,
  SensorId NVARCHAR(50),
  MeasurementDate DATETIME2,
  Value FLOAT,
  Unit NVARCHAR(50),
  Reliability NVARCHAR(50)
  PRIMARY KEY (SensorMeasurementId)
);

CREATE TABLE SensorRentalUnit (
  SensorId NVARCHAR(50) NOT NULL,
  RentalUnitId NVARCHAR(50) NOT NULL
  PRIMARY KEY (SensorId, RentalUnitId)
);

CREATE TABLE SensorSite (
  SensorId NVARCHAR(50) NOT NULL,
  SiteId NVARCHAR(50) NOT NULL
  PRIMARY KEY (SensorId, SiteId)
);

CREATE TABLE SensorSpace (
  SensorId NVARCHAR(50) NOT NULL,
  SpaceId NVARCHAR(50) NOT NULL
  PRIMARY KEY (SensorId, SpaceId)
);

CREATE TABLE SensorUnit (
  SensorId NVARCHAR(50) NOT NULL,
  UnitId NVARCHAR(50) NOT NULL
  PRIMARY KEY (SensorId, UnitId)
);

CREATE TABLE Server (
  ServerId NVARCHAR(50) NOT NULL,
  IctHardwareId NVARCHAR(50) NOT NULL,
  MountedInRack BIT,
  RackPosition NVARCHAR(50),
  NumberOfPorts INT,
  HeightRUs DECIMAL(19, 6)
  PRIMARY KEY (ServerId)
);

CREATE TABLE Site (
  SiteId NVARCHAR(50) NOT NULL,
  Name NVARCHAR(200) NOT NULL,
  SiteCode NVARCHAR(70),
  Type NVARCHAR(75) NOT NULL CHECK (Type IN ('Education', 'Health Care', 'Hotel', 'Industrial', 'Lodging, Leisure & Recreation', 'Mixed Use', 'Office', 'Residential', 'Retail', 'Technology/Science', 'Other')),
  ValidFrom DATETIME2 NOT NULL,
  ValidUntil DATETIME2 NOT NULL,
  Status NVARCHAR(50)
  PRIMARY KEY (SiteId)
);

CREATE TABLE Space (
  SpaceId NVARCHAR(50) NOT NULL,
  FloorId NVARCHAR(50) NOT NULL,
  Name NVARCHAR(200) NOT NULL,
  SpaceCode NVARCHAR(70),
  SpaceNumber DECIMAL(19, 6),
  Type NVARCHAR(50) NOT NULL,
  ValidFrom DATETIME2 NOT NULL,
  ValidUntil DATETIME2 NOT NULL,
  SpaceHeightUsable DECIMAL(19, 6),
  SpaceHeight DECIMAL(19, 6),
  SpaceVolumeGross DECIMAL(19, 6),
  SpaceVolumeNet DECIMAL(19, 6),
  PrimaryFloorMaterial NVARCHAR(75),
  PrimaryWallMaterial NVARCHAR(75),
  PrimaryCeilingMaterial NVARCHAR(75),
  Rentability BIT,
  EffectZonesHeating DECIMAL(19, 6),
  EffectZonesCooling DECIMAL(19, 6),
  EffectZonesVentilation DECIMAL(19, 6),
  ClimateHeated BIT,
  ClimateCooled BIT,
  CoUseArea BIT,
  MaximumOccupancy INT,
  VentilationType NVARCHAR(50) CHECK (VentilationType IN ('Exhaust', 'Supply', 'Balanced', 'Heat-recovery'))
  PRIMARY KEY (SpaceId)
);

CREATE TABLE SprinklerHeatTracing (
  SprinklerHeatTracingId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  PowerDensity DECIMAL(19, 6)
  PRIMARY KEY (SprinklerHeatTracingId)
);

CREATE TABLE SprinklerTank (
  SprinklerTankId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  TankCapacity DECIMAL(19, 6),
  SystemPressure DECIMAL(19, 6)
  PRIMARY KEY (SprinklerTankId)
);

CREATE TABLE SprinklerValve (
  SprinklerValveId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  PressureCapacity DECIMAL(19, 6),
  PipeDiameter DECIMAL(19, 6),
  FlowCapacity DECIMAL(19, 6)
  PRIMARY KEY (SprinklerValveId)
);

CREATE TABLE System (
  SystemId NVARCHAR(50) NOT NULL,
  SystemReferenceId NVARCHAR(50),
  Name NVARCHAR(200) NOT NULL,
  Type NVARCHAR(50) NOT NULL,
  Model NVARCHAR(200),
  SerialNumber NVARCHAR(50),
  Description NVARCHAR(200),
  Class NVARCHAR(200) NOT NULL,
  Counter INT NOT NULL,
  WarrantyStartDate DATETIME2 NOT NULL
  PRIMARY KEY (SystemId)
);

CREATE TABLE SystemBuilding (
  SystemId NVARCHAR(50) NOT NULL,
  BuildingId NVARCHAR(50) NOT NULL
  PRIMARY KEY (SystemId, BuildingId)
);

CREATE TABLE SystemFloor (
  SystemId NVARCHAR(50) NOT NULL,
  FloorId NVARCHAR(50) NOT NULL
  PRIMARY KEY (SystemId, FloorId)
);

CREATE TABLE SystemRentalUnit (
  SystemId NVARCHAR(50) NOT NULL,
  RentalUnitId NVARCHAR(50) NOT NULL
  PRIMARY KEY (SystemId, RentalUnitId)
);

CREATE TABLE SystemSite (
  SystemId NVARCHAR(50) NOT NULL,
  SiteId NVARCHAR(50) NOT NULL
  PRIMARY KEY (SystemId, SiteId)
);

CREATE TABLE SystemSpace (
  SystemId NVARCHAR(50) NOT NULL,
  SpaceId NVARCHAR(50) NOT NULL
  PRIMARY KEY (SystemId, SpaceId)
);

CREATE TABLE SystemUnit (
  SystemId NVARCHAR(50) NOT NULL,
  UnitId NVARCHAR(50) NOT NULL
  PRIMARY KEY (SystemId, UnitId)
);

CREATE TABLE TanklessWaterHeater (
  TanklessWaterHeaterId NVARCHAR(50) NOT NULL,
  WaterHeaterId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  FirstHourDelivery DECIMAL(19, 6),
  Recovery100FRise DECIMAL(19, 6)
  PRIMARY KEY (TanklessWaterHeaterId)
);

CREATE TABLE TanklessWaterHeaterSubComponent (
  TanklessWaterHeaterSubComponentId NVARCHAR(50) NOT NULL,
  TanklessWaterHeaterId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  FirstHourDelivery DECIMAL(19, 6),
  Recovery100FRise DECIMAL(19, 6),
  PowerInput DECIMAL(19, 6)
  PRIMARY KEY (TanklessWaterHeaterSubComponentId)
);

CREATE TABLE TankWaterHeater (
  TankWaterHeaterId NVARCHAR(50) NOT NULL,
  WaterHeaterId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  FirstHourDelivery DECIMAL(19, 6),
  Recovery100FRise DECIMAL(19, 6),
  TankCapacity DECIMAL(19, 6)
  PRIMARY KEY (TankWaterHeaterId)
);

CREATE TABLE TankWaterHeaterSubComponent (
  TankWaterHeaterSubComponentId NVARCHAR(50) NOT NULL,
  TankWaterHeaterId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  FirstHourDelivery DECIMAL(19, 6),
  Recovery100FRise DECIMAL(19, 6),
  TankCapacity DECIMAL(19, 6),
  PowerInput DECIMAL(19, 6)
  PRIMARY KEY (TankWaterHeaterSubComponentId)
);

CREATE TABLE TerminalUnit (
  TerminalUnitId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  MinAirflowRating DECIMAL(19, 6),
  MaxAirflowRating DECIMAL(19, 6),
  DuctInletShape DECIMAL(19, 6),
  DuctInletSize DECIMAL(19, 6),
  DuctInletConfiguration NVARCHAR(200),
  DuctInletName NVARCHAR(200),
  DuctInletCommissionDate DATETIME2,
  DuctInletExpectedEndOfLife DATETIME2,
  DuctInletExpectedReplacementCost DECIMAL(28, 4),
  DuctInletInitialCost DECIMAL(28, 4),
  DuctInletCurrency NVARCHAR(50) CHECK (DuctInletCurrency IN ('AFN', 'ALL', 'DZD', 'USD', 'EUR', 'AOA', 'XCD', 'ARS', 'AMD', 'AWG', 'AUD', 'AZN', 'BSD', 'BHD', 'BDT', 'BBD', 'BYN', 'BZD', 'XOF', 'BMD', 'BTN', 'INR', 'BOB', 'BOV', 'BAM', 'BWP', 'NOK', 'BRL', 'BND', 'BGN', 'BIF', 'CVE', 'KHR', 'XAF', 'CAD', 'KYD', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'KMF', 'CDF', 'NZD', 'CRC', 'HRK', 'CUC', 'CUP', 'ANG', 'CZK', 'DKK', 'DJF', 'DOP', 'EGP', 'SVC', 'ERN', 'ETB', 'FKP', 'FJD', 'XPF', 'GMD', 'GEL', 'GHS', 'GIP', 'GTQ', 'GBP', 'GNF', 'GYD', 'HTG', 'HNL', 'HKD', 'HUF', 'ISK', 'IDR', 'XDR', 'IRR', 'IQD', 'ILS', 'JMD', 'JPY', 'JOD', 'KZT', 'KES', 'KPW', 'KRW', 'KWD', 'KGS', 'LAK', 'LBP', 'LSL', 'ZAR', 'LRD', 'LYD', 'CHF', 'MOP', 'MGA', 'MWK', 'MYR', 'MVR', 'MRU', 'MUR', 'XUA', 'MXN', 'MXV', 'MDL', 'MNT', 'MAD', 'MZN', 'MMK', 'NAD', 'NPR', 'NIO', 'NGN', 'OMR', 'PKR', 'PAB', 'PGK', 'PYG', 'PEN', 'PHP', 'PLN', 'QAR', 'MKD', 'RON', 'RUB', 'RWF', 'SHP', 'WST', 'STN', 'SAR', 'RSD', 'SCR', 'SLL', 'SGD', 'XSU', 'SBD', 'SOS', 'SSP', 'LKR', 'SDG', 'SRD', 'SZL', 'SEK', 'CHE', 'CHW', 'SYP', 'TWD', 'TJS', 'TZS', 'THB', 'TOP', 'TTD', 'TND', 'TRY', 'TMT', 'UGX', 'UAH', 'AED', 'USN', 'UYI', 'UYU', 'UZS', 'VUV', 'VEF', 'VED', 'VND', 'YER', 'ZMW', 'ZWL')),
  DuctInletInstallationDate DATETIME2,
  DuctInletMaintenanceInterval NVARCHAR(50),
  DuctInletTurnoverDate DATETIME2,
  DuctInletModel NVARCHAR(200),
  DuctInletTagNumber NVARCHAR(50),
  DuctInletSerialNumber NVARCHAR(50)
  PRIMARY KEY (TerminalUnitId)
);

CREATE TABLE ThermalMeter (
  ThermalMeterId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  VolumeTotal DECIMAL(19, 6),
  VolumeFlow DECIMAL(19, 6),
  SupplyTemperature DECIMAL(19, 6),
  ReturnTemperature DECIMAL(19, 6),
  EnergyTotal DECIMAL(19, 6),
  EnergyRate DECIMAL(19, 6),
  DeltaTemperature DECIMAL(19, 6),
  Measures NVARCHAR(50)
  PRIMARY KEY (ThermalMeterId)
);

CREATE TABLE Toilet (
  ToiletId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  WaterPerFlush DECIMAL(19, 6),
  InstallationType NVARCHAR(50)
  PRIMARY KEY (ToiletId)
);

CREATE TABLE ToiletFlushometer (
  ToiletFlushometerId NVARCHAR(50) NOT NULL,
  ToiletId NVARCHAR(50) NOT NULL,
  WaterPerFlush DECIMAL(19, 6),
  InstallationType NVARCHAR(50)
  PRIMARY KEY (ToiletFlushometerId)
);

CREATE TABLE ToiletTank (
  ToiletTankId NVARCHAR(50) NOT NULL,
  ToiletId NVARCHAR(50) NOT NULL,
  WaterPerFlush DECIMAL(19, 6),
  InstallationType NVARCHAR(50),
  FlushingType NVARCHAR(50)
  PRIMARY KEY (ToiletTankId)
);

CREATE TABLE TransferSwitch (
  TransferSwitchId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  MainBusMaterial NVARCHAR(50),
  MainBusCurrentRating DECIMAL(19, 6),
  Poles INT,
  MainsRating DECIMAL(19, 6)
  PRIMARY KEY (TransferSwitchId)
);

CREATE TABLE Transformer (
  TransformerId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  VoltagePrimary DECIMAL(19, 6),
  VoltageSecondary DECIMAL(19, 6),
  Type NVARCHAR(50),
  SizeKva DECIMAL(19, 6),
  Phases NVARCHAR(50)
  PRIMARY KEY (TransformerId)
);

CREATE TABLE Unit (
  UnitId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50) NOT NULL,
  Name NVARCHAR(200) NOT NULL,
  UnitCode NVARCHAR(70),
  ValidFrom DATETIME2 NOT NULL,
  ValidUntil DATETIME2 NOT NULL
  PRIMARY KEY (UnitId)
);

CREATE TABLE UnitBuilding (
  UnitId NVARCHAR(50) NOT NULL,
  BuildingId NVARCHAR(50) NOT NULL
  PRIMARY KEY (UnitId, BuildingId)
);

CREATE TABLE UnitFloor (
  UnitId NVARCHAR(50) NOT NULL,
  FloorId NVARCHAR(50) NOT NULL
  PRIMARY KEY (UnitId, FloorId)
);

CREATE TABLE UnitHeater (
  UnitHeaterId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  NominalHeatingCapacity DECIMAL(19, 6),
  SteamUnitHeaterCondensate NVARCHAR(50),
  HotWaterUnitHeaterFlowCapacity DECIMAL(19, 6),
  ElectricUnitHeaterPowerInput DECIMAL(19, 6),
  HeatingMethodType NVARCHAR(50),
  HeatingMethodOutsideDiameter DECIMAL(19, 6),
  HeatingMethodName NVARCHAR(200),
  HeatingMethodCommissionDate DATETIME2,
  HeatingMethodExpectedEndOfLife DATETIME2,
  HeatingMethodDurationLifeYear INT,
  HeatingMethodExpectedReplacementCost DECIMAL(28, 4),
  HeatingMethodInitialCost DECIMAL(28, 4),
  HeatingMethodInstallationDate DATETIME2,
  HeatingMethodMaintenanceInterval NVARCHAR(50),
  HeatingMethodTurnoverDate DATETIME2,
  HeatingMethodModelNumber NVARCHAR(50),
  HeatingMethodTagNumber NVARCHAR(50),
  HeatingMethodSerialNumber NVARCHAR(50),
  FanNominalAirflow DECIMAL(19, 6),
  FanMotorPower DECIMAL(19, 6),
  FanMinAirflowRating DECIMAL(19, 6),
  FanMaxAirflowRating DECIMAL(19, 6),
  FanDriveType NVARCHAR(50),
  FanName NVARCHAR(200),
  FanCommissionDate DATETIME2,
  FanExpectedEndOfLife DATETIME2,
  FanDurationLifeYear INT,
  FanExpectedReplacementCost DECIMAL(28, 4),
  FanInitialCost DECIMAL(28, 4),
  Currency NVARCHAR(50) CHECK (Currency IN ('AFN', 'ALL', 'DZD', 'USD', 'EUR', 'AOA', 'XCD', 'ARS', 'AMD', 'AWG', 'AUD', 'AZN', 'BSD', 'BHD', 'BDT', 'BBD', 'BYN', 'BZD', 'XOF', 'BMD', 'BTN', 'INR', 'BOB', 'BOV', 'BAM', 'BWP', 'NOK', 'BRL', 'BND', 'BGN', 'BIF', 'CVE', 'KHR', 'XAF', 'CAD', 'KYD', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'KMF', 'CDF', 'NZD', 'CRC', 'HRK', 'CUC', 'CUP', 'ANG', 'CZK', 'DKK', 'DJF', 'DOP', 'EGP', 'SVC', 'ERN', 'ETB', 'FKP', 'FJD', 'XPF', 'GMD', 'GEL', 'GHS', 'GIP', 'GTQ', 'GBP', 'GNF', 'GYD', 'HTG', 'HNL', 'HKD', 'HUF', 'ISK', 'IDR', 'XDR', 'IRR', 'IQD', 'ILS', 'JMD', 'JPY', 'JOD', 'KZT', 'KES', 'KPW', 'KRW', 'KWD', 'KGS', 'LAK', 'LBP', 'LSL', 'ZAR', 'LRD', 'LYD', 'CHF', 'MOP', 'MGA', 'MWK', 'MYR', 'MVR', 'MRU', 'MUR', 'XUA', 'MXN', 'MXV', 'MDL', 'MNT', 'MAD', 'MZN', 'MMK', 'NAD', 'NPR', 'NIO', 'NGN', 'OMR', 'PKR', 'PAB', 'PGK', 'PYG', 'PEN', 'PHP', 'PLN', 'QAR', 'MKD', 'RON', 'RUB', 'RWF', 'SHP', 'WST', 'STN', 'SAR', 'RSD', 'SCR', 'SLL', 'SGD', 'XSU', 'SBD', 'SOS', 'SSP', 'LKR', 'SDG', 'SRD', 'SZL', 'SEK', 'CHE', 'CHW', 'SYP', 'TWD', 'TJS', 'TZS', 'THB', 'TOP', 'TTD', 'TND', 'TRY', 'TMT', 'UGX', 'UAH', 'AED', 'USN', 'UYI', 'UYU', 'UZS', 'VUV', 'VEF', 'VED', 'VND', 'YER', 'ZMW', 'ZWL')),
  FanInstallationDate DATETIME2,
  FanMaintenanceInterval NVARCHAR(50),
  FanTurnoverDate DATETIME2,
  FanModelNumber NVARCHAR(50),
  FanTagNumber NVARCHAR(50),
  FanSerialNumber NVARCHAR(50)
  PRIMARY KEY (UnitHeaterId)
);

CREATE TABLE UnitLand (
  UnitId NVARCHAR(50) NOT NULL,
  LandId NVARCHAR(50) NOT NULL
  PRIMARY KEY (UnitId, LandId)
);

CREATE TABLE UnitSite (
  UnitId NVARCHAR(50) NOT NULL,
  SiteId NVARCHAR(50) NOT NULL
  PRIMARY KEY (UnitId, SiteId)
);

CREATE TABLE UnitSpace (
  UnitId NVARCHAR(50) NOT NULL,
  SpaceId NVARCHAR(50) NOT NULL
  PRIMARY KEY (UnitId, SpaceId)
);

CREATE TABLE Ups (
  UpsId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  PowerOutputKva DECIMAL(19, 6),
  PowerOutput DECIMAL(19, 6),
  OutputVoltage DECIMAL(19, 6),
  OutputPhases NVARCHAR(50),
  InputVoltage DECIMAL(19, 6),
  InputPhases NVARCHAR(50)
  PRIMARY KEY (UpsId)
);

CREATE TABLE UrinalFlushometer (
  UrinalFlushometerId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  WaterPerFlush DECIMAL(19, 6),
  InstallationType NVARCHAR(50)
  PRIMARY KEY (UrinalFlushometerId)
);

CREATE TABLE VariableFrequencyDrive (
  VariableFrequencyDriveId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50)
  PRIMARY KEY (VariableFrequencyDriveId)
);

CREATE TABLE VavBoxReheat (
  VavBoxReheatId NVARCHAR(50) NOT NULL,
  TerminalUnitId NVARCHAR(50) NOT NULL,
  NominalHeatingCapacity DECIMAL(19, 6),
  MinAirflowRating DECIMAL(19, 6),
  MaxAirflowRating DECIMAL(19, 6),
  DuctInletShape DECIMAL(19, 6),
  DuctInletSize DECIMAL(19, 6),
  DuctInletConfiguration NVARCHAR(200),
  DuctInletName NVARCHAR(200),
  DuctInletCommissionDate DATETIME2,
  DuctInletExpectedEndOfLife DATETIME2,
  DuctInletExpectedReplacementCost DECIMAL(28, 4),
  DuctInletInitialCost DECIMAL(28, 4),
  DuctInletCurrency NVARCHAR(50) CHECK (DuctInletCurrency IN ('AFN', 'ALL', 'DZD', 'USD', 'EUR', 'AOA', 'XCD', 'ARS', 'AMD', 'AWG', 'AUD', 'AZN', 'BSD', 'BHD', 'BDT', 'BBD', 'BYN', 'BZD', 'XOF', 'BMD', 'BTN', 'INR', 'BOB', 'BOV', 'BAM', 'BWP', 'NOK', 'BRL', 'BND', 'BGN', 'BIF', 'CVE', 'KHR', 'XAF', 'CAD', 'KYD', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'KMF', 'CDF', 'NZD', 'CRC', 'HRK', 'CUC', 'CUP', 'ANG', 'CZK', 'DKK', 'DJF', 'DOP', 'EGP', 'SVC', 'ERN', 'ETB', 'FKP', 'FJD', 'XPF', 'GMD', 'GEL', 'GHS', 'GIP', 'GTQ', 'GBP', 'GNF', 'GYD', 'HTG', 'HNL', 'HKD', 'HUF', 'ISK', 'IDR', 'XDR', 'IRR', 'IQD', 'ILS', 'JMD', 'JPY', 'JOD', 'KZT', 'KES', 'KPW', 'KRW', 'KWD', 'KGS', 'LAK', 'LBP', 'LSL', 'ZAR', 'LRD', 'LYD', 'CHF', 'MOP', 'MGA', 'MWK', 'MYR', 'MVR', 'MRU', 'MUR', 'XUA', 'MXN', 'MXV', 'MDL', 'MNT', 'MAD', 'MZN', 'MMK', 'NAD', 'NPR', 'NIO', 'NGN', 'OMR', 'PKR', 'PAB', 'PGK', 'PYG', 'PEN', 'PHP', 'PLN', 'QAR', 'MKD', 'RON', 'RUB', 'RWF', 'SHP', 'WST', 'STN', 'SAR', 'RSD', 'SCR', 'SLL', 'SGD', 'XSU', 'SBD', 'SOS', 'SSP', 'LKR', 'SDG', 'SRD', 'SZL', 'SEK', 'CHE', 'CHW', 'SYP', 'TWD', 'TJS', 'TZS', 'THB', 'TOP', 'TTD', 'TND', 'TRY', 'TMT', 'UGX', 'UAH', 'AED', 'USN', 'UYI', 'UYU', 'UZS', 'VUV', 'VEF', 'VED', 'VND', 'YER', 'ZMW', 'ZWL')),
  DuctInletInstallationDate DATETIME2,
  DuctInletMaintenanceInterval NVARCHAR(50),
  DuctInletTurnoverDate DATETIME2,
  DuctInletModel NVARCHAR(200),
  DuctInletTagNumber NVARCHAR(50),
  DuctInletSerialNumber NVARCHAR(50),
  ReHeatingType NVARCHAR(50),
  ReHeatingOutsideDiameter DECIMAL(19, 6),
  ReHeatingName NVARCHAR(200),
  ReHeatingCommissionDate DATETIME2,
  ReHeatingExpectedEndOfLife DATETIME2,
  ReHeatingDurationLifeYear INT,
  ReHeatingExpectedReplacementCost DECIMAL(28, 4),
  ReHeatingInitialCost DECIMAL(28, 4),
  ReHeatingInstallationDate DATETIME2,
  ReHeatingMaintenanceInterval NVARCHAR(50),
  ReHeatingTurnoverDate DATETIME2,
  ReHeatingModelNumber NVARCHAR(50),
  ReHeatingTagNumber NVARCHAR(50),
  ReHeatingSerialNumber NVARCHAR(50)
  PRIMARY KEY (VavBoxReheatId)
);

CREATE TABLE WaterFiltration (
  WaterFiltrationId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  TankCapacity DECIMAL(19, 6),
  FlowCapacity DECIMAL(19, 6),
  FiltrationRating NVARCHAR(50)
  PRIMARY KEY (WaterFiltrationId)
);

CREATE TABLE WaterHeater (
  WaterHeaterId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  FirstHourDelivery DECIMAL(19, 6),
  Recovery100FRise DECIMAL(19, 6)
  PRIMARY KEY (WaterHeaterId)
);

CREATE TABLE WaterMeter (
  WaterMeterId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  Volume DECIMAL(19, 6),
  VolumeFlow DECIMAL(19, 6),
  SupplyTemperature DECIMAL(19, 6),
  Measures NVARCHAR(50)
  PRIMARY KEY (WaterMeterId)
);

CREATE TABLE WirelessAccessPoint (
  WirelessAccessPointId NVARCHAR(50) NOT NULL,
  DataNetworkEquipmentId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(50),
  MountedInRack BIT,
  RackPosition NVARCHAR(50),
  Mounting NVARCHAR(200)
  PRIMARY KEY (WirelessAccessPointId)
);


-- Foreign Key Constraints --
ALTER TABLE AccessPanel ADD CONSTRAINT FK_AccessPanel_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE AirCompressor ADD CONSTRAINT FK_AirCompressor_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE AirFilter ADD CONSTRAINT FK_AirFilter_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE AirHandlingUnit ADD CONSTRAINT FK_AirHandlingUnit_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE AreaMeasurementBuilding ADD CONSTRAINT FK_AreaMeasurementBuilding_AreaMeasurement FOREIGN KEY (AreaMeasurementId) REFERENCES AreaMeasurement(AreaMeasurementId);
ALTER TABLE AreaMeasurementBuilding ADD CONSTRAINT FK_AreaMeasurementBuilding_Building FOREIGN KEY (BuildingId) REFERENCES Building(BuildingId);
ALTER TABLE AreaMeasurementFloor ADD CONSTRAINT FK_AreaMeasurementFloor_AreaMeasurement FOREIGN KEY (AreaMeasurementId) REFERENCES AreaMeasurement(AreaMeasurementId);
ALTER TABLE AreaMeasurementFloor ADD CONSTRAINT FK_AreaMeasurementFloor_Floor FOREIGN KEY (FloorId) REFERENCES Floor(FloorId);
ALTER TABLE AreaMeasurementLand ADD CONSTRAINT FK_AreaMeasurementLand_AreaMeasurement FOREIGN KEY (AreaMeasurementId) REFERENCES AreaMeasurement(AreaMeasurementId);
ALTER TABLE AreaMeasurementLand ADD CONSTRAINT FK_AreaMeasurementLand_Land FOREIGN KEY (LandId) REFERENCES Land(LandId);
ALTER TABLE AreaMeasurementRentalUnit ADD CONSTRAINT FK_AreaMeasurementRentalUnit_AreaMeasurement FOREIGN KEY (AreaMeasurementId) REFERENCES AreaMeasurement(AreaMeasurementId);
ALTER TABLE AreaMeasurementSite ADD CONSTRAINT FK_AreaMeasurementSite_AreaMeasurement FOREIGN KEY (AreaMeasurementId) REFERENCES AreaMeasurement(AreaMeasurementId);
ALTER TABLE AreaMeasurementSite ADD CONSTRAINT FK_AreaMeasurementSite_Site FOREIGN KEY (SiteId) REFERENCES Site(SiteId);
ALTER TABLE AreaMeasurementSpace ADD CONSTRAINT FK_AreaMeasurementSpace_AreaMeasurement FOREIGN KEY (AreaMeasurementId) REFERENCES AreaMeasurement(AreaMeasurementId);
ALTER TABLE AreaMeasurementSpace ADD CONSTRAINT FK_AreaMeasurementSpace_Space FOREIGN KEY (SpaceId) REFERENCES Space(SpaceId);
ALTER TABLE AreaMeasurementUnit ADD CONSTRAINT FK_AreaMeasurementUnit_AreaMeasurement FOREIGN KEY (AreaMeasurementId) REFERENCES AreaMeasurement(AreaMeasurementId);
ALTER TABLE AreaMeasurementUnit ADD CONSTRAINT FK_AreaMeasurementUnit_Unit FOREIGN KEY (UnitId) REFERENCES Unit(UnitId);
ALTER TABLE AutomaticTransferSwitch ADD CONSTRAINT FK_AutomaticTransferSwitch_TransferSwitch FOREIGN KEY (TransferSwitchId) REFERENCES TransferSwitch(TransferSwitchId);
ALTER TABLE BacNetController ADD CONSTRAINT FK_BacNetController_Controller FOREIGN KEY (ControllerId) REFERENCES Controller(ControllerId);
ALTER TABLE Boiler ADD CONSTRAINT FK_Boiler_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE Building ADD CONSTRAINT FK_Building_Site FOREIGN KEY (SiteId) REFERENCES Site(SiteId);
ALTER TABLE CeilingFan ADD CONSTRAINT FK_CeilingFan_HvacFan FOREIGN KEY (HvacFanId) REFERENCES HvacFan(HvacFanId);
ALTER TABLE CertificateBuilding ADD CONSTRAINT FK_CertificateBuilding_Certificate FOREIGN KEY (CertificateId) REFERENCES Certificate(CertificateId);
ALTER TABLE CertificateBuilding ADD CONSTRAINT FK_CertificateBuilding_Building FOREIGN KEY (BuildingId) REFERENCES Building(BuildingId);
ALTER TABLE CertificateComponent ADD CONSTRAINT FK_CertificateComponent_Certificate FOREIGN KEY (CertificateId) REFERENCES Certificate(CertificateId);
ALTER TABLE CertificateComponent ADD CONSTRAINT FK_CertificateComponent_Component FOREIGN KEY (ComponentId) REFERENCES Component(ComponentId);
ALTER TABLE CertificateSystem ADD CONSTRAINT FK_CertificateSystem_Certificate FOREIGN KEY (CertificateId) REFERENCES Certificate(CertificateId);
ALTER TABLE CertificateSystem ADD CONSTRAINT FK_CertificateSystem_System FOREIGN KEY (SystemId) REFERENCES System(SystemId);
ALTER TABLE CertificateValuation ADD CONSTRAINT FK_CertificateValuation_Certificate FOREIGN KEY (CertificateId) REFERENCES Certificate(CertificateId);
ALTER TABLE Chiller ADD CONSTRAINT FK_Chiller_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE CoGenerator ADD CONSTRAINT FK_CoGenerator_Generator FOREIGN KEY (GeneratorId) REFERENCES Generator(GeneratorId);
ALTER TABLE Component ADD CONSTRAINT FK_Component_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE ComponentBuilding ADD CONSTRAINT FK_ComponentBuilding_Component FOREIGN KEY (ComponentId) REFERENCES Component(ComponentId);
ALTER TABLE ComponentBuilding ADD CONSTRAINT FK_ComponentBuilding_Building FOREIGN KEY (BuildingId) REFERENCES Building(BuildingId);
ALTER TABLE ComponentFloor ADD CONSTRAINT FK_ComponentFloor_Component FOREIGN KEY (ComponentId) REFERENCES Component(ComponentId);
ALTER TABLE ComponentFloor ADD CONSTRAINT FK_ComponentFloor_Floor FOREIGN KEY (FloorId) REFERENCES Floor(FloorId);
ALTER TABLE ComponentRentalUnit ADD CONSTRAINT FK_ComponentRentalUnit_Component FOREIGN KEY (ComponentId) REFERENCES Component(ComponentId);
ALTER TABLE ComponentSite ADD CONSTRAINT FK_ComponentSite_Component FOREIGN KEY (ComponentId) REFERENCES Component(ComponentId);
ALTER TABLE ComponentSite ADD CONSTRAINT FK_ComponentSite_Site FOREIGN KEY (SiteId) REFERENCES Site(SiteId);
ALTER TABLE ComponentSpace ADD CONSTRAINT FK_ComponentSpace_Component FOREIGN KEY (ComponentId) REFERENCES Component(ComponentId);
ALTER TABLE ComponentSpace ADD CONSTRAINT FK_ComponentSpace_Space FOREIGN KEY (SpaceId) REFERENCES Space(SpaceId);
ALTER TABLE ComponentSystem ADD CONSTRAINT FK_ComponentSystem_Component FOREIGN KEY (ComponentId) REFERENCES Component(ComponentId);
ALTER TABLE ComponentSystem ADD CONSTRAINT FK_ComponentSystem_System FOREIGN KEY (SystemId) REFERENCES System(SystemId);
ALTER TABLE ComponentUnit ADD CONSTRAINT FK_ComponentUnit_Component FOREIGN KEY (ComponentId) REFERENCES Component(ComponentId);
ALTER TABLE ComponentUnit ADD CONSTRAINT FK_ComponentUnit_Unit FOREIGN KEY (UnitId) REFERENCES Unit(UnitId);
ALTER TABLE CondensingUnit ADD CONSTRAINT FK_CondensingUnit_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE Controller ADD CONSTRAINT FK_Controller_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE CoolingTower ADD CONSTRAINT FK_CoolingTower_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE Damper ADD CONSTRAINT FK_Damper_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE DataNetworkEquipment ADD CONSTRAINT FK_DataNetworkEquipment_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE DataNetworkSubComponent ADD CONSTRAINT FK_DataNetworkSubComponent_DataNetworkEquipment FOREIGN KEY (DataNetworkEquipmentId) REFERENCES DataNetworkEquipment(DataNetworkEquipmentId);
ALTER TABLE ElectricalDistributionEquipmentSubComponent ADD CONSTRAINT FK_ElectricalDistributionEquipmentSubComponent_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE ElectricalMeter ADD CONSTRAINT FK_ElectricalMeter_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE ElectricalPanelBoard ADD CONSTRAINT FK_ElectricalPanelBoard_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE ElectricalPanelBoardMcb ADD CONSTRAINT FK_ElectricalPanelBoardMcb_ElectricalPanelBoard FOREIGN KEY (ElectricalPanelBoardId) REFERENCES ElectricalPanelBoard(ElectricalPanelBoardId);
ALTER TABLE ElectricalPanelBoardMlo ADD CONSTRAINT FK_ElectricalPanelBoardMlo_ElectricalPanelBoard FOREIGN KEY (ElectricalPanelBoardId) REFERENCES ElectricalPanelBoard(ElectricalPanelBoardId);
ALTER TABLE ElectricalSystem ADD CONSTRAINT FK_ElectricalSystem_System FOREIGN KEY (SystemId) REFERENCES System(SystemId);
ALTER TABLE ElectricalVehicleChargingStation ADD CONSTRAINT FK_ElectricalVehicleChargingStation_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE ElectronicSafetyAndSecuritySystem ADD CONSTRAINT FK_ElectronicSafetyAndSecuritySystem_System FOREIGN KEY (SystemId) REFERENCES System(SystemId);
ALTER TABLE Elevator ADD CONSTRAINT FK_Elevator_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE ElevatorMachine ADD CONSTRAINT FK_ElevatorMachine_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE Escalator ADD CONSTRAINT FK_Escalator_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE EthernetSwitchPort ADD CONSTRAINT FK_EthernetSwitchPort_DataNetworkEquipment FOREIGN KEY (DataNetworkEquipmentId) REFERENCES DataNetworkEquipment(DataNetworkEquipmentId);
ALTER TABLE FanCoilUnit ADD CONSTRAINT FK_FanCoilUnit_TerminalUnit FOREIGN KEY (TerminalUnitId) REFERENCES TerminalUnit(TerminalUnitId);
ALTER TABLE FanCoilUnitReheat ADD CONSTRAINT FK_FanCoilUnitReheat_FanCoilUnit FOREIGN KEY (FanCoilUnitId) REFERENCES FanCoilUnit(FanCoilUnitId);
ALTER TABLE FanPoweredBox ADD CONSTRAINT FK_FanPoweredBox_TerminalUnit FOREIGN KEY (TerminalUnitId) REFERENCES TerminalUnit(TerminalUnitId);
ALTER TABLE FanPoweredBoxReheat ADD CONSTRAINT FK_FanPoweredBoxReheat_TerminalUnit FOREIGN KEY (TerminalUnitId) REFERENCES TerminalUnit(TerminalUnitId);
ALTER TABLE Faucet ADD CONSTRAINT FK_Faucet_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE FireDamper ADD CONSTRAINT FK_FireDamper_Damper FOREIGN KEY (DamperId) REFERENCES Damper(DamperId);
ALTER TABLE FirePump ADD CONSTRAINT FK_FirePump_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE FireSprinklerHead ADD CONSTRAINT FK_FireSprinklerHead_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE Floor ADD CONSTRAINT FK_Floor_Building FOREIGN KEY (BuildingId) REFERENCES Building(BuildingId);
ALTER TABLE FlushometerValve ADD CONSTRAINT FK_FlushometerValve_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE GasMeter ADD CONSTRAINT FK_GasMeter_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE Gateway ADD CONSTRAINT FK_Gateway_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE Generator ADD CONSTRAINT FK_Generator_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE HvacFan ADD CONSTRAINT FK_HvacFan_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE HvacFanSubComponent ADD CONSTRAINT FK_HvacFanSubComponent_HvacFan FOREIGN KEY (HvacFanId) REFERENCES HvacFan(HvacFanId);
ALTER TABLE HvacHeatTracing ADD CONSTRAINT FK_HvacHeatTracing_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE HvacPump ADD CONSTRAINT FK_HvacPump_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE HvacShutOffValve ADD CONSTRAINT FK_HvacShutOffValve_HvacValve FOREIGN KEY (HvacValveId) REFERENCES HvacValve(HvacValveId);
ALTER TABLE HvacSystem ADD CONSTRAINT FK_HvacSystem_System FOREIGN KEY (SystemId) REFERENCES System(SystemId);
ALTER TABLE HvacTank ADD CONSTRAINT FK_HvacTank_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE HvacValve ADD CONSTRAINT FK_HvacValve_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE IctHardware ADD CONSTRAINT FK_IctHardware_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE InformationAndCommunicationSystem ADD CONSTRAINT FK_InformationAndCommunicationSystem_System FOREIGN KEY (SystemId) REFERENCES System(SystemId);
ALTER TABLE ItRack ADD CONSTRAINT FK_ItRack_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE JockeyPump ADD CONSTRAINT FK_JockeyPump_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE Land ADD CONSTRAINT FK_Land_Site FOREIGN KEY (SiteId) REFERENCES Site(SiteId);
ALTER TABLE LightingSystem ADD CONSTRAINT FK_LightingSystem_System FOREIGN KEY (SystemId) REFERENCES System(SystemId);
ALTER TABLE Luminaire ADD CONSTRAINT FK_Luminaire_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE ModbusController ADD CONSTRAINT FK_ModbusController_Controller FOREIGN KEY (ControllerId) REFERENCES Controller(ControllerId);
ALTER TABLE MovingWalkway ADD CONSTRAINT FK_MovingWalkway_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE PlumbingExpansionTank ADD CONSTRAINT FK_PlumbingExpansionTank_PlumbingTank FOREIGN KEY (PlumbingTankId) REFERENCES PlumbingTank(PlumbingTankId);
ALTER TABLE PlumbingPump ADD CONSTRAINT FK_PlumbingPump_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE PlumbingPumpSubComponent ADD CONSTRAINT FK_PlumbingPumpSubComponent_PlumbingPump FOREIGN KEY (PlumbingPumpId) REFERENCES PlumbingPump(PlumbingPumpId);
ALTER TABLE PlumbingStorageTank ADD CONSTRAINT FK_PlumbingStorageTank_PlumbingTank FOREIGN KEY (PlumbingTankId) REFERENCES PlumbingTank(PlumbingTankId);
ALTER TABLE PlumbingShutOffValve ADD CONSTRAINT FK_PlumbingShutOffValve_PlumbingValve FOREIGN KEY (PlumbingValveId) REFERENCES PlumbingValve(PlumbingValveId);
ALTER TABLE PlumbingSystem ADD CONSTRAINT FK_PlumbingSystem_System FOREIGN KEY (SystemId) REFERENCES System(SystemId);
ALTER TABLE PlumbingTank ADD CONSTRAINT FK_PlumbingTank_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE PlumbingValve ADD CONSTRAINT FK_PlumbingValve_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE PlumbingValveSubComponent ADD CONSTRAINT FK_PlumbingValveSubComponent_PlumbingValve FOREIGN KEY (PlumbingValveId) REFERENCES PlumbingValve(PlumbingValveId);
ALTER TABLE SensorBuilding ADD CONSTRAINT FK_SensorBuilding_Sensor FOREIGN KEY (SensorId) REFERENCES Sensor(SensorId);
ALTER TABLE SensorBuilding ADD CONSTRAINT FK_SensorBuilding_Building FOREIGN KEY (BuildingId) REFERENCES Building(BuildingId);
ALTER TABLE SensorComponent ADD CONSTRAINT FK_SensorComponent_Sensor FOREIGN KEY (SensorId) REFERENCES Sensor(SensorId);
ALTER TABLE SensorComponent ADD CONSTRAINT FK_SensorComponent_Component FOREIGN KEY (ComponentId) REFERENCES Component(ComponentId);
ALTER TABLE SensorEquipment ADD CONSTRAINT FK_SensorEquipment_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE SensorFloor ADD CONSTRAINT FK_SensorFloor_Sensor FOREIGN KEY (SensorId) REFERENCES Sensor(SensorId);
ALTER TABLE SensorFloor ADD CONSTRAINT FK_SensorFloor_Floor FOREIGN KEY (FloorId) REFERENCES Floor(FloorId);
ALTER TABLE SensorLand ADD CONSTRAINT FK_SensorLand_Sensor FOREIGN KEY (SensorId) REFERENCES Sensor(SensorId);
ALTER TABLE SensorLand ADD CONSTRAINT FK_SensorLand_Land FOREIGN KEY (LandId) REFERENCES Land(LandId);
ALTER TABLE SensorMeasurement ADD CONSTRAINT FK_SensorMeasurement_Sensor FOREIGN KEY (SensorId) REFERENCES Sensor(SensorId);
ALTER TABLE SensorRentalUnit ADD CONSTRAINT FK_SensorRentalUnit_Sensor FOREIGN KEY (SensorId) REFERENCES Sensor(SensorId);
ALTER TABLE SensorSite ADD CONSTRAINT FK_SensorSite_Sensor FOREIGN KEY (SensorId) REFERENCES Sensor(SensorId);
ALTER TABLE SensorSite ADD CONSTRAINT FK_SensorSite_Site FOREIGN KEY (SiteId) REFERENCES Site(SiteId);
ALTER TABLE SensorSpace ADD CONSTRAINT FK_SensorSpace_Sensor FOREIGN KEY (SensorId) REFERENCES Sensor(SensorId);
ALTER TABLE SensorSpace ADD CONSTRAINT FK_SensorSpace_Space FOREIGN KEY (SpaceId) REFERENCES Space(SpaceId);
ALTER TABLE SensorUnit ADD CONSTRAINT FK_SensorUnit_Sensor FOREIGN KEY (SensorId) REFERENCES Sensor(SensorId);
ALTER TABLE SensorUnit ADD CONSTRAINT FK_SensorUnit_Unit FOREIGN KEY (UnitId) REFERENCES Unit(UnitId);
ALTER TABLE Server ADD CONSTRAINT FK_Server_IctHardware FOREIGN KEY (IctHardwareId) REFERENCES IctHardware(IctHardwareId);
ALTER TABLE Space ADD CONSTRAINT FK_Space_Floor FOREIGN KEY (FloorId) REFERENCES Floor(FloorId);
ALTER TABLE SprinklerHeatTracing ADD CONSTRAINT FK_SprinklerHeatTracing_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE SprinklerTank ADD CONSTRAINT FK_SprinklerTank_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE SprinklerValve ADD CONSTRAINT FK_SprinklerValve_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE SystemBuilding ADD CONSTRAINT FK_SystemBuilding_System FOREIGN KEY (SystemId) REFERENCES System(SystemId);
ALTER TABLE SystemBuilding ADD CONSTRAINT FK_SystemBuilding_Building FOREIGN KEY (BuildingId) REFERENCES Building(BuildingId);
ALTER TABLE SystemFloor ADD CONSTRAINT FK_SystemFloor_System FOREIGN KEY (SystemId) REFERENCES System(SystemId);
ALTER TABLE SystemFloor ADD CONSTRAINT FK_SystemFloor_Floor FOREIGN KEY (FloorId) REFERENCES Floor(FloorId);
ALTER TABLE SystemRentalUnit ADD CONSTRAINT FK_SystemRentalUnit_System FOREIGN KEY (SystemId) REFERENCES System(SystemId);
ALTER TABLE SystemSite ADD CONSTRAINT FK_SystemSite_System FOREIGN KEY (SystemId) REFERENCES System(SystemId);
ALTER TABLE SystemSite ADD CONSTRAINT FK_SystemSite_Site FOREIGN KEY (SiteId) REFERENCES Site(SiteId);
ALTER TABLE SystemSpace ADD CONSTRAINT FK_SystemSpace_System FOREIGN KEY (SystemId) REFERENCES System(SystemId);
ALTER TABLE SystemSpace ADD CONSTRAINT FK_SystemSpace_Space FOREIGN KEY (SpaceId) REFERENCES Space(SpaceId);
ALTER TABLE SystemUnit ADD CONSTRAINT FK_SystemUnit_System FOREIGN KEY (SystemId) REFERENCES System(SystemId);
ALTER TABLE SystemUnit ADD CONSTRAINT FK_SystemUnit_Unit FOREIGN KEY (UnitId) REFERENCES Unit(UnitId);
ALTER TABLE TanklessWaterHeater ADD CONSTRAINT FK_TanklessWaterHeater_WaterHeater FOREIGN KEY (WaterHeaterId) REFERENCES WaterHeater(WaterHeaterId);
ALTER TABLE TanklessWaterHeaterSubComponent ADD CONSTRAINT FK_TanklessWaterHeaterSubComponent_TanklessWaterHeater FOREIGN KEY (TanklessWaterHeaterId) REFERENCES TanklessWaterHeater(TanklessWaterHeaterId);
ALTER TABLE TankWaterHeater ADD CONSTRAINT FK_TankWaterHeater_WaterHeater FOREIGN KEY (WaterHeaterId) REFERENCES WaterHeater(WaterHeaterId);
ALTER TABLE TankWaterHeaterSubComponent ADD CONSTRAINT FK_TankWaterHeaterSubComponent_TankWaterHeater FOREIGN KEY (TankWaterHeaterId) REFERENCES TankWaterHeater(TankWaterHeaterId);
ALTER TABLE TerminalUnit ADD CONSTRAINT FK_TerminalUnit_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE ThermalMeter ADD CONSTRAINT FK_ThermalMeter_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE Toilet ADD CONSTRAINT FK_Toilet_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE ToiletFlushometer ADD CONSTRAINT FK_ToiletFlushometer_Toilet FOREIGN KEY (ToiletId) REFERENCES Toilet(ToiletId);
ALTER TABLE ToiletTank ADD CONSTRAINT FK_ToiletTank_Toilet FOREIGN KEY (ToiletId) REFERENCES Toilet(ToiletId);
ALTER TABLE TransferSwitch ADD CONSTRAINT FK_TransferSwitch_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE Transformer ADD CONSTRAINT FK_Transformer_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE UnitBuilding ADD CONSTRAINT FK_UnitBuilding_Unit FOREIGN KEY (UnitId) REFERENCES Unit(UnitId);
ALTER TABLE UnitBuilding ADD CONSTRAINT FK_UnitBuilding_Building FOREIGN KEY (BuildingId) REFERENCES Building(BuildingId);
ALTER TABLE UnitFloor ADD CONSTRAINT FK_UnitFloor_Unit FOREIGN KEY (UnitId) REFERENCES Unit(UnitId);
ALTER TABLE UnitFloor ADD CONSTRAINT FK_UnitFloor_Floor FOREIGN KEY (FloorId) REFERENCES Floor(FloorId);
ALTER TABLE UnitHeater ADD CONSTRAINT FK_UnitHeater_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE UnitLand ADD CONSTRAINT FK_UnitLand_Unit FOREIGN KEY (UnitId) REFERENCES Unit(UnitId);
ALTER TABLE UnitLand ADD CONSTRAINT FK_UnitLand_Land FOREIGN KEY (LandId) REFERENCES Land(LandId);
ALTER TABLE UnitSite ADD CONSTRAINT FK_UnitSite_Unit FOREIGN KEY (UnitId) REFERENCES Unit(UnitId);
ALTER TABLE UnitSite ADD CONSTRAINT FK_UnitSite_Site FOREIGN KEY (SiteId) REFERENCES Site(SiteId);
ALTER TABLE UnitSpace ADD CONSTRAINT FK_UnitSpace_Unit FOREIGN KEY (UnitId) REFERENCES Unit(UnitId);
ALTER TABLE UnitSpace ADD CONSTRAINT FK_UnitSpace_Space FOREIGN KEY (SpaceId) REFERENCES Space(SpaceId);
ALTER TABLE Ups ADD CONSTRAINT FK_Ups_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE UrinalFlushometer ADD CONSTRAINT FK_UrinalFlushometer_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE VariableFrequencyDrive ADD CONSTRAINT FK_VariableFrequencyDrive_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE VavBoxReheat ADD CONSTRAINT FK_VavBoxReheat_TerminalUnit FOREIGN KEY (TerminalUnitId) REFERENCES TerminalUnit(TerminalUnitId);
ALTER TABLE WaterFiltration ADD CONSTRAINT FK_WaterFiltration_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE WaterHeater ADD CONSTRAINT FK_WaterHeater_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE WaterMeter ADD CONSTRAINT FK_WaterMeter_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE WirelessAccessPoint ADD CONSTRAINT FK_WirelessAccessPoint_DataNetworkEquipment FOREIGN KEY (DataNetworkEquipmentId) REFERENCES DataNetworkEquipment(DataNetworkEquipmentId);
