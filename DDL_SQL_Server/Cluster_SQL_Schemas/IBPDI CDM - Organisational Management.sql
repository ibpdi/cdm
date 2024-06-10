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

ALTER TABLE AddressBuilding ADD CONSTRAINT FK_AddressBuilding_Address FOREIGN KEY (AddressId) REFERENCES Address(AddressId);
ALTER TABLE AddressBuilding ADD CONSTRAINT FK_AddressBuilding_Building FOREIGN KEY (BuildingId) REFERENCES Building(BuildingId);
ALTER TABLE AddressContact ADD CONSTRAINT FK_AddressContact_Address FOREIGN KEY (AddressId) REFERENCES Address(AddressId);
ALTER TABLE AddressContact ADD CONSTRAINT FK_AddressContact_Contact FOREIGN KEY (ContactId) REFERENCES Contact(ContactId);
ALTER TABLE AddressLand ADD CONSTRAINT FK_AddressLand_Address FOREIGN KEY (AddressId) REFERENCES Address(AddressId);
ALTER TABLE AddressLand ADD CONSTRAINT FK_AddressLand_Land FOREIGN KEY (LandId) REFERENCES Land(LandId);
ALTER TABLE AddressOrganisation ADD CONSTRAINT FK_AddressOrganisation_Address FOREIGN KEY (AddressId) REFERENCES Address(AddressId);
ALTER TABLE AddressOrganisation ADD CONSTRAINT FK_AddressOrganisation_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE AddressRentalUnit ADD CONSTRAINT FK_AddressRentalUnit_Address FOREIGN KEY (AddressId) REFERENCES Address(AddressId);
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
ALTER TABLE RoleEmissionFactorContact ADD CONSTRAINT FK_RoleEmissionFactorContact_Contact FOREIGN KEY (ContactId) REFERENCES Contact(ContactId);
ALTER TABLE RoleEmissionFactorOrganisation ADD CONSTRAINT FK_RoleEmissionFactorOrganisation_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleEmissionFactorOrganisation ADD CONSTRAINT FK_RoleEmissionFactorOrganisation_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE RoleLandContact ADD CONSTRAINT FK_RoleLandContact_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleLandContact ADD CONSTRAINT FK_RoleLandContact_Land FOREIGN KEY (LandId) REFERENCES Land(LandId);
ALTER TABLE RoleLandContact ADD CONSTRAINT FK_RoleLandContact_Contact FOREIGN KEY (ContactId) REFERENCES Contact(ContactId);
ALTER TABLE RoleLandOrganisation ADD CONSTRAINT FK_RoleLandOrganisation_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleLandOrganisation ADD CONSTRAINT FK_RoleLandOrganisation_Land FOREIGN KEY (LandId) REFERENCES Land(LandId);
ALTER TABLE RoleLandOrganisation ADD CONSTRAINT FK_RoleLandOrganisation_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE RoleOperationalMeasurementContact ADD CONSTRAINT FK_RoleOperationalMeasurementContact_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleOperationalMeasurementContact ADD CONSTRAINT FK_RoleOperationalMeasurementContact_Contact FOREIGN KEY (ContactId) REFERENCES Contact(ContactId);
ALTER TABLE RoleOperationalMeasurementOrganisation ADD CONSTRAINT FK_RoleOperationalMeasurementOrganisation_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleOperationalMeasurementOrganisation ADD CONSTRAINT FK_RoleOperationalMeasurementOrganisation_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE RolePortfolioContact ADD CONSTRAINT FK_RolePortfolioContact_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RolePortfolioContact ADD CONSTRAINT FK_RolePortfolioContact_Contact FOREIGN KEY (ContactId) REFERENCES Contact(ContactId);
ALTER TABLE RolePortfolioOrganisation ADD CONSTRAINT FK_RolePortfolioOrganisation_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RolePortfolioOrganisation ADD CONSTRAINT FK_RolePortfolioOrganisation_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE RolePortfolioStrategyContact ADD CONSTRAINT FK_RolePortfolioStrategyContact_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RolePortfolioStrategyContact ADD CONSTRAINT FK_RolePortfolioStrategyContact_Contact FOREIGN KEY (ContactId) REFERENCES Contact(ContactId);
ALTER TABLE RolePortfolioStrategyOrganisation ADD CONSTRAINT FK_RolePortfolioStrategyOrganisation_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RolePortfolioStrategyOrganisation ADD CONSTRAINT FK_RolePortfolioStrategyOrganisation_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE RoleRentalContractContact ADD CONSTRAINT FK_RoleRentalContractContact_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleRentalContractContact ADD CONSTRAINT FK_RoleRentalContractContact_Contact FOREIGN KEY (ContactId) REFERENCES Contact(ContactId);
ALTER TABLE RoleRentalContractOrganisation ADD CONSTRAINT FK_RoleRentalContractOrganisation_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleRentalContractOrganisation ADD CONSTRAINT FK_RoleRentalContractOrganisation_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE RoleRentalUnitContact ADD CONSTRAINT FK_RoleRentalUnitContact_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleRentalUnitContact ADD CONSTRAINT FK_RoleRentalUnitContact_Contact FOREIGN KEY (ContactId) REFERENCES Contact(ContactId);
ALTER TABLE RoleRentalUnitOrganisation ADD CONSTRAINT FK_RoleRentalUnitOrganisation_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
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
ALTER TABLE RoleTenantCommunicationContact ADD CONSTRAINT FK_RoleTenantCommunicationContact_Contact FOREIGN KEY (ContactId) REFERENCES Contact(ContactId);
ALTER TABLE RoleTenantCommunicationOrganisation ADD CONSTRAINT FK_RoleTenantCommunicationOrganisation_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleTenantCommunicationOrganisation ADD CONSTRAINT FK_RoleTenantCommunicationOrganisation_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE RoleValuationContact ADD CONSTRAINT FK_RoleValuationContact_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleValuationContact ADD CONSTRAINT FK_RoleValuationContact_Contact FOREIGN KEY (ContactId) REFERENCES Contact(ContactId);
ALTER TABLE RoleValuationOrganisation ADD CONSTRAINT FK_RoleValuationOrganisation_Role FOREIGN KEY (RoleId) REFERENCES Role(RoleId);
ALTER TABLE RoleValuationOrganisation ADD CONSTRAINT FK_RoleValuationOrganisation_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE CostCenter ADD CONSTRAINT FK_CostCenter_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
ALTER TABLE AddressRentalUnit ADD CONSTRAINT FK_AddressRentalUnit_RentalUnit FOREIGN KEY (RentalUnitId) REFERENCES RentalUnit(RentalUnitId);
ALTER TABLE RoleRentalContractContact ADD CONSTRAINT FK_RoleRentalContractContact_RentalContract FOREIGN KEY (RentalContractId) REFERENCES RentalContract(RentalContractId);
ALTER TABLE RoleRentalContractOrganisation ADD CONSTRAINT FK_RoleRentalContractOrganisation_RentalContract FOREIGN KEY (RentalContractId) REFERENCES RentalContract(RentalContractId);
ALTER TABLE RoleRentalUnitContact ADD CONSTRAINT FK_RoleRentalUnitContact_RentalUnit FOREIGN KEY (RentalUnitId) REFERENCES RentalUnit(RentalUnitId);
ALTER TABLE RoleRentalUnitOrganisation ADD CONSTRAINT FK_RoleRentalUnitOrganisation_RentalUnit FOREIGN KEY (RentalUnitId) REFERENCES RentalUnit(RentalUnitId);
ALTER TABLE RoleTenantCommunicationContact ADD CONSTRAINT FK_RoleTenantCommunicationContact_TenantCommunication FOREIGN KEY (TenantCommunicationId) REFERENCES TenantCommunication(TenantCommunicationId);
ALTER TABLE RoleTenantCommunicationOrganisation ADD CONSTRAINT FK_RoleTenantCommunicationOrganisation_TenantCommunication FOREIGN KEY (TenantCommunicationId) REFERENCES TenantCommunication(TenantCommunicationId);
ALTER TABLE Neighbourhood ADD CONSTRAINT FK_Neighbourhood_Organisation FOREIGN KEY (OrganisationId) REFERENCES Organisation(OrganisationId);
