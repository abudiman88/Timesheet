CREATE TABLE [dbo].[TimeCode] (
    [TimeCodeId]  UNIQUEIDENTIFIER            NOT NULL DEFAULT newid(),
    [CompanyId]   UNIQUEIDENTIFIER            NOT NULL,
    [Name]        NVARCHAR (50)  NOT NULL,
    [Description] NVARCHAR (100) NULL,
    [DateCreated] DATETIME       NOT NULL,
    [CreatedBy]   UNIQUEIDENTIFIER            NOT NULL,
    CONSTRAINT [PK_TimeCode] PRIMARY KEY CLUSTERED ([TimeCodeId] ASC)
);

