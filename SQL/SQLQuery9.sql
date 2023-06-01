create procedure dbo.InsertOrders(

@OrderDate date,
@BussinessEntityId int,
@CustomerId int,
@EmployeeId int,
@Comment nvarchar(max)
)
as 
begin

begin try

insert into dbo.Orders(OrderDate,BusinessEntityId,CustomerId,EmployeeId,Comment)
values (@OrderDate,@BussinessEntityId,@CustomerId,@EmployeeId,@Comment)

end try


begin catch

select ERROR_LINE(), ERROR_MESSAGE(), ERROR_NUMBER(), ERROR_PROCEDURE(), ERROR_SEVERITY(), ERROR_STATE()


end catch


end

exec dbo.InsertOrders '2023-06-01',100,1,1,'Test Error handling'