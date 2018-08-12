CREATE TABLE [dbo].[Company] (
    [CompanyId]   INT           IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (50) NOT NULL,
    [DateCreated] DATETIME      NOT NULL,
    [CreatedBy]   INT           NOT NULL,
    CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED ([CompanyId] ASC)
);

