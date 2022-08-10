CREATE TABLE [dbo].[Orders]
(
	[order_id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [customer_id] INT NOT NULL, 
    [created_date] TIMESTAMP NOT NULL , 
    CONSTRAINT [FK_Orders_Customers] FOREIGN KEY ([customer_id]) REFERENCES [Customers]([customer_id]), 

)
