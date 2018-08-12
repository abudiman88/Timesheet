CREATE TABLE [dbo].[User] (
    [UserId]      INT           IDENTITY (1, 1) NOT NULL,
    [PersonId]    INT           NOT NULL,
    [LoginName]   NVARCHAR (50) NOT NULL,
    [Password]    NVARCHAR (50) NOT NULL,
    [DateCreated] DATETIME      NOT NULL,
    [CreatedBy]   INT           NOT NULL,
    CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([UserId] ASC)
);

