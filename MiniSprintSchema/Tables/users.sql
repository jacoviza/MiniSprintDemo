CREATE TABLE [dbo].[Users]
(
	[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [Username] VARCHAR(100) NULL, 
    [Password] VARCHAR(100) NULL
)
