/*
 Pre-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be executed before the build script.	
 Use SQLCMD syntax to include a file in the pre-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the pre-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
USE [MiniSprintApp]
GO

TRUNCATE TABLE [dbo].[Orders_OrderItems]
DELETE FROM [dbo].[OrderItems]
DBCC CHECKIDENT ('[OrderItems]', RESEED, 0)
DELETE FROM [dbo].[Orders]
DBCC CHECKIDENT ('[Orders]', RESEED, 0)
DELETE FROM [dbo].[Customers]
DBCC CHECKIDENT ('[Customers]', RESEED, 0)