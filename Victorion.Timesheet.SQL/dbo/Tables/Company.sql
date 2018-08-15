CREATE TABLE [dbo].[Company] (
    [CompanyId]   UNIQUEIDENTIFIER           NOT NULL DEFAULT newid(),
    [Name]        NVARCHAR (50) NOT NULL,
    [DateCreated] DATETIME      NOT NULL,
    [CreatedBy]   UNIQUEIDENTIFIER           NOT NULL,
    CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED ([CompanyId] ASC)
);

