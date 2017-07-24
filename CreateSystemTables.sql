use [LearnerPortal]
go

print char(13) + '1. Start Query CreateSystemTables Execution'

print char(13) + '2. Enable quoted_identifier'
set quoted_identifier on
go

print char(13) + '2. Create Table Users'
if exists (select * from information_schema.tables where table_name = 'Users')
	begin
		drop table dbo.Users
	end

create table dbo.Users
(
	[Id] int identity(1,1) primary key not null,
	[Name] varchar(50) not null,
	[Surname] varchar(50) not null,
	[Position] varchar(50) not null,
	[Username] varchar(50) not null,
	[Password] varbinary(max) not null,
	[IsDefaultPassword] bit not null,
	[ActiveUser] bit not null
)

print char(13) + '3. Create Table Auditing_Logs'
if exists (select * from information_schema.tables where table_name = 'Auditing_Logs')
	begin
		drop table dbo.Auditing_Logs
	end

create table dbo.Auditing_Logs
(
	[Id] int identity(1,1) primary key not null,
	[Username] varchar(50) not null,
	[Table] varchar(50) not null,
	[BeforeValue] varchar(max) not null,
	[AfterValue] varchar(max) not null,
	[ModifiedDate] datetime not null default getdate(),
)

print char(13) + '4. Create Table Binary_Data'
if exists (select * from information_schema.tables where table_name = 'Binary_Data')
	begin
		drop table dbo.Binary_Data
	end

create table dbo.Binary_Data
(
	[Id] int identity(1,1) primary key not null,
	[FileName] varchar(50) not null,
	[Extension] varchar(50) not null,
	[LinkedTable] varchar(50) not null,
	[UploadPath] varchar(max) not null,
	[UploadDate] datetime not null default getdate(),
	[BinaryData] varbinary(max) not null
)

print char(13) + '5. Create Table Software_Control'
if exists (select * from information_schema.tables where table_name = 'Software_Control')
	begin
		drop table dbo.Software_Control
	end

create table dbo.Software_Control
(
	[Id] int identity(1,1) primary key not null,
	[Name] varchar(50) not null,
	[Description] varchar(max) not null
)

print char(13) + '6. Create Table Look_Up_Schools'
if exists (select * from information_schema.tables where table_name = 'Look_Up_Schools')
	begin
		drop table dbo.Look_Up_Schools
	end

create table dbo.Look_Up_Schools
(
	[Id] int identity(1,1) not null primary key clustered,
	[SchoolIdentity] as 'SID' + '2017' + right('0000' + cast(Id as varchar(4)), 4) persisted,
	[Name] varchar(50) not null,
	[Address] varchar(50) not null,
	[PhoneNumber] varchar(50) not null,
	[ContactPersonName] varchar(50) not null,
	[ContactPersonSurname] varchar(50) not null,
	[ContactPersonPhone] varchar(50) not null,
	[PrincipalName] varchar(50) not null,
	[PrincipalSurname] varchar(50) not null,
	[PrincipalPhone] varchar(50) not null,
	[IsPrimarySchool] bit not null,
	[IsHighSchool] bit not null,
	[NumberOfGrades] int not null,
	[IsPublic] bit not null,
	[LanguageOfChoice] varchar(50) not null,
	[MainSchoolColour] bit not null,
	[SecondSchoolColor] bit not null,
	[SchoolLogo] int not null,
)

print char(13) + '7. Create Table Teachers'
if exists (select * from information_schema.tables where table_name = 'Teachers')
	begin
		drop table dbo.Teachers
	end

create table dbo.Teachers
(
	[Id] int identity(1,1) not null primary key clustered,
	[TeacherIdentity] as 'TID' + '2017' + right('0000' + cast(Id as varchar(4)), 4) persisted,
	[Name] varchar(50) not null,
	[Surname] varchar(max) not null,
	[IdentityNumber] varchar(13) not null,
	[Gender] varchar(50) not null,
	[ContactNumber] varchar(50) not null,
	[HighestQualification] varchar(50) not null,
	[SchoolIdentity] int not null,
	[ClassGrade] varchar(50) not null,
)

print char(13) + '8. Create Table Learner'
if exists (select * from information_schema.tables where table_name = 'Learner')
	begin
		drop table dbo.Learner
	end

create table dbo.Learner
(
	[Id] int identity(1,1) not null primary key clustered,
	[LearnerIdentity] as 'LID' + '2017' + right('0000' + cast(Id as varchar(4)), 4) persisted,
	[Name] varchar(50) not null,
	[Surname] varchar(max) not null,
	[IdentityNumber] varchar(13) not null,
	[Gender] varchar(50) not null,
	[ContactNumber] varchar(50) not null,
	[TearcherIdentity] int not null,
	[SchoolIdentity] int not null,
	[ClassGrade] varchar(50) not null,
	[NumberOfSubjects] int not null
)

print char(13) + '9. Create Table Quote_Of_The_Day'
if exists (select * from information_schema.tables where table_name = 'Quote_Of_The_Day')
	begin
		drop table dbo.Quote_Of_The_Day
	end

create table dbo.Quote_Of_The_Day
(
	[Id] int identity(1,1) not null primary key,
	[Quote] varchar(max) not null
)

print char(13) + '10. End Query CreateSystemTables Executed Successfully'