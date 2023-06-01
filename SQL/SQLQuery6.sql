



select count (o.TotalPrice), min (o.TotalPrice), max (o.TotalPrice), avg (o.TotalPrice), sum (o.TotalPrice)
from dbo.Orders as o

select  be.Name, count (be.Id), avg(TotalPrice)
from dbo.Orders o
inner join dbo.BusinessEntities as be on be.id = o.BusinessEntityId
--where (CustomerId<20)
group by be.Name
having sum (o.TotalPrice)>635558


select count (o.TotalPrice), min (o.TotalPrice), max (o.TotalPrice), avg (o.TotalPrice), sum (o.TotalPrice)
from dbo.Orders as o

select  be.Name, count (be.Id), avg(TotalPrice)
from dbo.Orders o
inner join dbo.BusinessEntities as be on be.id = o.BusinessEntityId
where (CustomerId<20) 
group by be.Name
having sum (o.TotalPrice)<100000

select  be.Name, count (be.Id), avg(TotalPrice)
from dbo.Orders o
inner join dbo.BusinessEntities as be on be.id = o.BusinessEntityId
group by be.Name




