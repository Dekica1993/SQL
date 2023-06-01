insert into dbo.Orders (OrderDate,Status,BusinessEntityId,CustomerId,
                                                          EmployeeId,
														  TotalPrice,
														  Comment)

values ('2023-05-20',0,100,1,1,1000,'test foreigh key')

select * from dbo.Orders
where BusinessEntityId = 100


select * from dbo.BusinessEntities
select * from dbo.Orders


update dbo.Orders
set BusinessEntityId = 1
--select * from orders
where Comment = 'test foreigh key' and 
Id= 4201


alter table dbo.Orders
add constraint [FK_Orders_BussinessEntities]
foreign key (businessEntityId) references [dbo].[BusinessEntities](Id)



select be.Name,be.Region, od.OrderDate, od.TotalPrice
from dbo.BusinessEntities be
inner join dbo.Orders as od on be.Id = od.BusinessEntityId
where be.Region = 'Bitolski'
order by od.TotalPrice desc

select be.*
from dbo.BusinessEntities as be
left join dbo.Orders od on be.Id = od.BusinessEntityId
where od.Id is null


select od.*
from dbo.Orders as od
right join  dbo.BusinessEntities  be on be.Id = od.BusinessEntityId
where od.Id is null


select od.*, '-', be.*
from dbo.Orders as od
full join  dbo.BusinessEntities  be on be.Id = od.BusinessEntityId
where od.Id is null


select c.Name as CustomerName, p.Name as ProductName
from dbo.Customers c
cross join dbo.Products p
