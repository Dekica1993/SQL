select *
from dbo.Student
where FirstName = 'Antonio' 


select *
from dbo.Student
where DateOfBirth < '01.01.1999'


select *
from dbo.Student
where LastName like '%J' AND DateOfBirth = '01.01.1998'


select *
from dbo.Student
order by FirstName  ASC


select LastName
from dbo.Teacher
UNION
select LastName
from dbo.Student


    
select c.Name, ac.Name
from dbo.Course as c
inner join dbo.AchievementType as ac on c.Name = ac.Name


select *
from dbo.Teacher 





