CREATE TABLE [dbo].[Person] (
    [PersonId]      UNIQUEIDENTIFIER           NOT NULL DEFAULT newid(),
    [GivenNames]    NVARCHAR (50) NOT NULL,
    [PreferredName] NVARCHAR (50) NOT NULL,
    [Surname]       NVARCHAR (50) NOT NULL,
    [Email]         NVARCHAR (50) NOT NULL,
    [DateCreated]   DATETIME      NOT NULL,
    [CreatedBy]     UNIQUEIDENTIFIER           NOT NULL,
    CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED ([PersonId] ASC)
);

