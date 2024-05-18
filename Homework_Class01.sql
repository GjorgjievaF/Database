CREATE DATABASE SEDCACADEMYDB

USE SEDCACADEMYDB

CREATE TABLE Students(
Id int NOT NULL,
FirstName nvarchar(100),
LastName nvarchar(100),
DateOfBirth date,
EnrolledDate date,
Gender nchar(1),
NationalIdNumber nvarchar(50),
StudentCardNumber nvarchar
)


CREATE TABLE Teachers (
Id int NOT NULL,
FirstName nvarchar(100),
LastName nvarchar(100),
DateOfBirth date,
AcademicRank nvarchar,
HireDate date
)


CREATE TABLE Grades(
Id int NOT NULL,
StudentId int,
CourseId int,
TeacherId int,
Grade decimal(18,2),
Comment nvarchar(MAX),
CreatedDate date
)


CREATE TABLE Courses(
Id int NOT NULL,
[Name] nvarchar(100),
Credit nvarchar(50),
AcademicYear date,
Semestar nvarchar(50)
)

CREATE TABLE AchivementTypes(
Id int NOT NULL,
[Name] nvarchar(50),
[Description] nvarchar(MAX),
ParticipationRate decimal(18,2),
)

CREATE TABLE GradeDetails(
Id int NOT NULL,
GradeId int,
AchivmentTypeId int,
AchivmentPoints decimal(18,2),
AchivmentMaxPoints decimal(18,2),
AchivmentDate date
)