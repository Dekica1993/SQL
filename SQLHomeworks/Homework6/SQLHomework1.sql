


ALTER procedure dbo.sp_CreateGrade (

@Grade tinyint,
@Comment nvarchar (max),
@CreatedDate datetime  )
AS
BEGIN
/*
Created by: Dejan Mladenov
Created date: 31.05.2023
Ticket Number: 1
Description: Insert values into table dbo.Grade
*/

insert into dbo.Grade (Grade,Comment,CreatedDate)
values (@Grade,@Comment,@CreatedDate)

select sum (g.Grade) as SumOfTotalGrades, g.CreatedDate 
from dbo.Grade as g
group by g.Grade, g.CreatedDate

select  MAX (g.Grade) as MaxGrade
from dbo.Grade as g
group by  g.Grade

END


exec dbo.sp_CreateGrade 9,'Exellent','2023-05-31'





