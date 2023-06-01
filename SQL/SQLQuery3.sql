select * from  dbo.Employees
where FirstName = 'Goran' 

select * from dbo.Employees
where [LastName] like 'S%'

select * from dbo.Employees
where DateOfBirth > '1988.01.01'

select * from dbo.Employees
where gender = 'Male'

select * from dbo.Employees
where HireDate like '01.%.1988'

select * from dbo.Employees
where LastName like 'A%' and HireDate like '2000-05%'

--select * 
--from dbo.Employees
--order by id asc

select * from dbo.Employees
where FirstName = 'Aleksandar'
order by LastName

select * from dbo.Employees
order by LastName

select * from dbo.Employees
where Gender = 'M' 
order by HireDate desc

create table #a(
[Name] nvarchar(10)
)

insert into #a([Name])
values ('Dejan')

insert into #a([Name])
values ('Elena')


insert into #a([Name])
values ('Biljana')

select * from #a

create table #b([Name] nvarchar(20))
insert into #b ([Name]) values ('Dejan')
insert into #b ([Name]) values ('Mekica')
insert into #b ([Name]) values ('Tiramisu')

select * from #b

select [Name]
from #a
union
select [Name]
from #b


select [Name]
from #a
union all
select [Name]
from #b


select [Name]
from #a
intersect
select [Name]
from #b

select region
from dbo.BusinessEntities
intersect
select regionName
from dbo.Customers


create table dbo.Product_test (

Id int identity (1,1),
Code nvarchar(50) null,
[Name] nvarchar (50) null,
[Description] nvarchar(50) null,
[Weight] decimal (18,2) null,
[Cost] decimal (18,2) null,
[Price] decimal (18,2) null

)

insert into dbo.Product_test ([Name]) values ('Granola')


select * from dbo.Product_test

alter table dbo.Product_test
add constraint df_Product_test_weight
default (100) for [Weight]


insert into dbo.Product_test ([Name]) values ('Granola')
insert into dbo.Product_test ([Name],[Weight]) values ('Oves',10)


select * from dbo.Product_test


alter table dbo.Product_test
with check 
add constraint ch_Product_test_Price
check (Price>=0)

insert into dbo.Product_test ([Name],[Price]) values ('Jatki',10)

select * from dbo.Product_test

insert into dbo.Product_test([Name],[Price]) values ('Jem',-10)

alter table dbo.Product_test
with check
add constraint un_Product_test_Name
unique ([Name])

insert into dbo.Product_test([Name]) values ('Jogurtka')
insert into dbo.Product_test([Name]) values ('Babush')

select * from dbo.Product_test
update dbo.Product_test set [Name] = 'Babushki'
where Id = 1

select * from dbo.Product_test








