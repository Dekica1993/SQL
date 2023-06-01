create function dbo.fn_FormatProductName (@ProductId int)
returns nvarchar (2000)
as 
begin

    declare @Result nvarchar(2000)

    select @Result = SUBSTRING (p.Code,2,2) + right (p.Name,3) +  cast (p.Price as nvarchar(50)) 
    from dbo.Products as p
    where p.Id = @ProductId

    return @Result

end

select *, dbo.fn_FormatProductName (1) as workshopNameResults
from dbo.Products



alter procedure dbo.sp_testSP(@First int, @Second int)
as
begin
     /*
     print 'First'
	 print @First
	 print 'Second'
	 print @Second
	 */

	 select 'First'
	 select @First
	 select 'Second'
	 select @Second

end

--exec dbo.sp_testSP will not work

exec dbo.sp_testSP 1,2



declare @f int
set @f = 3

declare @s int
set @s = 5


exec dbo.sp_testSP @f, @s



exec dbo.sp_testSP @First = 10, @Second = 15





alter procedure dbo.sp_InsertNewCustomer (
@Name nvarchar(100), 
@AccountNumber nvarchar (100),
@City nvarchar (100),
@RegionName nvarchar (100),
@CustomerSize nvarchar (10),
@PhoneNumber nvarchar(20),
@IsActive bit 
)
as
begin

/*

created by:Dejan Mladenov
created date: 30.05.2023
Ticket Number: 115
description: Short description of the code

modified by:Ilija Mitev
modified date: 05.06.2023
Ticket Number: 250
description: Correction variable
*/
print 'Inserting new Customer'

insert into dbo.Customers(Name,AccountNumber,City,RegionName,CustomerSize,PhoneNumber,IsActive)
VALUES (@Name,@AccountNumber,@City,@RegionName,@CustomerSize,@PhoneNumber,@IsActive)

select *
from dbo.Customers
where RegionName = @RegionName

select CustomerSize, count(*)
from dbo.Customers
where City = @City
group by CustomerSize

end

exec dbo.sp_InsertNewCustomer 'Dekica Spaklica', '100', 'Skopje', 'Skopski', 'Large','071258852', 10

select * from dbo.Customers
order by Id desc




create procedure dbo.sp_CreateOrder
(
@OrderDate date,
@Status smallint,
@TotalPrice decimal,
@Comment nvarchar (max)
)
as 
begin
/*
Created by:Dejan Mladenov
Created date: 30.05.2023
Ticket number: 250

*/

insert into dbo.Orders (OrderDate,Status,TotalPrice,Comment)
VALUES (@OrderDate,@Status,@TotalPrice,@Comment)

select sum (o.TotalPrice)
from dbo.Orders o
group by TotalPrice




end


exec dbo.sp_CreateOrder '12-01-2023',5,200,'Ne kupuvaj'