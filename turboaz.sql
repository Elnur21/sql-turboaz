CREATE DATABASE TurboAZ

CREATE TABLE Markas(
	[Id] int Identity(1,1) PRIMARY KEY,
	[Name] nvarchar(100) not null
)

CREATE TABLE Models(
	[Id] int Identity(1,1) PRIMARY KEY,
	[Name] nvarchar(100) not null
)

CREATE TABLE BanTypes(
	[Id] int Identity(1,1) PRIMARY KEY,
	[Name] nvarchar(100) not null
)

CREATE TABLE Colors(
	[Id] int Identity(1,1) PRIMARY KEY,
	[Name] nvarchar(100) not null
)

CREATE TABLE FuelTypes(
	[Id] int Identity(1,1) PRIMARY KEY,
	[Name] nvarchar(100) not null
)

CREATE TABLE Transmissions(
	[Id] int Identity(1,1) PRIMARY KEY,
	[Name] nvarchar(100) not null
)

CREATE TABLE SpeedBoxes(
	[Id] int Identity(1,1) PRIMARY KEY,
	[Name] nvarchar(100) not null
)

CREATE TABLE Stores(
	[Id] int Identity(1,1) PRIMARY KEY,
	[Name] nvarchar(100) not null
)

CREATE TABLE Situations(
	[Id] int Identity(1,1) PRIMARY KEY,
	[Name] nvarchar(100) not null
)

CREATE TABLE Cars(
	[Id] int Identity(1,1) PRIMARY KEY,
	[MarkaId] int not null,
	[ModelId] int not null,
	[BanTypeId] int not null,
	[Distance] int not null,
	[ColorId] int not null,
	[Money] int not null,
	[Owner] int not null,
	[SituationId] int not null,
	[FualTypeId] int not null,
	[TransmissionId] int not null,
	[SpeedBoxId] int not null,
	[Year] int not null,
	[ControllerVolume] int not null,
	[ControllerPower] int not null,
	[StoreId] int not null,
	[IsColored] int not null,
	[NumberOfPlaces] int not null,
	[IsCredit] bit not null,
	[IsTransfer] bit not null,
	[VinCode] varchar(50) not null,
	[AdditionalInfo] varchar(200) null,
)

ALTER TABLE Cars
ADD CONSTRAINT FK_Cars_Markas FOREIGN KEY (MarkaId) REFERENCES Markas(Id);

ALTER TABLE Cars
ADD CONSTRAINT FK_Cars_Models FOREIGN KEY (ModelId) REFERENCES Models(Id);

ALTER TABLE Cars
ADD CONSTRAINT FK_Cars_BanTypes FOREIGN KEY (BanTypeId) REFERENCES BanTypes(Id);

ALTER TABLE Cars
ADD CONSTRAINT FK_Cars_Colors FOREIGN KEY (ColorId) REFERENCES Colors(Id);

EXEC sp_rename 'Cars.FualTypeId', 'FuelTypeId', 'COLUMN';

ALTER TABLE Cars
ADD CONSTRAINT FK_Cars_FuelTypes FOREIGN KEY (FuelTypeId) REFERENCES FuelTypes(Id);

ALTER TABLE Cars
ADD CONSTRAINT FK_Cars_Transmissions FOREIGN KEY (TransmissionId) REFERENCES Transmissions(Id);

ALTER TABLE Cars
ADD CONSTRAINT FK_Cars_SpeedBoxes FOREIGN KEY (SpeedBoxId) REFERENCES SpeedBoxes(Id);

ALTER TABLE Cars
ADD CONSTRAINT FK_Cars_Stores FOREIGN KEY (StoreId) REFERENCES Stores(Id);

ALTER TABLE Cars
ADD CONSTRAINT FK_Cars_Situations FOREIGN KEY (SituationId) REFERENCES Situations(Id);

ALTER TABLE Cars
ADD CONSTRAINT CHK_Cars_Year CHECK (Year >= 1900 AND Year <= YEAR(GETDATE()));

ALTER TABLE Cars
ADD CONSTRAINT CHK_Cars_ControllerVolume CHECK (ControllerVolume >= 0 AND ControllerVolume <= 10000);

ALTER TABLE Cars
ADD CONSTRAINT CHK_Cars_ControllerPower CHECK (ControllerPower >= 0 AND ControllerPower <= 10000);

ALTER TABLE Cars
ADD CONSTRAINT UQ_Cars_VinCode UNIQUE (VinCode);

ALTER TABLE Cars
ADD CONSTRAINT DF_Cars_IsCredit DEFAULT (0) FOR IsCredit;

ALTER TABLE Cars
ADD CONSTRAINT DF_Cars_IsTransfer DEFAULT (0) FOR IsTransfer;

ALTER TABLE Cars
ADD CONSTRAINT DF_Cars_IsColored DEFAULT (0) FOR IsColored;

CREATE TABLE Contacts(
[Id] int Identity(1,1) PRIMARY KEY,
	[Name] nvarchar(100) not null,
	[Place] nvarchar(100) not null,
	[Email] varchar(100) not null,
	[Phone] nvarchar(100) not null,
)

ALTER TABLE Cars
ADD OwnerId int;

ALTER TABLE Cars
ADD CONSTRAINT FK_Cars_Contacts FOREIGN KEY (OwnerId) REFERENCES Contacts(Id);