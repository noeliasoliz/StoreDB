CREATE TABLE [dbo].[CustomerDemographics] (
    [CustomerTypeID] NCHAR (10) NOT NULL,
    [CustomerDesc]   NTEXT      NULL,
    [rowversion] TIMESTAMP NULL, 
    CONSTRAINT [PK_CustomerDemographics] PRIMARY KEY NONCLUSTERED ([CustomerTypeID] ASC)
);

