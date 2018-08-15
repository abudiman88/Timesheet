CREATE TABLE [dbo].[User] (
    [UserId]      UNIQUEIDENTIFIER           NOT NULL DEFAULT newid(),
    [PersonId]    UNIQUEIDENTIFIER           NOT NULL,
    [LoginName]   NVARCHAR (50) NOT NULL,
    [Password]    NVARCHAR (50) NOT NULL,
    [DateCreated] DATETIME      NOT NULL,
    [CreatedBy]   UNIQUEIDENTIFIER           NOT NULL,
    CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([UserId] ASC)
);

