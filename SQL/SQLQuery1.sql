select * from dbo.BusinessEntities
where size = 'Large' and Zipcode = 100

select * from dbo.Customers
--where [Name] like '%a'
where [Name] like 'V%a'
         and City = 'Bitola'


select * from dbo.Employees
where DateOfBirth > '1980-02-01'

