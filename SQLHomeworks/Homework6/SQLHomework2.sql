

ALTER PROCEDURE dbo.sp_CreateGradeDetail (
@GradeId int,    
@AchievementTypeId int,
@AchievementPoints smallint,
@AchievementMaxPoints smallint,
@AchivementDate date )
AS
BEGIN

/*
Created by: Dejan Mladenov
Created date: 31.05.2023
Ticket Number: 2
Description: Insert values into table dbo.GradeDetail
*/

insert into dbo.GradeDetails (GradeID,AchievementTypeID,AchievementPoints,AchievementMaxPoints,AchievementDate)
values (@GradeId,@AchievementTypeId,@AchievementPoints,@AchievementMaxPoints,@AchivementDate)

select SUM(gd.AchievementPoints / gd.AchievementMaxPoints)*gd.GradeID as SumOfGradePoints
from dbo.GradeDetails as gd
GROUP by gd.AchievementPoints, gd.AchievementMaxPoints,gd.GradeID


END

exec dbo.sp_CreateGradeDetail 1,3,50,10,'2023-05-31'