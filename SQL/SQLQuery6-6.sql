create view dbo.vw_QuantityByCustomer
as

select cu.Name as CustomerName,od.ProductId, sum (od.Quantity) as sumQuantity
from dbo.Customers as cu
inner join dbo.Orders as o on cu.Id = o.CustomerId
inner join dbo.OrderDetails as od on o.Id = od.OrderId
--where cu.Name like '%Bitola'
group by cu.Name, od.ProductId


select * from vw_QuantityByCustomer
where CustomerName like '%Bitola' and ProductId = 60

alter view dbo.QuantityByCustomer
as
select cu.Name as CustomerName,p.Name, sum (od.Quantity) as sumQuantity
from dbo.Customers as cu
inner join dbo.Orders as o on cu.Id = o.CustomerId
inner join dbo.OrderDetails as od on o.Id = od.OrderId
inner join dbo.Products as p on p.Id = od.ProductId
--where cu.Name like '%Bitola'
group by cu.Name, od.ProductId



select count(id)
from Customers

select count(id)
from BusinessEntities



