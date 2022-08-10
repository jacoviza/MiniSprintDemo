CREATE TABLE [dbo].[OrderItems]
(
	[order_item_id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [code] VARCHAR(50) NOT NULL, 
    [description] VARCHAR(100) NULL
)
