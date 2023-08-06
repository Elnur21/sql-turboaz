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
	[COntrollerPower] int not null,
	[StoreId] int not null,
	[IsColored] int not null,
	[NumberOfPlaces] int not null,
	[IsCredit] bit not null,
	[IsTransfer] bit not null,
	[VinCode] varchar(50) not null,
	[AdditionalInfo] varchar(200) null,
)





CREATE TABLE Contacts(
[Id] int Identity(1,1) PRIMARY KEY,
	[Name] nvarchar(100) not null,
	[Place] nvarchar(100) not null,
	[Email] varchar(100) not null,
	[Phone] nvarchar(100) not null,
)