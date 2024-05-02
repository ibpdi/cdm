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

CREATE TABLE Climate (
  ClimateId NVARCHAR(36) NOT NULL,
  Experiment NVARCHAR(75),
  TemporalResolution NVARCHAR(50),
  SpatialResolution NVARCHAR(50),
  GlobalCirculationModel NVARCHAR(75),
  RegionalClimateModel NVARCHAR(75),
  SimulationVersion NVARCHAR(75),
  EnsembleMember NVARCHAR(75),
  Value DECIMAL(28, 4) NOT NULL,
  Unit NVARCHAR(50) NOT NULL,
  ValidFrom DATETIME2 NOT NULL,
  ValidUntil DATETIME2 NOT NULL,
  LocationType NVARCHAR(50) NOT NULL CHECK (LocationType IN ('NUTS3', 'Zip Code', 'Geographic coordinates', 'Projected coordinates')),
  CoordinateSystem NVARCHAR(50),
  Location NVARCHAR(50),
  Latitude DECIMAL(10, 8),
  Longitude DECIMAL(11, 8),
  PosX INT,
  PosY INT,
  Variable NVARCHAR(50) NOT NULL
  PRIMARY KEY (ClimateId)
);

CREATE TABLE ClimateBuilding (
  ClimateId NVARCHAR(36) NOT NULL,
  BuildingId NVARCHAR(50) NOT NULL
  PRIMARY KEY (ClimateId, BuildingId)
);

CREATE TABLE ClimateSite (
  ClimateId NVARCHAR(36) NOT NULL,
  SiteId NVARCHAR(50) NOT NULL
  PRIMARY KEY (ClimateId, SiteId)
);

CREATE TABLE EmissionFactor (
  EmissionFactorId NVARCHAR(36) NOT NULL,
  Name NVARCHAR(200),
  Country NVARCHAR(75) NOT NULL CHECK (Country IN ('AF', 'AL', 'DZ', 'AS', 'AD', 'AO', 'AI', 'AQ', 'AG', 'AR', 'AM', 'AW', 'AU', 'AT', 'AZ', 'BS', 'BH', 'BD', 'BB', 'BY', 'BE', 'BZ', 'BJ', 'BM', 'BT', 'BO', 'BQ', 'BA', 'BW', 'BV', 'BR', 'IO', 'BN', 'BG', 'BF', 'BI', 'CV', 'KH', 'CM', 'CA', 'KY', 'CF', 'TD', 'CL', 'CN', 'CX', 'CC', 'CO', 'KM', 'CD', 'CG', 'CK', 'CR', 'HR', 'CU', 'CW', 'CY', 'CZ', 'CI', 'DK', 'DJ', 'DM', 'DO', 'EC', 'EG', 'SV', 'GQ', 'ER', 'EE', 'SZ', 'ET', 'FK', 'FO', 'FJ', 'FI', 'FR', 'GF', 'PF', 'TF', 'GA', 'GM', 'GE', 'DE', 'GH', 'GI', 'GR', 'GL', 'GD', 'GP', 'GU', 'GT', 'GG', 'GN', 'GW', 'GY', 'HT', 'HM', 'VA', 'HN', 'HK', 'HU', 'IS', 'IN', 'ID', 'IR', 'IQ', 'IE', 'IM', 'IL', 'IT', 'JM', 'JP', 'JE', 'JO', 'KZ', 'KE', 'KI', 'KP', 'KR', 'KW', 'KG', 'LA', 'LV', 'LB', 'LS', 'LR', 'LY', 'LI', 'LT', 'LU', 'MO', 'MG', 'MW', 'MY', 'MV', 'ML', 'MT', 'MH', 'MQ', 'MR', 'MU', 'YT', 'MX', 'FM', 'MD', 'MC', 'MN', 'ME', 'MS', 'MA', 'MZ', 'MM', 'NA', 'NR', 'NP', 'NL', 'NC', 'NZ', 'NI', 'NE', 'NG', 'NU', 'NF', 'MP', 'NO', 'OM', 'PK', 'PW', 'PS', 'PA', 'PG', 'PY', 'PE', 'PH', 'PN', 'PL', 'PT', 'PR', 'QA', 'MK', 'RO', 'RU', 'RW', 'RE', 'BL', 'SH', 'KN', 'LC', 'MF', 'PM', 'VC', 'WS', 'SM', 'ST', 'SA', 'SN', 'RS', 'SC', 'SL', 'SG', 'SX', 'SK', 'SI', 'SB', 'SO', 'ZA', 'GS', 'SS', 'ES', 'LK', 'SD', 'SR', 'SJ', 'SE', 'CH', 'SY', 'TW', 'TJ', 'TZ', 'TH', 'TL', 'TG', 'TK', 'TO', 'TT', 'TN', 'TR', 'TM', 'TC', 'TV', 'UG', 'UA', 'AE', 'GB', 'UM', 'US', 'UY', 'UZ', 'VU', 'VE', 'VN', 'VG', 'VI', 'WF', 'EH', 'YE', 'ZM', 'ZW', 'AX')),
  Type NVARCHAR(100) NOT NULL CHECK (Type IN ('Electricity from grid (green electricity contract)', 'Electricity self-generated & exported', 'Electricity self-generated & consumed', 'Electricity (unspecified)', 'REC', 'Natural gas (standard mix)', 'Green natural gas', 'Natural gas (unspecified)', 'Oil-based fuels', 'Fuel (unspecified)', 'District heating', 'District cooling', 'Biomass', 'Solar thermal', 'Fresh water (municipal water supply)', 'Ground water (collected on site)', 'Rain water (collected on site)', 'Reclaimed water', 'Water discharge', 'Water consumption (unspecified)', 'Recycling: non-hazardous', 'Incineration: non-hazardous', 'Waste to energy: non-hazardous', 'Other/Unknown: hazardous', 'Other/Unknown: non-hazardous', 'Electricity from grid (normal contract)', 'Carbon dioxide (CO2)', 'Methane (CH4)', 'Nitrous oxide (N2O)', 'R-11', 'CFC-11', 'Trichlorofluoromethane (CCI3F)', 'R-12', 'CFC-12', 'Dichlorofluoromethane (CCI2F2)', 'R-13', 'CFC-13', 'Chlorodifluoromethane (CCIF3)', 'R-113', 'CFC-113', '1,1,2-Trichloro-1,2,2-trifluoroethane (C2CI3F3)', 'R-114', 'CFC-114', 'Halon-242', '1,2-Dichlorotetrafluoroethane (C2Cl2F4)', 'R-115', 'CFC-115', 'Chloropentafluoroethane (C2ClF5)', 'R13 B1', 'Halon-1301', 'Bromotrifluoromethane (CBrF3)', 'R-12B1', 'Halon-1211', 'Bromochlorodifluoromethane (CBrCIF2)', 'R 114B2', 'Halon-2402', '1,2-Dibromotetrafluoroethane (C2Br2F4)', 'R-10', 'Carbon tetrachloride (CCl4)', 'Bromomethane', 'Methyl bromide (CH3Br)', 'R-140a', '1,1,1- Trichloroethane', 'Methyl chloroform (C2H3Cl3)', 'R-21', 'HCFC-21', 'Dichlorofluoromethane (CHCl2F)', 'R-22', 'HCFC-22', 'Chlorodifluoromethane (CHClF2)', 'R-123', 'HCFC-123', '2,2-Dichloro-1,1,1-trifluoroethane (C2Cl2F3)', 'R-124', 'HCFC-124| 1-Chloro-1,2,2,2-tetrafluoroethane (C2ClF4)', 'R-141b', 'HCFC-141b |1,1,-Dichloro-1-1-fluoroethane (C2H3Cl2F)', 'R-142b', 'HCFC-142b', '1-Chloro-1,1,-difluoroethane (C2ClF2)', 'R-225ca', 'HCFC-225ca', '3.3-dichloro-1,1,1,2,2-pentafluoropropane (C3HCl2F5)', 'R-225cb', 'HCFC-225cb', '1,3-Dichloro-1,1,2,2,3-pentafluoropropane (C3HCl2F5)', 'R-23', 'HFC-23', '| R-32', 'HFC-32', '| R-41', 'HFC-41', '| R-125', 'HFC-125', '| R-134', 'HFC-134', '| R-134a', 'HFC-134a', '| R-143', 'HFC-143', '| R-143a', 'HFC-143a', '| R-152', 'HFC-152', '| R-152a', 'HFC-152a', '| R-161', 'HFC-161', '| R-227ea', 'HFC-227ea', '| R-236cb', 'HFC-236cb', '| R-236ea', 'HFC-236ea', '| R-236fa', 'HFC-236fa', '| R-245ca', 'HFC-245ca', '| R-245fa', 'HFC-245fa', '| R-365mfc', 'HFC-365mfc', '| R-43-10mee', 'HFC-43-10mee', '| Sulfur hexafluoride (SF6)', 'Nitrogen trifluoride (NF3)', 'Water supply', 'Landfill: non-hazardous', 'Reuse: non-hazardous', 'Waste to energy: hazardous', 'Incineration: hazardous', 'Landfill: hazardous', 'Recycling: hazardous', 'Reuse: hazardous')),
  ValidFrom DATETIME2 NOT NULL,
  ValidUntil DATETIME2 NOT NULL,
  Value DECIMAL(18, 0) NOT NULL,
  Unit NVARCHAR(50) CHECK (Unit IN ('kgCO2e/kWh', 'kgCO2e/kg', 'kgCO2e/cubm')),
  Source NVARCHAR(200),
  SpaceType NVARCHAR(50) CHECK (SpaceType IN ('Shared services/Common spaces', 'Tenant space', 'Landlord space', 'Whole building', 'Unspecified', 'Shared services', 'Common spaces', 'Outdoor', 'Exterior area', 'Parking')),
  Region NVARCHAR(75),
  City NVARCHAR(100)
  PRIMARY KEY (EmissionFactorId)
);

CREATE TABLE EmissionFactorBuilding (
  EmissionFactorId NVARCHAR(36) NOT NULL,
  BuildingId NVARCHAR(50) NOT NULL
  PRIMARY KEY (EmissionFactorId, BuildingId)
);

CREATE TABLE EmissionFactorOperationalMeasurement (
  EmissionFactorId NVARCHAR(36) NOT NULL,
  OperationalMeasurementId NVARCHAR(36) NOT NULL
  PRIMARY KEY (EmissionFactorId, OperationalMeasurementId)
);

CREATE TABLE EmissionFactorSite (
  EmissionFactorId NVARCHAR(36) NOT NULL,
  SiteId NVARCHAR(50) NOT NULL
  PRIMARY KEY (EmissionFactorId, SiteId)
);

CREATE TABLE GhgEmission (
  GhgEmissionId NVARCHAR(36) NOT NULL,
  OperationalMeasurementId NVARCHAR(36),
  ParentId NVARCHAR(50),
  Name NVARCHAR(200),
  EmissionScope NVARCHAR(50) NOT NULL,
  ReportingType NVARCHAR(50) CHECK (ReportingType IN ('Location-based', 'Market-based')),
  Type NVARCHAR(50) NOT NULL CHECK (Type IN ('Energy', 'Fugitive', 'Waste', 'Water discharge', 'Water supply')),
  SubType NVARCHAR(100) NOT NULL CHECK (SubType IN ('Electricity from grid (green electricity contract)', 'Electricity self-generated & exported', 'Electricity self-generated & consumed', 'Electricity (unspecified)', 'REC', 'Natural gas (standard mix)', 'Green natural gas', 'Natural gas (unspecified)', 'Oil-based fuels', 'Fuel (unspecified)', 'District heating', 'District cooling', 'Biomass', 'Solar thermal', 'Fresh water (municipal water supply)', 'Ground water (collected on site)', 'Rain water (collected on site)', 'Reclaimed water', 'Water discharge', 'Water consumption (unspecified)', 'Recycling: non-hazardous', 'Incineration: non-hazardous', 'Waste to energy: non-hazardous', 'Other/Unknown: hazardous', 'Other/Unknown: non-hazardous', 'Electricity from grid (normal contract)', 'Carbon dioxide (CO2)', 'Methane (CH4)', 'Nitrous oxide (N2O)', 'R-11', 'CFC-11', 'Trichlorofluoromethane (CCI3F)', 'R-12', 'CFC-12', 'Dichlorofluoromethane (CCI2F2)', 'R-13', 'CFC-13', 'Chlorodifluoromethane (CCIF3)', 'R-113', 'CFC-113', '1,1,2-Trichloro-1,2,2-trifluoroethane (C2CI3F3)', 'R-114', 'CFC-114', 'Halon-242', '1,2-Dichlorotetrafluoroethane (C2Cl2F4)', 'R-115', 'CFC-115', 'Chloropentafluoroethane (C2ClF5)', 'R13 B1', 'Halon-1301', 'Bromotrifluoromethane (CBrF3)', 'R-12B1', 'Halon-1211', 'Bromochlorodifluoromethane (CBrCIF2)', 'R 114B2', 'Halon-2402', '1,2-Dibromotetrafluoroethane (C2Br2F4)', 'R-10', 'Carbon tetrachloride (CCl4)', 'Bromomethane', 'Methyl bromide (CH3Br)', 'R-140a', '1,1,1- Trichloroethane', 'Methyl chloroform (C2H3Cl3)', 'R-21', 'HCFC-21', 'Dichlorofluoromethane (CHCl2F)', 'R-22', 'HCFC-22', 'Chlorodifluoromethane (CHClF2)', 'R-123', 'HCFC-123', '2,2-Dichloro-1,1,1-trifluoroethane (C2Cl2F3)', 'R-124', 'HCFC-124| 1-Chloro-1,2,2,2-tetrafluoroethane (C2ClF4)', 'R-141b', 'HCFC-141b |1,1,-Dichloro-1-1-fluoroethane (C2H3Cl2F)', 'R-142b', 'HCFC-142b', '1-Chloro-1,1,-difluoroethane (C2ClF2)', 'R-225ca', 'HCFC-225ca', '3.3-dichloro-1,1,1,2,2-pentafluoropropane (C3HCl2F5)', 'R-225cb', 'HCFC-225cb', '1,3-Dichloro-1,1,2,2,3-pentafluoropropane (C3HCl2F5)', 'R-23', 'HFC-23', '| R-32', 'HFC-32', '| R-41', 'HFC-41', '| R-125', 'HFC-125', '| R-134', 'HFC-134', '| R-134a', 'HFC-134a', '| R-143', 'HFC-143', '| R-143a', 'HFC-143a', '| R-152', 'HFC-152', '| R-152a', 'HFC-152a', '| R-161', 'HFC-161', '| R-227ea', 'HFC-227ea', '| R-236cb', 'HFC-236cb', '| R-236ea', 'HFC-236ea', '| R-236fa', 'HFC-236fa', '| R-245ca', 'HFC-245ca', '| R-245fa', 'HFC-245fa', '| R-365mfc', 'HFC-365mfc', '| R-43-10mee', 'HFC-43-10mee', '| Sulfur hexafluoride (SF6)', 'Nitrogen trifluoride (NF3)', 'Water supply', 'Landfill: non-hazardous', 'Reuse: non-hazardous', 'Waste to energy: hazardous', 'Incineration: hazardous', 'Landfill: hazardous', 'Recycling: hazardous', 'Reuse: hazardous')),
  LifeCycleAssessment NVARCHAR(50) CHECK (LifeCycleAssessment IN ('A1', 'A2', 'A3', 'A4', 'A5', 'B1', 'B2', 'B3', 'B4', 'B5', 'B6', 'B7', 'C1', 'C2', 'C3', 'C4', 'D')),
  ValidFrom DATETIME2 NOT NULL,
  ValidUntil DATETIME2 NOT NULL,
  Value DECIMAL(19, 6),
  Unit NVARCHAR(50) CHECK (Unit IN ('kgCO2e')),
  Accuracy NVARCHAR(75) NOT NULL CHECK (Accuracy IN ('Calculated based on estimated data', 'Calculated based on metered data', 'Calculated based on extrapolated data', 'Calculated based on planed data', 'Calculated based on simulated data', 'Calculated based on projected estimated data', 'Calculated based on projected metered data', 'Calculated based on projected extrapolated data', 'Calculated based on projected planned data', 'Calculated based on projected simulated data', 'Estimated', 'Metered', 'Extrapolated', 'Planned', 'Unspecified', 'Simulated', 'Projection based on estimated data', 'Projection based on metered data', 'Projection based on extrapolated data', 'Projection based on planned data', 'Projection based on data with unspecified accuracy', 'Projection based on simulated data', 'Missing', 'Calculated based on data with unspecified accuracy', 'Calculated based on projected data with unspecified accuracy', 'Retrofit scenario'))
  PRIMARY KEY (GhgEmissionId)
);

CREATE TABLE GhgEmissionBuilding (
  GhgEmissionId NVARCHAR(36) NOT NULL,
  BuildingId NVARCHAR(50) NOT NULL
  PRIMARY KEY (GhgEmissionId, BuildingId)
);

CREATE TABLE GhgEmissionEmissionFactor (
  GhgEmissionId NVARCHAR(36) NOT NULL,
  EmissionFactorId NVARCHAR(36) NOT NULL
  PRIMARY KEY (GhgEmissionId, EmissionFactorId)
);

CREATE TABLE GhgEmissionSite (
  GhgEmissionId NVARCHAR(36) NOT NULL,
  SiteId NVARCHAR(50) NOT NULL
  PRIMARY KEY (GhgEmissionId, SiteId)
);

CREATE TABLE OperationalMeasurement (
  OperationalMeasurementId NVARCHAR(36) NOT NULL,
  ParentId NVARCHAR(50),
  Purpose NVARCHAR(50) NOT NULL CHECK (Purpose IN ('Space heating', 'Water heating', 'Heating (unspecified)', 'Cooling', 'Lighting', 'Elevator', 'Appliances', 'Other', 'Unspecified', 'Heat pump')),
  Accuracy NVARCHAR(75) NOT NULL CHECK (Accuracy IN ('Estimated', 'Metered', 'Extrapolated', 'Planned', 'Simulated', 'Unspecified', 'Projection based on estimated data', 'Projection based on metered data', 'Projection based on extrapolated data', 'Projection based on planned data', 'Projection based on simulated data', 'Projection based on data with unspecified accuracy', 'Missing')),
  Type NVARCHAR(50) NOT NULL CHECK (Type IN ('Energy', 'Water', 'Waste', 'Fugitive')),
  SubType NVARCHAR(100) NOT NULL CHECK (SubType IN ('Electricity from grid (green electricity contract)', 'Electricity self-generated & exported', 'Electricity self-generated & consumed', 'Electricity (unspecified)', 'REC', 'Natural gas (standard mix)', 'Green natural gas', 'Natural gas (unspecified)', 'Oil-based fuels', 'Fuel (unspecified)', 'District heating', 'District cooling', 'Biomass', 'Solar thermal', 'Fresh water (municipal water supply)', 'Ground water (collected on site)', 'Rain water (collected on site)', 'Reclaimed water', 'Water discharge', 'Water consumption (unspecified)', 'Recycling: non-hazardous', 'Incineration: non-hazardous', 'Waste to energy: non-hazardous', 'Other/Unknown: hazardous', 'Other/Unknown: non-hazardous', 'Electricity from grid (normal contract)', 'Carbon dioxide (CO2)', 'Methane (CH4)', 'Nitrous oxide (N2O)', 'R-11', 'CFC-11', 'Trichlorofluoromethane (CCI3F)', 'R-12', 'CFC-12', 'Dichlorofluoromethane (CCI2F2)', 'R-13', 'CFC-13', 'Chlorodifluoromethane (CCIF3)', 'R-113', 'CFC-113', '1,1,2-Trichloro-1,2,2-trifluoroethane (C2CI3F3)', 'R-114', 'CFC-114', 'Halon-242', '1,2-Dichlorotetrafluoroethane (C2Cl2F4)', 'R-115', 'CFC-115', 'Chloropentafluoroethane (C2ClF5)', 'R13 B1', 'Halon-1301', 'Bromotrifluoromethane (CBrF3)', 'R-12B1', 'Halon-1211', 'Bromochlorodifluoromethane (CBrCIF2)', 'R 114B2', 'Halon-2402', '1,2-Dibromotetrafluoroethane (C2Br2F4)', 'R-10', 'Carbon tetrachloride (CCl4)', 'Bromomethane', 'Methyl bromide (CH3Br)', 'R-140a', '1,1,1- Trichloroethane', 'Methyl chloroform (C2H3Cl3)', 'R-21', 'HCFC-21', 'Dichlorofluoromethane (CHCl2F)', 'R-22', 'HCFC-22', 'Chlorodifluoromethane (CHClF2)', 'R-123', 'HCFC-123', '2,2-Dichloro-1,1,1-trifluoroethane (C2Cl2F3)', 'R-124', 'HCFC-124| 1-Chloro-1,2,2,2-tetrafluoroethane (C2ClF4)', 'R-141b', 'HCFC-141b |1,1,-Dichloro-1-1-fluoroethane (C2H3Cl2F)', 'R-142b', 'HCFC-142b', '1-Chloro-1,1,-difluoroethane (C2ClF2)', 'R-225ca', 'HCFC-225ca', '3.3-dichloro-1,1,1,2,2-pentafluoropropane (C3HCl2F5)', 'R-225cb', 'HCFC-225cb', '1,3-Dichloro-1,1,2,2,3-pentafluoropropane (C3HCl2F5)', 'R-23', 'HFC-23', '| R-32', 'HFC-32', '| R-41', 'HFC-41', '| R-125', 'HFC-125', '| R-134', 'HFC-134', '| R-134a', 'HFC-134a', '| R-143', 'HFC-143', '| R-143a', 'HFC-143a', '| R-152', 'HFC-152', '| R-152a', 'HFC-152a', '| R-161', 'HFC-161', '| R-227ea', 'HFC-227ea', '| R-236cb', 'HFC-236cb', '| R-236ea', 'HFC-236ea', '| R-236fa', 'HFC-236fa', '| R-245ca', 'HFC-245ca', '| R-245fa', 'HFC-245fa', '| R-365mfc', 'HFC-365mfc', '| R-43-10mee', 'HFC-43-10mee', '| Sulfur hexafluoride (SF6)', 'Nitrogen trifluoride (NF3)', 'Water supply', 'Landfill: non-hazardous', 'Reuse: non-hazardous', 'Waste to energy: hazardous', 'Incineration: hazardous', 'Landfill: hazardous', 'Recycling: hazardous', 'Reuse: hazardous')),
  Name NVARCHAR(200),
  Value DECIMAL(19, 6),
  Unit NVARCHAR(50) CHECK (Unit IN ('kWh', 'cubm', 'kg')),
  ProcuredBy NVARCHAR(50) CHECK (ProcuredBy IN ('Procured by third party', 'Self-procured', 'Unspecified')),
  SpaceType NVARCHAR(50) NOT NULL CHECK (SpaceType IN ('Shared services/Common spaces', 'Tenant space', 'Landlord space', 'Whole building', 'Unspecified', 'Shared services', 'Common spaces', 'Outdoor', 'Exterior area', 'Parking')),
  LifeCycleAssessment NVARCHAR(50) CHECK (LifeCycleAssessment IN ('A1', 'A2', 'A3', 'A4', 'A5', 'B1', 'B2', 'B3', 'B4', 'B5', 'B6', 'B7', 'C1', 'C2', 'C3', 'C4', 'D')),
  PostingDate DATETIME2,
  MeasurementDate DATETIME2,
  ValidFrom DATETIME2 NOT NULL,
  ValidUntil DATETIME2 NOT NULL,
  SensorId NVARCHAR(50)
  PRIMARY KEY (OperationalMeasurementId)
);

CREATE TABLE OperationalMeasurementBuilding (
  OperationalMeasurementId NVARCHAR(36) NOT NULL,
  BuildingId NVARCHAR(50) NOT NULL
  PRIMARY KEY (OperationalMeasurementId, BuildingId)
);

CREATE TABLE OperationalMeasurementFloor (
  OperationalMeasurementId NVARCHAR(36) NOT NULL,
  FloorId NVARCHAR(50) NOT NULL
  PRIMARY KEY (OperationalMeasurementId, FloorId)
);

CREATE TABLE OperationalMeasurementLand (
  OperationalMeasurementId NVARCHAR(36) NOT NULL,
  LandId NVARCHAR(50) NOT NULL
  PRIMARY KEY (OperationalMeasurementId, LandId)
);

CREATE TABLE OperationalMeasurementRentalUnit (
  OperationalMeasurementId NVARCHAR(36) NOT NULL,
  RentalUnitId NVARCHAR(50) NOT NULL
  PRIMARY KEY (OperationalMeasurementId, RentalUnitId)
);

CREATE TABLE OperationalMeasurementSite (
  OperationalMeasurementId NVARCHAR(36) NOT NULL,
  SiteId NVARCHAR(50) NOT NULL
  PRIMARY KEY (OperationalMeasurementId, SiteId)
);

CREATE TABLE OperationalMeasurementSpace (
  OperationalMeasurementId NVARCHAR(36) NOT NULL,
  SpaceId NVARCHAR(50) NOT NULL
  PRIMARY KEY (OperationalMeasurementId, SpaceId)
);

CREATE TABLE OperationalMeasurementUnit (
  OperationalMeasurementId NVARCHAR(36) NOT NULL,
  UnitId NVARCHAR(50) NOT NULL
  PRIMARY KEY (OperationalMeasurementId, UnitId)
);

CREATE TABLE SustainabilityIndicator (
  SustainabilityIndicatorId NVARCHAR(36) NOT NULL,
  BuildingId NVARCHAR(50) NOT NULL,
  Category NVARCHAR(50) NOT NULL CHECK (Category IN ('Costs', 'Energy', 'Ghg', 'Area')),
  Type NVARCHAR(50) CHECK (Type IN ('Absolute', 'Intensity', 'Excess emissions', 'Stranding', 'Target', 'Budget', 'Direct emissions', 'Indirect emissions')),
  SubType NVARCHAR(50),
  Source NVARCHAR(50) CHECK (Source IN ('Energy', 'All', 'Fuels', 'Electricity', 'District heating', 'District cooling', 'Fugitive', 'Water supply', 'Water discharge', 'Water', 'Waste', 'District heating & fuel', 'F-gases')),
  ReferenceArea NVARCHAR(50) CHECK (ReferenceArea IN ('Net rentable area', 'Gross internal area')),
  ReportingType NVARCHAR(50) CHECK (ReportingType IN ('Location-based', 'Market-based')),
  BaseYear DATETIME2,
  Value DECIMAL(19, 6),
  Unit NVARCHAR(50) CHECK (Unit IN ('kgCO2e', 'kgCO2e/sqm', 'kWh', 'kWh/sqm', 'EUR', 'sqm')),
  ValidFrom DATETIME2 NOT NULL,
  ValidUntil DATETIME2 NOT NULL
  PRIMARY KEY (SustainabilityIndicatorId)
);

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

CREATE TABLE Address (
  AddressId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(70) NOT NULL,
  StreetName NVARCHAR(150),
  HouseNumber NVARCHAR(50),
  AdditionalInformation NVARCHAR(100),
  ApartmentOrUnit NVARCHAR(50),
  District NVARCHAR(50),
  City NVARCHAR(100) NOT NULL,
  PostalCode NVARCHAR(15),
  StateProvincePrefecture NVARCHAR(50),
  Country NVARCHAR(75) NOT NULL CHECK (Country IN ('AF', 'AL', 'DZ', 'AS', 'AD', 'AO', 'AI', 'AQ', 'AG', 'AR', 'AM', 'AW', 'AU', 'AT', 'AZ', 'BS', 'BH', 'BD', 'BB', 'BY', 'BE', 'BZ', 'BJ', 'BM', 'BT', 'BO', 'BQ', 'BA', 'BW', 'BV', 'BR', 'IO', 'BN', 'BG', 'BF', 'BI', 'CV', 'KH', 'CM', 'CA', 'KY', 'CF', 'TD', 'CL', 'CN', 'CX', 'CC', 'CO', 'KM', 'CD', 'CG', 'CK', 'CR', 'HR', 'CU', 'CW', 'CY', 'CZ', 'CI', 'DK', 'DJ', 'DM', 'DO', 'EC', 'EG', 'SV', 'GQ', 'ER', 'EE', 'SZ', 'ET', 'FK', 'FO', 'FJ', 'FI', 'FR', 'GF', 'PF', 'TF', 'GA', 'GM', 'GE', 'DE', 'GH', 'GI', 'GR', 'GL', 'GD', 'GP', 'GU', 'GT', 'GG', 'GN', 'GW', 'GY', 'HT', 'HM', 'VA', 'HN', 'HK', 'HU', 'IS', 'IN', 'ID', 'IR', 'IQ', 'IE', 'IM', 'IL', 'IT', 'JM', 'JP', 'JE', 'JO', 'KZ', 'KE', 'KI', 'KP', 'KR', 'KW', 'KG', 'LA', 'LV', 'LB', 'LS', 'LR', 'LY', 'LI', 'LT', 'LU', 'MO', 'MG', 'MW', 'MY', 'MV', 'ML', 'MT', 'MH', 'MQ', 'MR', 'MU', 'YT', 'MX', 'FM', 'MD', 'MC', 'MN', 'ME', 'MS', 'MA', 'MZ', 'MM', 'NA', 'NR', 'NP', 'NL', 'NC', 'NZ', 'NI', 'NE', 'NG', 'NU', 'NF', 'MP', 'NO', 'OM', 'PK', 'PW', 'PS', 'PA', 'PG', 'PY', 'PE', 'PH', 'PN', 'PL', 'PT', 'PR', 'QA', 'MK', 'RO', 'RU', 'RW', 'RE', 'BL', 'SH', 'KN', 'LC', 'MF', 'PM', 'VC', 'WS', 'SM', 'ST', 'SA', 'SN', 'RS', 'SC', 'SL', 'SG', 'SX', 'SK', 'SI', 'SB', 'SO', 'ZA', 'GS', 'SS', 'ES', 'LK', 'SD', 'SR', 'SJ', 'SE', 'CH', 'SY', 'TW', 'TJ', 'TZ', 'TH', 'TL', 'TG', 'TK', 'TO', 'TT', 'TN', 'TR', 'TM', 'TC', 'TV', 'UG', 'UA', 'AE', 'GB', 'UM', 'US', 'UY', 'UZ', 'VU', 'VE', 'VN', 'VG', 'VI', 'WF', 'EH', 'YE', 'ZM', 'ZW', 'AX')),
  DeprecatedLatitude DECIMAL(18, 0),
  DeprecatedLongitude DECIMAL(18, 0)
  PRIMARY KEY (AddressId)
);

CREATE TABLE AddressBuilding (
  AddressId NVARCHAR(50) NOT NULL,
  BuildingId NVARCHAR(50) NOT NULL
  PRIMARY KEY (AddressId, BuildingId)
);

CREATE TABLE AddressContact (
  AddressId NVARCHAR(50) NOT NULL,
  ContactId NVARCHAR(50) NOT NULL
  PRIMARY KEY (AddressId, ContactId)
);

CREATE TABLE AddressLand (
  AddressId NVARCHAR(50) NOT NULL,
  LandId NVARCHAR(50) NOT NULL
  PRIMARY KEY (AddressId, LandId)
);

CREATE TABLE AddressOrganisation (
  AddressId NVARCHAR(50) NOT NULL,
  OrganisationId NVARCHAR(50) NOT NULL
  PRIMARY KEY (AddressId, OrganisationId)
);

CREATE TABLE AddressRentalUnit (
  AddressId NVARCHAR(50) NOT NULL,
  RentalUnitId NVARCHAR(50) NOT NULL
  PRIMARY KEY (AddressId, RentalUnitId)
);

CREATE TABLE AddressSite (
  AddressId NVARCHAR(50) NOT NULL,
  SiteId NVARCHAR(50) NOT NULL
  PRIMARY KEY (AddressId, SiteId)
);

CREATE TABLE Contact (
  ContactId NVARCHAR(50) NOT NULL,
  OrganisationId NVARCHAR(50),
  Salutation NVARCHAR(50),
  JobTitle NVARCHAR(50),
  FirstName NVARCHAR(100) NOT NULL,
  LastName NVARCHAR(100) NOT NULL,
  EmployeeId NVARCHAR(50),
  Email NVARCHAR(100),
  Telephone NVARCHAR(50),
  Fax NVARCHAR(50),
  ValidFrom DATETIME2,
  ValidUntil DATETIME2
  PRIMARY KEY (ContactId)
);

CREATE TABLE GeoCoordinate (
  GeoCoordinateId NVARCHAR(50) NOT NULL,
  AddressId NVARCHAR(50) NOT NULL,
  CoordinateReferenceSystem NVARCHAR(50),
  Latitude DECIMAL(10, 8),
  Longitude DECIMAL(11, 8)
  PRIMARY KEY (GeoCoordinateId)
);

CREATE TABLE Organisation (
  OrganisationId NVARCHAR(50) NOT NULL,
  ParentId NVARCHAR(50),
  Name NVARCHAR(200) NOT NULL,
  Industry NVARCHAR(50),
  Email NVARCHAR(100),
  Telephone NVARCHAR(50),
  Fax NVARCHAR(50),
  VatNumber NVARCHAR(50),
  LegalEntity BIT,
  FiscalYearStartDate DATETIME2,
  ValidFrom DATETIME2,
  ValidUntil DATETIME2
  PRIMARY KEY (OrganisationId)
);

CREATE TABLE Role (
  RoleId NVARCHAR(50) NOT NULL,
  Type NVARCHAR(75) NOT NULL
  PRIMARY KEY (RoleId)
);

CREATE TABLE RoleBuildingContact (
  RoleId NVARCHAR(50) NOT NULL,
  BuildingId NVARCHAR(50) NOT NULL,
  ContactId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, BuildingId, ContactId)
);

CREATE TABLE RoleBuildingOrganisation (
  RoleId NVARCHAR(50) NOT NULL,
  BuildingId NVARCHAR(50) NOT NULL,
  OrganisationId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, BuildingId, OrganisationId)
);

CREATE TABLE RoleComponentContact (
  RoleId NVARCHAR(50) NOT NULL,
  ComponentId NVARCHAR(50) NOT NULL,
  ContactId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, ComponentId, ContactId)
);

CREATE TABLE RoleComponentOrganisation (
  RoleId NVARCHAR(50) NOT NULL,
  ComponentId NVARCHAR(50) NOT NULL,
  OrganisationId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, ComponentId, OrganisationId)
);

CREATE TABLE RoleComponentTypeContact (
  RoleId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  ContactId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, ComponentTypeId, ContactId)
);

CREATE TABLE RoleComponentTypeOrganisation (
  RoleId NVARCHAR(50) NOT NULL,
  ComponentTypeId NVARCHAR(50) NOT NULL,
  OrganisationId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, ComponentTypeId, OrganisationId)
);

CREATE TABLE RoleEmissionFactorContact (
  RoleId NVARCHAR(50) NOT NULL,
  EmissionFactorId NVARCHAR(36) NOT NULL,
  ContactId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, EmissionFactorId, ContactId)
);

CREATE TABLE RoleEmissionFactorOrganisation (
  RoleId NVARCHAR(50) NOT NULL,
  EmissionFactorId NVARCHAR(36) NOT NULL,
  OrganisationId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, EmissionFactorId, OrganisationId)
);

CREATE TABLE RoleLandContact (
  RoleId NVARCHAR(50) NOT NULL,
  LandId NVARCHAR(50) NOT NULL,
  ContactId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, LandId, ContactId)
);

CREATE TABLE RoleLandOrganisation (
  RoleId NVARCHAR(50) NOT NULL,
  LandId NVARCHAR(50) NOT NULL,
  OrganisationId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, LandId, OrganisationId)
);

CREATE TABLE RoleOperationalMeasurementContact (
  RoleId NVARCHAR(50) NOT NULL,
  OperationalMeasurementId NVARCHAR(36) NOT NULL,
  ContactId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, OperationalMeasurementId, ContactId)
);

CREATE TABLE RoleOperationalMeasurementOrganisation (
  RoleId NVARCHAR(50) NOT NULL,
  OperationalMeasurementId NVARCHAR(36) NOT NULL,
  OrganisationId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, OperationalMeasurementId, OrganisationId)
);

CREATE TABLE RolePortfolioContact (
  RoleId NVARCHAR(50) NOT NULL,
  PortfolioId NVARCHAR(50) NOT NULL,
  ContactId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, PortfolioId, ContactId)
);

CREATE TABLE RolePortfolioOrganisation (
  RoleId NVARCHAR(50) NOT NULL,
  PortfolioId NVARCHAR(50) NOT NULL,
  OrganisationId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, PortfolioId, OrganisationId)
);

CREATE TABLE RolePortfolioStrategyContact (
  RoleId NVARCHAR(50) NOT NULL,
  PortfolioStrategyId NVARCHAR(50) NOT NULL,
  ContactId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, PortfolioStrategyId, ContactId)
);

CREATE TABLE RolePortfolioStrategyOrganisation (
  RoleId NVARCHAR(50) NOT NULL,
  PortfolioStrategyId NVARCHAR(50) NOT NULL,
  OrganisationId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, PortfolioStrategyId, OrganisationId)
);

CREATE TABLE RoleRentalContractContact (
  RoleId NVARCHAR(50) NOT NULL,
  RentalContractId NVARCHAR(50) NOT NULL,
  ContactId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, RentalContractId, ContactId)
);

CREATE TABLE RoleRentalContractOrganisation (
  RoleId NVARCHAR(50) NOT NULL,
  RentalContractId NVARCHAR(50) NOT NULL,
  OrganisationId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, RentalContractId, OrganisationId)
);

CREATE TABLE RoleRentalUnitContact (
  RoleId NVARCHAR(50) NOT NULL,
  RentalUnitId NVARCHAR(50) NOT NULL,
  ContactId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, RentalUnitId, ContactId)
);

CREATE TABLE RoleRentalUnitOrganisation (
  RoleId NVARCHAR(50) NOT NULL,
  RentalUnitId NVARCHAR(50) NOT NULL,
  OrganisationId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, RentalUnitId, OrganisationId)
);

CREATE TABLE RoleSiteContact (
  RoleId NVARCHAR(50) NOT NULL,
  SiteId NVARCHAR(50) NOT NULL,
  ContactId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, SiteId, ContactId)
);

CREATE TABLE RoleSiteOrganisation (
  RoleId NVARCHAR(50) NOT NULL,
  SiteId NVARCHAR(50) NOT NULL,
  OrganisationId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, SiteId, OrganisationId)
);

CREATE TABLE RoleSystemContact (
  RoleId NVARCHAR(50) NOT NULL,
  SystemId NVARCHAR(50) NOT NULL,
  ContactId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, SystemId, ContactId)
);

CREATE TABLE RoleSystemOrganisation (
  RoleId NVARCHAR(50) NOT NULL,
  SystemId NVARCHAR(50) NOT NULL,
  OrganisationId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, SystemId, OrganisationId)
);

CREATE TABLE RoleTenantCommunicationContact (
  RoleId NVARCHAR(50) NOT NULL,
  TenantCommunicationId NVARCHAR(50) NOT NULL,
  ContactId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, TenantCommunicationId, ContactId)
);

CREATE TABLE RoleTenantCommunicationOrganisation (
  RoleId NVARCHAR(50) NOT NULL,
  TenantCommunicationId NVARCHAR(50) NOT NULL,
  OrganisationId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, TenantCommunicationId, OrganisationId)
);

CREATE TABLE RoleValuationContact (
  RoleId NVARCHAR(50) NOT NULL,
  ValuationId NVARCHAR(50) NOT NULL,
  ContactId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, ValuationId, ContactId)
);

CREATE TABLE RoleValuationOrganisation (
  RoleId NVARCHAR(50) NOT NULL,
  ValuationId NVARCHAR(50) NOT NULL,
  OrganisationId NVARCHAR(50) NOT NULL
  PRIMARY KEY (RoleId, ValuationId, OrganisationId)
);

CREATE TABLE SustainabilityIndicatorEmissionFactor (
  SustainabilityIndicatorId NVARCHAR(36) NOT NULL,
  EmissionFactorId NVARCHAR(36) NOT NULL
  PRIMARY KEY (SustainabilityIndicatorId, EmissionFactorId)
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

CREATE TABLE AvailableResource (
  AvailableResourceId NVARCHAR(50) NOT NULL,
  Name NVARCHAR(200) NOT NULL
  PRIMARY KEY (AvailableResourceId)
);

CREATE TABLE AvailableResourceWorkspace (
  AvailableResourceId NVARCHAR(50) NOT NULL,
  WorkspaceId NVARCHAR(50) NOT NULL
  PRIMARY KEY (AvailableResourceId, WorkspaceId)
);

CREATE TABLE Booking (
  BookingId NVARCHAR(50) NOT NULL,
  ValidFrom DATETIME2 NOT NULL,
  ValidUntil DATETIME2 NOT NULL,
  BookingDate DATETIME2 NOT NULL,
  Cancelled BIT,
  CheckInTime DATETIME2,
  CheckOutTime DATETIME2
  PRIMARY KEY (BookingId)
);

CREATE TABLE BookingWorkspace (
  BookingId NVARCHAR(50) NOT NULL,
  WorkspaceId NVARCHAR(50) NOT NULL
  PRIMARY KEY (BookingId, WorkspaceId)
);

CREATE TABLE Characteristic (
  CharacteristicId NVARCHAR(50) NOT NULL,
  Name NVARCHAR(200) NOT NULL
  PRIMARY KEY (CharacteristicId)
);

CREATE TABLE CharacteristicNeighbourhood (
  CharacteristicId NVARCHAR(50) NOT NULL,
  NeighbourhoodId NVARCHAR(50) NOT NULL
  PRIMARY KEY (CharacteristicId, NeighbourhoodId)
);

CREATE TABLE CharacteristicWorkspace (
  CharacteristicId NVARCHAR(50) NOT NULL,
  WorkspaceId NVARCHAR(50) NOT NULL
  PRIMARY KEY (CharacteristicId, WorkspaceId)
);

CREATE TABLE CustomerFile (
  CustomerFileId NVARCHAR(50) NOT NULL,
  Name NVARCHAR(200),
  Link NVARCHAR(2050) NOT NULL,
  FileType NVARCHAR(75) NOT NULL,
  Metadata NVARCHAR(1000)
  PRIMARY KEY (CustomerFileId)
);

CREATE TABLE CustomerFileWorkArea (
  CustomerFileId NVARCHAR(50) NOT NULL,
  WorkAreaId NVARCHAR(50) NOT NULL
  PRIMARY KEY (CustomerFileId, WorkAreaId)
);

CREATE TABLE CustomerFileWorkspace (
  CustomerFileId NVARCHAR(50) NOT NULL,
  WorkspaceId NVARCHAR(50) NOT NULL
  PRIMARY KEY (CustomerFileId, WorkspaceId)
);

CREATE TABLE Neighbourhood (
  NeighbourhoodId NVARCHAR(50) NOT NULL,
  OrganisationId NVARCHAR(50),
  Name NVARCHAR(200) NOT NULL,
  ValidFrom DATETIME2,
  ValidUntil DATETIME2,
  Color NVARCHAR(200)
  PRIMARY KEY (NeighbourhoodId)
);

CREATE TABLE NeighbourhoodWorkspace (
  NeighbourhoodId NVARCHAR(50) NOT NULL,
  WorkspaceId NVARCHAR(50) NOT NULL
  PRIMARY KEY (NeighbourhoodId, WorkspaceId)
);

CREATE TABLE TagNeighbourhood (
  TagId NVARCHAR(50) NOT NULL,
  NeighbourhoodId NVARCHAR(50) NOT NULL
  PRIMARY KEY (TagId, NeighbourhoodId)
);

CREATE TABLE Tag (
  TagId NVARCHAR(50) NOT NULL,
  Name NVARCHAR(200) NOT NULL
  PRIMARY KEY (TagId)
);

CREATE TABLE WorkArea (
  WorkAreaId NVARCHAR(50) NOT NULL,
  WorkAreaTypeId NVARCHAR(50) NOT NULL,
  AreaMeasurementId NVARCHAR(50) NOT NULL,
  Name NVARCHAR(200),
  WorkAreaCode NVARCHAR(70),
  ValidFrom DATETIME2,
  ValidUntil DATETIME2
  PRIMARY KEY (WorkAreaId)
);

CREATE TABLE WorkAreaFloor (
  WorkAreaId NVARCHAR(50) NOT NULL,
  FloorId NVARCHAR(50) NOT NULL
  PRIMARY KEY (WorkAreaId, FloorId)
);

CREATE TABLE WorkAreaSpace (
  WorkAreaId NVARCHAR(50) NOT NULL,
  SpaceId NVARCHAR(50) NOT NULL
  PRIMARY KEY (WorkAreaId, SpaceId)
);

CREATE TABLE WorkAreaType (
  WorkAreaTypeId NVARCHAR(50) NOT NULL,
  Name NVARCHAR(200) NOT NULL,
  ValidFrom DATETIME2,
  ValidUntil DATETIME2,
  Color NVARCHAR(50)
  PRIMARY KEY (WorkAreaTypeId)
);

CREATE TABLE Workspace (
  WorkspaceId NVARCHAR(50) NOT NULL,
  WorkAreaId NVARCHAR(50) NOT NULL,
  Name NVARCHAR(200) NOT NULL,
  WorkspaceCode NVARCHAR(70),
  Type NVARCHAR(75) NOT NULL,
  Capacity INT NOT NULL,
  Bookable BIT,
  ValidFrom DATETIME2,
  ValidUntil DATETIME2
  PRIMARY KEY (WorkspaceId)
);

CREATE TABLE WorkspaceSensor (
  WorkspaceId NVARCHAR(50) NOT NULL,
  SensorId NVARCHAR(50) NOT NULL
  PRIMARY KEY (WorkspaceId, SensorId)
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
ALTER TABLE AreaMeasurementRentalUnit ADD CONSTRAINT FK_AreaMeasurementRentalUnit_RentalUnit FOREIGN KEY (RentalUnitId) REFERENCES RentalUnit(RentalUnitId);
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
ALTER TABLE CertificateValuation ADD CONSTRAINT FK_CertificateValuation_Valuation FOREIGN KEY (ValuationId) REFERENCES Valuation(ValuationId);
ALTER TABLE Chiller ADD CONSTRAINT FK_Chiller_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE CoGenerator ADD CONSTRAINT FK_CoGenerator_Generator FOREIGN KEY (GeneratorId) REFERENCES Generator(GeneratorId);
ALTER TABLE Component ADD CONSTRAINT FK_Component_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE ComponentBuilding ADD CONSTRAINT FK_ComponentBuilding_Component FOREIGN KEY (ComponentId) REFERENCES Component(ComponentId);
ALTER TABLE ComponentBuilding ADD CONSTRAINT FK_ComponentBuilding_Building FOREIGN KEY (BuildingId) REFERENCES Building(BuildingId);
ALTER TABLE ComponentFloor ADD CONSTRAINT FK_ComponentFloor_Component FOREIGN KEY (ComponentId) REFERENCES Component(ComponentId);
ALTER TABLE ComponentFloor ADD CONSTRAINT FK_ComponentFloor_Floor FOREIGN KEY (FloorId) REFERENCES Floor(FloorId);
ALTER TABLE ComponentRentalUnit ADD CONSTRAINT FK_ComponentRentalUnit_Component FOREIGN KEY (ComponentId) REFERENCES Component(ComponentId);
ALTER TABLE ComponentRentalUnit ADD CONSTRAINT FK_ComponentRentalUnit_RentalUnit FOREIGN KEY (RentalUnitId) REFERENCES RentalUnit(RentalUnitId);
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
ALTER TABLE SensorRentalUnit ADD CONSTRAINT FK_SensorRentalUnit_RentalUnit FOREIGN KEY (RentalUnitId) REFERENCES RentalUnit(RentalUnitId);
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
ALTER TABLE SystemRentalUnit ADD CONSTRAINT FK_SystemRentalUnit_RentalUnit FOREIGN KEY (RentalUnitId) REFERENCES RentalUnit(RentalUnitId);
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
ALTER TABLE ClimateBuilding ADD CONSTRAINT FK_ClimateBuilding_Climate FOREIGN KEY (ClimateId) REFERENCES Climate(ClimateId);
ALTER TABLE ClimateBuilding ADD CONSTRAINT FK_ClimateBuilding_Building FOREIGN KEY (BuildingId) REFERENCES Building(BuildingId);
ALTER TABLE ClimateSite ADD CONSTRAINT FK_ClimateSite_Climate FOREIGN KEY (ClimateId) REFERENCES Climate(ClimateId);
ALTER TABLE ClimateSite ADD CONSTRAINT FK_ClimateSite_Site FOREIGN KEY (SiteId) REFERENCES Site(SiteId);
ALTER TABLE EmissionFactorBuilding ADD CONSTRAINT FK_EmissionFactorBuilding_EmissionFactor FOREIGN KEY (EmissionFactorId) REFERENCES EmissionFactor(EmissionFactorId);
ALTER TABLE EmissionFactorBuilding ADD CONSTRAINT FK_EmissionFactorBuilding_Building FOREIGN KEY (BuildingId) REFERENCES Building(BuildingId);
ALTER TABLE EmissionFactorOperationalMeasurement ADD CONSTRAINT FK_EmissionFactorOperationalMeasurement_EmissionFactor FOREIGN KEY (EmissionFactorId) REFERENCES EmissionFactor(EmissionFactorId);
ALTER TABLE EmissionFactorOperationalMeasurement ADD CONSTRAINT FK_EmissionFactorOperationalMeasurement_OperationalMeasurement FOREIGN KEY (OperationalMeasurementId) REFERENCES OperationalMeasurement(OperationalMeasurementId);
ALTER TABLE EmissionFactorSite ADD CONSTRAINT FK_EmissionFactorSite_EmissionFactor FOREIGN KEY (EmissionFactorId) REFERENCES EmissionFactor(EmissionFactorId);
ALTER TABLE EmissionFactorSite ADD CONSTRAINT FK_EmissionFactorSite_Site FOREIGN KEY (SiteId) REFERENCES Site(SiteId);
ALTER TABLE GhgEmission ADD CONSTRAINT FK_GhgEmission_OperationalMeasurement FOREIGN KEY (OperationalMeasurementId) REFERENCES OperationalMeasurement(OperationalMeasurementId);
ALTER TABLE GhgEmissionBuilding ADD CONSTRAINT FK_GhgEmissionBuilding_GhgEmission FOREIGN KEY (GhgEmissionId) REFERENCES GhgEmission(GhgEmissionId);
ALTER TABLE GhgEmissionBuilding ADD CONSTRAINT FK_GhgEmissionBuilding_Building FOREIGN KEY (BuildingId) REFERENCES Building(BuildingId);
ALTER TABLE GhgEmissionEmissionFactor ADD CONSTRAINT FK_GhgEmissionEmissionFactor_GhgEmission FOREIGN KEY (GhgEmissionId) REFERENCES GhgEmission(GhgEmissionId);
ALTER TABLE GhgEmissionEmissionFactor ADD CONSTRAINT FK_GhgEmissionEmissionFactor_EmissionFactor FOREIGN KEY (EmissionFactorId) REFERENCES EmissionFactor(EmissionFactorId);
ALTER TABLE GhgEmissionSite ADD CONSTRAINT FK_GhgEmissionSite_GhgEmission FOREIGN KEY (GhgEmissionId) REFERENCES GhgEmission(GhgEmissionId);
ALTER TABLE GhgEmissionSite ADD CONSTRAINT FK_GhgEmissionSite_Site FOREIGN KEY (SiteId) REFERENCES Site(SiteId);
ALTER TABLE OperationalMeasurementBuilding ADD CONSTRAINT FK_OperationalMeasurementBuilding_OperationalMeasurement FOREIGN KEY (OperationalMeasurementId) REFERENCES OperationalMeasurement(OperationalMeasurementId);
ALTER TABLE OperationalMeasurementBuilding ADD CONSTRAINT FK_OperationalMeasurementBuilding_Building FOREIGN KEY (BuildingId) REFERENCES Building(BuildingId);
ALTER TABLE OperationalMeasurementFloor ADD CONSTRAINT FK_OperationalMeasurementFloor_OperationalMeasurement FOREIGN KEY (OperationalMeasurementId) REFERENCES OperationalMeasurement(OperationalMeasurementId);
ALTER TABLE OperationalMeasurementFloor ADD CONSTRAINT FK_OperationalMeasurementFloor_Floor FOREIGN KEY (FloorId) REFERENCES Floor(FloorId);
ALTER TABLE OperationalMeasurementLand ADD CONSTRAINT FK_OperationalMeasurementLand_OperationalMeasurement FOREIGN KEY (OperationalMeasurementId) REFERENCES OperationalMeasurement(OperationalMeasurementId);
ALTER TABLE OperationalMeasurementLand ADD CONSTRAINT FK_OperationalMeasurementLand_Land FOREIGN KEY (LandId) REFERENCES Land(LandId);
ALTER TABLE OperationalMeasurementRentalUnit ADD CONSTRAINT FK_OperationalMeasurementRentalUnit_OperationalMeasurement FOREIGN KEY (OperationalMeasurementId) REFERENCES OperationalMeasurement(OperationalMeasurementId);
ALTER TABLE OperationalMeasurementRentalUnit ADD CONSTRAINT FK_OperationalMeasurementRentalUnit_RentalUnit FOREIGN KEY (RentalUnitId) REFERENCES RentalUnit(RentalUnitId);
ALTER TABLE OperationalMeasurementSite ADD CONSTRAINT FK_OperationalMeasurementSite_OperationalMeasurement FOREIGN KEY (OperationalMeasurementId) REFERENCES OperationalMeasurement(OperationalMeasurementId);
ALTER TABLE OperationalMeasurementSite ADD CONSTRAINT FK_OperationalMeasurementSite_Site FOREIGN KEY (SiteId) REFERENCES Site(SiteId);
ALTER TABLE OperationalMeasurementSpace ADD CONSTRAINT FK_OperationalMeasurementSpace_OperationalMeasurement FOREIGN KEY (OperationalMeasurementId) REFERENCES OperationalMeasurement(OperationalMeasurementId);
ALTER TABLE OperationalMeasurementSpace ADD CONSTRAINT FK_OperationalMeasurementSpace_Space FOREIGN KEY (SpaceId) REFERENCES Space(SpaceId);
ALTER TABLE OperationalMeasurementUnit ADD CONSTRAINT FK_OperationalMeasurementUnit_OperationalMeasurement FOREIGN KEY (OperationalMeasurementId) REFERENCES OperationalMeasurement(OperationalMeasurementId);
ALTER TABLE OperationalMeasurementUnit ADD CONSTRAINT FK_OperationalMeasurementUnit_Unit FOREIGN KEY (UnitId) REFERENCES Unit(UnitId);
ALTER TABLE SustainabilityIndicator ADD CONSTRAINT FK_SustainabilityIndicator_Building FOREIGN KEY (BuildingId) REFERENCES Building(BuildingId);
ALTER TABLE CostCenter ADD CONSTRAINT FK_CostCenter_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
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
ALTER TABLE ValuationIndividualAccount ADD CONSTRAINT FK_ValuationIndividualAccount_IndividualAccount FOREIGN KEY (IndividualAccountId) REFERENCES IndividualAccount(IndividualAccountId);
ALTER TABLE ValuationLand ADD CONSTRAINT FK_ValuationLand_Valuation FOREIGN KEY (ValuationId) REFERENCES Valuation(ValuationId);
ALTER TABLE ValuationLand ADD CONSTRAINT FK_ValuationLand_Land FOREIGN KEY (LandId) REFERENCES Land(LandId);
ALTER TABLE ValuationOperationalMeasurement ADD CONSTRAINT FK_ValuationOperationalMeasurement_Valuation FOREIGN KEY (ValuationId) REFERENCES Valuation(ValuationId);
ALTER TABLE ValuationOperationalMeasurement ADD CONSTRAINT FK_ValuationOperationalMeasurement_OperationalMeasurement FOREIGN KEY (OperationalMeasurementId) REFERENCES OperationalMeasurement(OperationalMeasurementId);
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
ALTER TABLE AddressBuilding ADD CONSTRAINT FK_AddressBuilding_Address FOREIGN KEY (AddressId) REFERENCES Address(AddressId);
ALTER TABLE AddressBuilding ADD CONSTRAINT FK_AddressBuilding_Building FOREIGN KEY (BuildingId) REFERENCES Building(BuildingId);
ALTER TABLE AddressContact ADD CONSTRAINT FK_AddressContact_Address FOREIGN KEY (AddressId) REFERENCES Address(AddressId);
ALTER TABLE AddressContact ADD CONSTRAINT FK_AddressContact_Contact FOREIGN KEY (ContactId) REFERENCES Contact(ContactId);
ALTER TABLE AddressLand ADD CONSTRAINT FK_AddressLand_Address FOREIGN KEY (AddressId) REFERENCES Address(AddressId);
ALTER TABLE AddressLand ADD CONSTRAINT FK_AddressLand_Land FOREIGN KEY (LandId) REFERENCES Land(LandId);
ALTER TABLE AddressOrganisation ADD CONSTRAINT FK_AddressOrganisation_Address FOREIGN KEY (AddressId) REFERENCES Address(AddressId);
ALTER TABLE AddressOrganisation ADD CONSTRAINT FK_AddressOrganisation_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE AddressRentalUnit ADD CONSTRAINT FK_AddressRentalUnit_Address FOREIGN KEY (AddressId) REFERENCES Address(AddressId);
ALTER TABLE AddressRentalUnit ADD CONSTRAINT FK_AddressRentalUnit_RentalUnit FOREIGN KEY (RentalUnitId) REFERENCES RentalUnit(RentalUnitId);
ALTER TABLE AddressSite ADD CONSTRAINT FK_AddressSite_Address FOREIGN KEY (AddressId) REFERENCES Address(AddressId);
ALTER TABLE AddressSite ADD CONSTRAINT FK_AddressSite_Site FOREIGN KEY (SiteId) REFERENCES Site(SiteId);
ALTER TABLE Contact ADD CONSTRAINT FK_Contact_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE GeoCoordinate ADD CONSTRAINT FK_GeoCoordinate_Address FOREIGN KEY (AddressId) REFERENCES Address(AddressId);
ALTER TABLE RoleBuildingContact ADD CONSTRAINT FK_RoleBuildingContact_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleBuildingContact ADD CONSTRAINT FK_RoleBuildingContact_Building FOREIGN KEY (BuildingId) REFERENCES Building(BuildingId);
ALTER TABLE RoleBuildingContact ADD CONSTRAINT FK_RoleBuildingContact_Contact FOREIGN KEY (ContactId) REFERENCES Contact(ContactId);
ALTER TABLE RoleBuildingOrganisation ADD CONSTRAINT FK_RoleBuildingOrganisation_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleBuildingOrganisation ADD CONSTRAINT FK_RoleBuildingOrganisation_Building FOREIGN KEY (BuildingId) REFERENCES Building(BuildingId);
ALTER TABLE RoleBuildingOrganisation ADD CONSTRAINT FK_RoleBuildingOrganisation_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE RoleComponentContact ADD CONSTRAINT FK_RoleComponentContact_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleComponentContact ADD CONSTRAINT FK_RoleComponentContact_Component FOREIGN KEY (ComponentId) REFERENCES Component(ComponentId);
ALTER TABLE RoleComponentContact ADD CONSTRAINT FK_RoleComponentContact_Contact FOREIGN KEY (ContactId) REFERENCES Contact(ContactId);
ALTER TABLE RoleComponentOrganisation ADD CONSTRAINT FK_RoleComponentOrganisation_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleComponentOrganisation ADD CONSTRAINT FK_RoleComponentOrganisation_Component FOREIGN KEY (ComponentId) REFERENCES Component(ComponentId);
ALTER TABLE RoleComponentOrganisation ADD CONSTRAINT FK_RoleComponentOrganisation_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE RoleComponentTypeContact ADD CONSTRAINT FK_RoleComponentTypeContact_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleComponentTypeContact ADD CONSTRAINT FK_RoleComponentTypeContact_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE RoleComponentTypeContact ADD CONSTRAINT FK_RoleComponentTypeContact_Contact FOREIGN KEY (ContactId) REFERENCES Contact(ContactId);
ALTER TABLE RoleComponentTypeOrganisation ADD CONSTRAINT FK_RoleComponentTypeOrganisation_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleComponentTypeOrganisation ADD CONSTRAINT FK_RoleComponentTypeOrganisation_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE RoleComponentTypeOrganisation ADD CONSTRAINT FK_RoleComponentTypeOrganisation_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE RoleEmissionFactorContact ADD CONSTRAINT FK_RoleEmissionFactorContact_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleEmissionFactorContact ADD CONSTRAINT FK_RoleEmissionFactorContact_EmissionFactor FOREIGN KEY (EmissionFactorId) REFERENCES EmissionFactor(EmissionFactorId);
ALTER TABLE RoleEmissionFactorContact ADD CONSTRAINT FK_RoleEmissionFactorContact_Contact FOREIGN KEY (ContactId) REFERENCES Contact(ContactId);
ALTER TABLE RoleEmissionFactorOrganisation ADD CONSTRAINT FK_RoleEmissionFactorOrganisation_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleEmissionFactorOrganisation ADD CONSTRAINT FK_RoleEmissionFactorOrganisation_EmissionFactor FOREIGN KEY (EmissionFactorId) REFERENCES EmissionFactor(EmissionFactorId);
ALTER TABLE RoleEmissionFactorOrganisation ADD CONSTRAINT FK_RoleEmissionFactorOrganisation_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE RoleLandContact ADD CONSTRAINT FK_RoleLandContact_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleLandContact ADD CONSTRAINT FK_RoleLandContact_Land FOREIGN KEY (LandId) REFERENCES Land(LandId);
ALTER TABLE RoleLandContact ADD CONSTRAINT FK_RoleLandContact_Contact FOREIGN KEY (ContactId) REFERENCES Contact(ContactId);
ALTER TABLE RoleLandOrganisation ADD CONSTRAINT FK_RoleLandOrganisation_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleLandOrganisation ADD CONSTRAINT FK_RoleLandOrganisation_Land FOREIGN KEY (LandId) REFERENCES Land(LandId);
ALTER TABLE RoleLandOrganisation ADD CONSTRAINT FK_RoleLandOrganisation_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE RoleOperationalMeasurementContact ADD CONSTRAINT FK_RoleOperationalMeasurementContact_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleOperationalMeasurementContact ADD CONSTRAINT FK_RoleOperationalMeasurementContact_OperationalMeasurement FOREIGN KEY (OperationalMeasurementId) REFERENCES OperationalMeasurement(OperationalMeasurementId);
ALTER TABLE RoleOperationalMeasurementContact ADD CONSTRAINT FK_RoleOperationalMeasurementContact_Contact FOREIGN KEY (ContactId) REFERENCES Contact(ContactId);
ALTER TABLE RoleOperationalMeasurementOrganisation ADD CONSTRAINT FK_RoleOperationalMeasurementOrganisation_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleOperationalMeasurementOrganisation ADD CONSTRAINT FK_RoleOperationalMeasurementOrganisation_OperationalMeasurement FOREIGN KEY (OperationalMeasurementId) REFERENCES OperationalMeasurement(OperationalMeasurementId);
ALTER TABLE RoleOperationalMeasurementOrganisation ADD CONSTRAINT FK_RoleOperationalMeasurementOrganisation_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE RolePortfolioContact ADD CONSTRAINT FK_RolePortfolioContact_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RolePortfolioContact ADD CONSTRAINT FK_RolePortfolioContact_Portfolio FOREIGN KEY (PortfolioId) REFERENCES Portfolio(PortfolioId);
ALTER TABLE RolePortfolioContact ADD CONSTRAINT FK_RolePortfolioContact_Contact FOREIGN KEY (ContactId) REFERENCES Contact(ContactId);
ALTER TABLE RolePortfolioOrganisation ADD CONSTRAINT FK_RolePortfolioOrganisation_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RolePortfolioOrganisation ADD CONSTRAINT FK_RolePortfolioOrganisation_Portfolio FOREIGN KEY (PortfolioId) REFERENCES Portfolio(PortfolioId);
ALTER TABLE RolePortfolioOrganisation ADD CONSTRAINT FK_RolePortfolioOrganisation_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE RolePortfolioStrategyContact ADD CONSTRAINT FK_RolePortfolioStrategyContact_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RolePortfolioStrategyContact ADD CONSTRAINT FK_RolePortfolioStrategyContact_PortfolioStrategy FOREIGN KEY (PortfolioStrategyId) REFERENCES PortfolioStrategy(PortfolioStrategyId);
ALTER TABLE RolePortfolioStrategyContact ADD CONSTRAINT FK_RolePortfolioStrategyContact_Contact FOREIGN KEY (ContactId) REFERENCES Contact(ContactId);
ALTER TABLE RolePortfolioStrategyOrganisation ADD CONSTRAINT FK_RolePortfolioStrategyOrganisation_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RolePortfolioStrategyOrganisation ADD CONSTRAINT FK_RolePortfolioStrategyOrganisation_PortfolioStrategy FOREIGN KEY (PortfolioStrategyId) REFERENCES PortfolioStrategy(PortfolioStrategyId);
ALTER TABLE RolePortfolioStrategyOrganisation ADD CONSTRAINT FK_RolePortfolioStrategyOrganisation_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE RoleRentalContractContact ADD CONSTRAINT FK_RoleRentalContractContact_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleRentalContractContact ADD CONSTRAINT FK_RoleRentalContractContact_RentalContract FOREIGN KEY (RentalContractId) REFERENCES RentalContract(RentalContractId);
ALTER TABLE RoleRentalContractContact ADD CONSTRAINT FK_RoleRentalContractContact_Contact FOREIGN KEY (ContactId) REFERENCES Contact(ContactId);
ALTER TABLE RoleRentalContractOrganisation ADD CONSTRAINT FK_RoleRentalContractOrganisation_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleRentalContractOrganisation ADD CONSTRAINT FK_RoleRentalContractOrganisation_RentalContract FOREIGN KEY (RentalContractId) REFERENCES RentalContract(RentalContractId);
ALTER TABLE RoleRentalContractOrganisation ADD CONSTRAINT FK_RoleRentalContractOrganisation_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE RoleRentalUnitContact ADD CONSTRAINT FK_RoleRentalUnitContact_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleRentalUnitContact ADD CONSTRAINT FK_RoleRentalUnitContact_RentalUnit FOREIGN KEY (RentalUnitId) REFERENCES RentalUnit(RentalUnitId);
ALTER TABLE RoleRentalUnitContact ADD CONSTRAINT FK_RoleRentalUnitContact_Contact FOREIGN KEY (ContactId) REFERENCES Contact(ContactId);
ALTER TABLE RoleRentalUnitOrganisation ADD CONSTRAINT FK_RoleRentalUnitOrganisation_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleRentalUnitOrganisation ADD CONSTRAINT FK_RoleRentalUnitOrganisation_RentalUnit FOREIGN KEY (RentalUnitId) REFERENCES RentalUnit(RentalUnitId);
ALTER TABLE RoleRentalUnitOrganisation ADD CONSTRAINT FK_RoleRentalUnitOrganisation_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE RoleSiteContact ADD CONSTRAINT FK_RoleSiteContact_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleSiteContact ADD CONSTRAINT FK_RoleSiteContact_Site FOREIGN KEY (SiteId) REFERENCES Site(SiteId);
ALTER TABLE RoleSiteContact ADD CONSTRAINT FK_RoleSiteContact_Contact FOREIGN KEY (ContactId) REFERENCES Contact(ContactId);
ALTER TABLE RoleSiteOrganisation ADD CONSTRAINT FK_RoleSiteOrganisation_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleSiteOrganisation ADD CONSTRAINT FK_RoleSiteOrganisation_Site FOREIGN KEY (SiteId) REFERENCES Site(SiteId);
ALTER TABLE RoleSiteOrganisation ADD CONSTRAINT FK_RoleSiteOrganisation_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE RoleSystemContact ADD CONSTRAINT FK_RoleSystemContact_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleSystemContact ADD CONSTRAINT FK_RoleSystemContact_System FOREIGN KEY (SystemId) REFERENCES System(SystemId);
ALTER TABLE RoleSystemContact ADD CONSTRAINT FK_RoleSystemContact_Contact FOREIGN KEY (ContactId) REFERENCES Contact(ContactId);
ALTER TABLE RoleSystemOrganisation ADD CONSTRAINT FK_RoleSystemOrganisation_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleSystemOrganisation ADD CONSTRAINT FK_RoleSystemOrganisation_System FOREIGN KEY (SystemId) REFERENCES System(SystemId);
ALTER TABLE RoleSystemOrganisation ADD CONSTRAINT FK_RoleSystemOrganisation_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE RoleTenantCommunicationContact ADD CONSTRAINT FK_RoleTenantCommunicationContact_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleTenantCommunicationContact ADD CONSTRAINT FK_RoleTenantCommunicationContact_TenantCommunication FOREIGN KEY (TenantCommunicationId) REFERENCES TenantCommunication(TenantCommunicationId);
ALTER TABLE RoleTenantCommunicationContact ADD CONSTRAINT FK_RoleTenantCommunicationContact_Contact FOREIGN KEY (ContactId) REFERENCES Contact(ContactId);
ALTER TABLE RoleTenantCommunicationOrganisation ADD CONSTRAINT FK_RoleTenantCommunicationOrganisation_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleTenantCommunicationOrganisation ADD CONSTRAINT FK_RoleTenantCommunicationOrganisation_TenantCommunication FOREIGN KEY (TenantCommunicationId) REFERENCES TenantCommunication(TenantCommunicationId);
ALTER TABLE RoleTenantCommunicationOrganisation ADD CONSTRAINT FK_RoleTenantCommunicationOrganisation_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE RoleValuationContact ADD CONSTRAINT FK_RoleValuationContact_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleValuationContact ADD CONSTRAINT FK_RoleValuationContact_Valuation FOREIGN KEY (ValuationId) REFERENCES Valuation(ValuationId);
ALTER TABLE RoleValuationContact ADD CONSTRAINT FK_RoleValuationContact_Contact FOREIGN KEY (ContactId) REFERENCES Contact(ContactId);
ALTER TABLE RoleValuationOrganisation ADD CONSTRAINT FK_RoleValuationOrganisation_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleValuationOrganisation ADD CONSTRAINT FK_RoleValuationOrganisation_Valuation FOREIGN KEY (ValuationId) REFERENCES Valuation(ValuationId);
ALTER TABLE RoleValuationOrganisation ADD CONSTRAINT FK_RoleValuationOrganisation_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE SustainabilityIndicatorEmissionFactor ADD CONSTRAINT FK_SustainabilityIndicatorEmissionFactor_SustainabilityIndicator FOREIGN KEY (SustainabilityIndicatorId) REFERENCES SustainabilityIndicator(SustainabilityIndicatorId);
ALTER TABLE SustainabilityIndicatorEmissionFactor ADD CONSTRAINT FK_SustainabilityIndicatorEmissionFactor_EmissionFactor FOREIGN KEY (EmissionFactorId) REFERENCES EmissionFactor(EmissionFactorId);
ALTER TABLE Ups ADD CONSTRAINT FK_Ups_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE UrinalFlushometer ADD CONSTRAINT FK_UrinalFlushometer_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE VariableFrequencyDrive ADD CONSTRAINT FK_VariableFrequencyDrive_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE VavBoxReheat ADD CONSTRAINT FK_VavBoxReheat_TerminalUnit FOREIGN KEY (TerminalUnitId) REFERENCES TerminalUnit(TerminalUnitId);
ALTER TABLE WaterFiltration ADD CONSTRAINT FK_WaterFiltration_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE WaterHeater ADD CONSTRAINT FK_WaterHeater_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE WaterMeter ADD CONSTRAINT FK_WaterMeter_ComponentType FOREIGN KEY (ComponentTypeId) REFERENCES ComponentType(ComponentTypeId);
ALTER TABLE WirelessAccessPoint ADD CONSTRAINT FK_WirelessAccessPoint_DataNetworkEquipment FOREIGN KEY (DataNetworkEquipmentId) REFERENCES DataNetworkEquipment(DataNetworkEquipmentId);
ALTER TABLE AvailableResourceWorkspace ADD CONSTRAINT FK_AvailableResourceWorkspace_AvailableResource FOREIGN KEY (AvailableResourceId) REFERENCES AvailableResource(AvailableResourceId);
ALTER TABLE AvailableResourceWorkspace ADD CONSTRAINT FK_AvailableResourceWorkspace_Workspace FOREIGN KEY (WorkspaceId) REFERENCES Workspace(WorkspaceId);
ALTER TABLE BookingWorkspace ADD CONSTRAINT FK_BookingWorkspace_Booking FOREIGN KEY (BookingId) REFERENCES Booking(BookingId);
ALTER TABLE BookingWorkspace ADD CONSTRAINT FK_BookingWorkspace_Workspace FOREIGN KEY (WorkspaceId) REFERENCES Workspace(WorkspaceId);
ALTER TABLE CharacteristicNeighbourhood ADD CONSTRAINT FK_CharacteristicNeighbourhood_Characteristic FOREIGN KEY (CharacteristicId) REFERENCES Characteristic(CharacteristicId);
ALTER TABLE CharacteristicNeighbourhood ADD CONSTRAINT FK_CharacteristicNeighbourhood_Neighbourhood FOREIGN KEY (NeighbourhoodId) REFERENCES Neighbourhood(NeighbourhoodId);
ALTER TABLE CharacteristicWorkspace ADD CONSTRAINT FK_CharacteristicWorkspace_Characteristic FOREIGN KEY (CharacteristicId) REFERENCES Characteristic(CharacteristicId);
ALTER TABLE CharacteristicWorkspace ADD CONSTRAINT FK_CharacteristicWorkspace_Workspace FOREIGN KEY (WorkspaceId) REFERENCES Workspace(WorkspaceId);
ALTER TABLE CustomerFileWorkArea ADD CONSTRAINT FK_CustomerFileWorkArea_CustomerFile FOREIGN KEY (CustomerFileId) REFERENCES CustomerFile(CustomerFileId);
ALTER TABLE CustomerFileWorkArea ADD CONSTRAINT FK_CustomerFileWorkArea_WorkArea FOREIGN KEY (WorkAreaId) REFERENCES WorkArea(WorkAreaId);
ALTER TABLE CustomerFileWorkspace ADD CONSTRAINT FK_CustomerFileWorkspace_CustomerFile FOREIGN KEY (CustomerFileId) REFERENCES CustomerFile(CustomerFileId);
ALTER TABLE CustomerFileWorkspace ADD CONSTRAINT FK_CustomerFileWorkspace_Workspace FOREIGN KEY (WorkspaceId) REFERENCES Workspace(WorkspaceId);
ALTER TABLE Neighbourhood ADD CONSTRAINT FK_Neighbourhood_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE NeighbourhoodWorkspace ADD CONSTRAINT FK_NeighbourhoodWorkspace_Neighbourhood FOREIGN KEY (NeighbourhoodId) REFERENCES Neighbourhood(NeighbourhoodId);
ALTER TABLE NeighbourhoodWorkspace ADD CONSTRAINT FK_NeighbourhoodWorkspace_Workspace FOREIGN KEY (WorkspaceId) REFERENCES Workspace(WorkspaceId);
ALTER TABLE TagNeighbourhood ADD CONSTRAINT FK_TagNeighbourhood_Tag FOREIGN KEY (TagId) REFERENCES Tag(TagId);
ALTER TABLE TagNeighbourhood ADD CONSTRAINT FK_TagNeighbourhood_Neighbourhood FOREIGN KEY (NeighbourhoodId) REFERENCES Neighbourhood(NeighbourhoodId);
ALTER TABLE WorkArea ADD CONSTRAINT FK_WorkArea_WorkAreaType FOREIGN KEY (WorkAreaTypeId) REFERENCES WorkAreaType(WorkAreaTypeId);
ALTER TABLE WorkArea ADD CONSTRAINT FK_WorkArea_AreaMeasurement FOREIGN KEY (AreaMeasurementId) REFERENCES AreaMeasurement(AreaMeasurementId);
ALTER TABLE WorkAreaFloor ADD CONSTRAINT FK_WorkAreaFloor_WorkArea FOREIGN KEY (WorkAreaId) REFERENCES WorkArea(WorkAreaId);
ALTER TABLE WorkAreaFloor ADD CONSTRAINT FK_WorkAreaFloor_Floor FOREIGN KEY (FloorId) REFERENCES Floor(FloorId);
ALTER TABLE WorkAreaSpace ADD CONSTRAINT FK_WorkAreaSpace_WorkArea FOREIGN KEY (WorkAreaId) REFERENCES WorkArea(WorkAreaId);
ALTER TABLE WorkAreaSpace ADD CONSTRAINT FK_WorkAreaSpace_Space FOREIGN KEY (SpaceId) REFERENCES Space(SpaceId);
ALTER TABLE Workspace ADD CONSTRAINT FK_Workspace_WorkArea FOREIGN KEY (WorkAreaId) REFERENCES WorkArea(WorkAreaId);
ALTER TABLE WorkspaceSensor ADD CONSTRAINT FK_WorkspaceSensor_Workspace FOREIGN KEY (WorkspaceId) REFERENCES Workspace(WorkspaceId);
ALTER TABLE WorkspaceSensor ADD CONSTRAINT FK_WorkspaceSensor_Sensor FOREIGN KEY (SensorId) REFERENCES Sensor(SensorId);
