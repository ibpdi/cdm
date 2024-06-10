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
ALTER TABLE OperationalMeasurementSite ADD CONSTRAINT FK_OperationalMeasurementSite_OperationalMeasurement FOREIGN KEY (OperationalMeasurementId) REFERENCES OperationalMeasurement(OperationalMeasurementId);
ALTER TABLE OperationalMeasurementSite ADD CONSTRAINT FK_OperationalMeasurementSite_Site FOREIGN KEY (SiteId) REFERENCES Site(SiteId);
ALTER TABLE OperationalMeasurementSpace ADD CONSTRAINT FK_OperationalMeasurementSpace_OperationalMeasurement FOREIGN KEY (OperationalMeasurementId) REFERENCES OperationalMeasurement(OperationalMeasurementId);
ALTER TABLE OperationalMeasurementSpace ADD CONSTRAINT FK_OperationalMeasurementSpace_Space FOREIGN KEY (SpaceId) REFERENCES Space(SpaceId);
ALTER TABLE OperationalMeasurementUnit ADD CONSTRAINT FK_OperationalMeasurementUnit_OperationalMeasurement FOREIGN KEY (OperationalMeasurementId) REFERENCES OperationalMeasurement(OperationalMeasurementId);
ALTER TABLE OperationalMeasurementUnit ADD CONSTRAINT FK_OperationalMeasurementUnit_Unit FOREIGN KEY (UnitId) REFERENCES Unit(UnitId);
ALTER TABLE SustainabilityIndicator ADD CONSTRAINT FK_SustainabilityIndicator_Building FOREIGN KEY (BuildingId) REFERENCES Building(BuildingId);
ALTER TABLE ValuationOperationalMeasurement ADD CONSTRAINT FK_ValuationOperationalMeasurement_OperationalMeasurement FOREIGN KEY (OperationalMeasurementId) REFERENCES OperationalMeasurement(OperationalMeasurementId);
ALTER TABLE RoleEmissionFactorContact ADD CONSTRAINT FK_RoleEmissionFactorContact_EmissionFactor FOREIGN KEY (EmissionFactorId) REFERENCES EmissionFactor(EmissionFactorId);
ALTER TABLE RoleEmissionFactorOrganisation ADD CONSTRAINT FK_RoleEmissionFactorOrganisation_EmissionFactor FOREIGN KEY (EmissionFactorId) REFERENCES EmissionFactor(EmissionFactorId);
ALTER TABLE RoleOperationalMeasurementContact ADD CONSTRAINT FK_RoleOperationalMeasurementContact_OperationalMeasurement FOREIGN KEY (OperationalMeasurementId) REFERENCES OperationalMeasurement(OperationalMeasurementId);
ALTER TABLE RoleOperationalMeasurementOrganisation ADD CONSTRAINT FK_RoleOperationalMeasurementOrganisation_OperationalMeasurement FOREIGN KEY (OperationalMeasurementId) REFERENCES OperationalMeasurement(OperationalMeasurementId);
ALTER TABLE OperationalMeasurementRentalUnit ADD CONSTRAINT FK_OperationalMeasurementRentalUnit_RentalUnit FOREIGN KEY (RentalUnitId) REFERENCES RentalUnit(RentalUnitId);