CREATE TABLE [dbo].[PackageConfig]
(
	[PackageID] INT NOT NULL PRIMARY KEY, 
    [TableName] VARCHAR(50) NULL, 
    [LastRowVersion] BIGINT NULL
)
