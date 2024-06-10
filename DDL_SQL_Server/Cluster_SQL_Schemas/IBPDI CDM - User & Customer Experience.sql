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

