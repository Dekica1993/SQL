create table dbo.BusinessEntity(

Id int identity(1,1),
Name nvarchar(100)  null,
Region nvarchar(1000)  null,
Zipcode nvarchar(10) null,
Size nvarchar(10) not null


)
insert into dbo.Customer (FirstName,LastName,City)
values ('Dejan','Mladenov','Skopje')