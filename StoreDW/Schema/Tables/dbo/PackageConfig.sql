CREATE TABLE [dbo].[PackageConfig]
(
	[PackageID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [TableName] VARCHAR(50) NULL, 
    [LastRowVersion] BIGINT NULL
)
