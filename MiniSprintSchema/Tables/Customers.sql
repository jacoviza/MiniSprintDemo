CREATE TABLE [dbo].[Customers]
(
	[customer_id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [customer_name] VARCHAR(100) NOT NULL, 
    [contact_name] VARCHAR(100) NOT NULL, 
    [contact_phone] VARCHAR(20) NOT NULL
)
