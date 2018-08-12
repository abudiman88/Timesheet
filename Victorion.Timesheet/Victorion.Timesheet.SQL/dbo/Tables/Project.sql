CREATE TABLE [dbo].[Project] (
    [ProjectId]   INT           NOT NULL,
    [ClientId]    INT           NOT NULL,
    [Name]        NVARCHAR (50) NOT NULL,
    [DateCreated] DATETIME      NOT NULL,
    [CreatedBy]   INT           NOT NULL,
    CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED ([ProjectId] ASC)
);

