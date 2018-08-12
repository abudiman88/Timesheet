CREATE TABLE [dbo].[TimeCode] (
    [TimeCodeId]  INT            NOT NULL,
    [CompanyId]   INT            NOT NULL,
    [Name]        NVARCHAR (50)  NOT NULL,
    [Description] NVARCHAR (100) NULL,
    [DateCreated] DATETIME       NOT NULL,
    [CreatedBy]   INT            NOT NULL,
    CONSTRAINT [PK_TimeCode] PRIMARY KEY CLUSTERED ([TimeCodeId] ASC)
);

