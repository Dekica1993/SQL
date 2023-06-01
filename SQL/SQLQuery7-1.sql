create view dbo.vv_CustomerOrders
as
select o.CustomerId, sum(o.TotalPrice) as Total
from dbo.Orders as o
group by o.CustomerId
go
alter view dbo.vv_CustomerOrders as
select cu.Name, sum (o.TotalPrice) as Total
from dbo.Customers as cu
inner join dbo.Orders as o on o.CustomerId= cu.Id
group by cu.Name
go

select * from dbo.vv_CustomerOrders
order by Total desc


 create table #Employees
 (

 FirstName nvarchar (50),
 LastName nvarchar (50)
 
 )

 select *
 from #Employees

 insert into #Employees (FirstName,LastName)
 values ('Dejan', 'Mladenov')

 insert into #Employees (FirstName,LastName)
 values ('Darko', 'Pancev')

 create table ##Employees
 (

 FirstName nvarchar (50),
 LastName nvarchar (50)
 
 )

 insert into ##Employees (FirstName,LastName)
 values ('Dejan', 'Mladenov')

 insert into ##Employees (FirstName,LastName)
 values ('Darko', 'Pancev')

 select *
 from #Employees


 declare @Employee table 
 (
  FirstName nvarchar(30),
  LastName nvarchar (50)
 )

 insert into @Employee (FirstName,LastName)
 values ('Dekica','Mekica')

 select * from  @Employee

 declare @Gender nvarchar (1)
 set @Gender = 'F'


 if (@Gender = 'M') 
 begin

 select *
 from dbo.Employees
 where Gender = 'M'

 end

 else
 begin

 select *
 from dbo.Employees
 where Gender = 'F'


 end

 create view dbo.vv_BEsize
 as
 select *,
 
 case when Size = 'small' then '0-50'
      when Size = 'Medium' then '51-100'
      when Size = 'Large' then '>100'
 else '' end as NumberOfEmployees
 
 from dbo.BusinessEntities

 select * from dbo.vv_BEsize


 select FirstName,LastName,
 replace(FirstName, 'A', 'X') as  example_replace,
 SUBSTRING(FirstName,1,3) as example_substring,
 right(FirstName,3) as example_Right,
 Left (FirstName,3) as example_Left,
 len(FirstName) as len_example,
 concat(FirstName,' / ', LastName) as concat_example,
 getdate()
 from dbo.Employees

 select *  
 from dbo.Employees
  where len (LastName) = 7

  select *
  into #MaleEmployees
  from dbo.Employees
  where Gender = 'M' and  
  --FirstName like 'A%'
  --substring (FirstName,1,1) = 'A',
  left (FirstName,1) = 'A'

  select *  from #MaleEmployees
 
 select getdate()

 declare @Today datetime 
 set @Today = getdate()

 select @Today,
 dateadd(day,-7,@Today) as dateaddday_Exemple,
 dateadd(month,5,@Today) as dateaddmonth_Exemple,
 datediff(day,'2023-12-30',@Today),
 datediff(day,dateadd(month,7,@Today),@Today)


 select convert (nvarchar (20), @Today,113) as DatetimeNO


 create function dbo.fn_EmployeeNames (@EmployeeId int)
 returns nvarchar (50)
 as
 begin

         declare @Result nvarchar(50)
         select @Result = FirstName + ' - ' + LastName
         from dbo.Employees
         where Id = @EmployeeId

         return @Result

 end

 select [dbo].[fn_EmployeeNames](1)


 select *,[dbo].[fn_EmployeeNames](Id) as call_function
 from dbo.Employees









 

