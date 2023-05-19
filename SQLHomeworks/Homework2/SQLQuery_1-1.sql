insert into dbo.Products ([Name]) VALUES ('Oves')

select * FROM dbo.Products

alter table dbo.Products
WITH CHECK
ADD CONSTRAINT CH_Products_Price
CHECK (Price>0)

insert into dbo.Products ([Name],[Price]) VALUES ('Jatki',10)


SELECT * from dbo.Products

alter table dbo.Products
WITH CHECK
ADD CONSTRAINT UNQ_Products_Name
UNIQUE ([Name])

UPDATE dbo.Products
set Name = 'Vanila Oves'
where Id = 1


SELECT * from dbo.Products
