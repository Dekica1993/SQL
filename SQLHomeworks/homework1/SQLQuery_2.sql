create table dbo.Student (
Id int IDENTITY (1,1),
FirstName NVARCHAR (20) not null,
LastName NVARCHAR (50) not null,
DateOfBirth date null,
EnrolledDate date null,
Gender NVARCHAR (20) not null,
NationalIdNumber NVARCHAR (50) not null,
StudentCardNumber int not null,
)

create table dbo.Teacher (
Id int IDENTITY (1,1),
FirstName NVARCHAR (20) not null,
LastName NVARCHAR (50) not null,
DateOfBirth date null,
AcademikRank NVARCHAR (20) null,
HireDate date null
)


create table dbo.Grade (
StudentId int IDENTITY (1,1),
CourseId int not null,
TeacherId int not null,
Grade NVARCHAR (50) null,
Comment NVARCHAR (50),
CreatedDate date null,
)


create table dbo.Course (
Id int IDENTITY (1,1),
FirstName NVARCHAR (20) not null,
Credit NVARCHAR (50) not null,
AcademicYear date  not null, 
Semester NVARCHAR (50) not null,
)

create table dbo.GradeDetails (
Id int IDENTITY (1,1),
GradeId NVARCHAR (50) not null,
AchievementTypeId NVARCHAR (50) not null,
AchievementPoints NVARCHAR (50) not null,
AchievementMaxPoints NVARCHAR (50) not null,
AchievementDate date  null,
)

create table dbo.AchievementType (
Id int IDENTITY (1,1),
Name NVARCHAR (20) not null,
Description NVARCHAR (50) not null,
ParticipationRate NVARCHAR (50)  null
)