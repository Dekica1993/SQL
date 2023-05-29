declare @FirstName NVARCHAR (20)
set @FirstName = @FirstName

select *
from dbo.Student
where FirstName = @FirstName


select FirstName
from Student

declare @Student TABLE 
(

StudentId int not null,
StudentName nvarchar (20),
DateOfBirth NVARCHAR (200)
)

INSERT into @Student (StudentId,StudentName,DateOfBirth)
values (1,'Elena','28-10-1996')

INSERT into @Student (StudentId,StudentName,DateOfBirth)
values (2,'Ana','21-10-2000')

INSERT into @Student (StudentId,StudentName,DateOfBirth)
values (3,'Biljana','09-05-1970')

INSERT into @Student (StudentId,StudentName,DateOfBirth)
values (4,'Marija','15-10-2000')

INSERT into @Student (StudentId,StudentName,DateOfBirth)
values (5,'Ivana','17-06-1992')

select *
from @Student


create table #Student
(
    LastName NVARCHAR (50),
    EnrolledDate NVARCHAR (50),
)

INSERT into #Student (LastName,EnrolledDate)
values ('Aleksovska','15-09-2019')


INSERT into #Student (LastName,EnrolledDate)
values ('Atanasovska','15-09-2012')


INSERT into #Student (LastName,EnrolledDate)
values ('Anastasovska','01-10-2015')


INSERT into #Student (LastName,EnrolledDate)
values ('Aceska','01-01-2010')

INSERT into #Student (LastName,EnrolledDate)
values ('Aleksinovac','01-09-1000')

INSERT into #Student (LastName,EnrolledDate)
values ('Anasovska','01-11-2005')


select *
from #Student
where LEN (LastName) = 7

select (FirstName)
from dbo.Teacher
 where LEN (FirstName) < 5  

 select 
left (FirstName,3) as right_FirstName, left (LastName,3) as left_LastName
from dbo.Teacher
where (FirstName) = 'E' AND
(LastName) = 'E'





