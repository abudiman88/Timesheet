CREATE TABLE [dbo].[Project] (
    [ProjectId]   UNIQUEIDENTIFIER           NOT NULL DEFAULT newid(),
    [ClientId]    UNIQUEIDENTIFIER           NOT NULL,
    [Name]        NVARCHAR (50) NOT NULL,
    [DateCreated] DATETIME      NOT NULL,
    [CreatedBy]   UNIQUEIDENTIFIER           NOT NULL,
    CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED ([ProjectId] ASC)
);

