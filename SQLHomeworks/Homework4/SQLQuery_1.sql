select count (g.Grade) as CountOfAllGrades, (g.TeacherID)
from dbo.Grade as g
GROUP by g.Grade, g.TeacherID

select count (g.Grade) as CountOfAllGrades, (g.TeacherID), (g.StudentID)
from dbo.Grade as g
where g.StudentID < 100
group by g.Grade, g.TeacherID, g.StudentID

select max (g.Grade) as MaxGrade, AVG(g.Grade) as AvgGrade
from dbo.Grade as g
group by g.StudentID


select count (g.Grade) as CountOfAllGrades
from dbo.Grade as g
where g.StudentID > 200
group by  g.TeacherID


select count (g.Grade) as CountGrade, max (g.Grade) as MaxGrade, avg (g.Grade) as AvgGrade, s.FirstName, s.LastName
from dbo.Grade as g, dbo.Student as s
group by g.Grade, s.FirstName, s.LastName
having max(g.Grade) = AVG(g.Grade)

create view dbo.vv_StudentGrades
AS
select count (g.Grade) as CountGrades, g.StudentID
from dbo.Grade as g
group by g.Grade, g.StudentID

select *
from dbo.vv_StudentGrades

alter view dbo.vv_StudentGrades
AS
select  g.Grade, FirstName, LastName
from dbo.Grade as g
inner join dbo.Student as s on g.ID = s.ID
group by g.Grade, s.FirstName, s.LastName 



select *
from dbo.vv_StudentGrades
order by Grade DESC








