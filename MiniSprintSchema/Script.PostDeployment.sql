/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

USE [MiniSprintApp]
GO

INSERT INTO [dbo].[Customers]
           ([customer_name]
           ,[contact_name]
           ,[contact_phone])
     VALUES
           ('Walmart', 'John Doe', '909-897-1232'),
		   ('Walgreens', 'Mary Johnson', '878-342-4322'),
		   ('Costco', 'Philip Duke', '234-543-2533')
GO

INSERT INTO [dbo].[OrderItems]
           ([code]
           ,[description])
     VALUES
           ('R-RD','Red Roses'),
		   ('R-WH','White Roses'),
		   ('R-PK','Pink Roses')
GO

INSERT INTO [dbo].[Orders]
           ([customer_id])
     VALUES
           (1),
		   (2),
		   (3)
GO


INSERT INTO [dbo].[Orders_OrderItems]
           ([order_id]
           ,[order_item_id])
     VALUES
           (1,1),
		   (1,2),
		   (1,3),
		   (2,1),
		   (2,2),
		   (2,3),
		   (3,1),
		   (3,2),
		   (3,3)
		   
GO