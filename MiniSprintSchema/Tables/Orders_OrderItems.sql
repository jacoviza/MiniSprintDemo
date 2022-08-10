CREATE TABLE [dbo].[Orders_OrderItems]
(
	[order_id] INT NOT NULL, 
    [order_item_id] INT NOT NULL, 
    CONSTRAINT [PK_Orders_OrderItems] PRIMARY KEY ([order_id], [order_item_id]), 
    CONSTRAINT [FK_Orders_OrderItems_Orders] FOREIGN KEY ([order_id]) REFERENCES [Orders]([order_id]), 
    CONSTRAINT [FK_Orders_OrderItems_OrderItems] FOREIGN KEY ([order_item_id]) REFERENCES [OrderItems]([order_item_id]) 
)
