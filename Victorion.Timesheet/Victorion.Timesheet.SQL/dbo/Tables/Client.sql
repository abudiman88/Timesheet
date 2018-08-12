CREATE TABLE [dbo].[Client] (
    [ClientId]    INT           IDENTITY (1, 1) NOT NULL,
    [CompanyId]   INT           NOT NULL,
    [Name]        NVARCHAR (50) NOT NULL,
    [DateCreated] DATETIME      NOT NULL,
    [CreatedBy]   INT           NOT NULL,
    CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED ([ClientId] ASC)
);

