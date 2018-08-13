CREATE TABLE [dbo].[Client] (
    [ClientId]    UNIQUEIDENTIFIER           NOT NULL DEFAULT newid(),
    [CompanyId]   UNIQUEIDENTIFIER           NOT NULL,
    [Name]        NVARCHAR (50) NOT NULL,
    [DateCreated] DATETIME      NOT NULL,
    [CreatedBy]   UNIQUEIDENTIFIER           NOT NULL,
    CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED ([ClientId] ASC)
);

