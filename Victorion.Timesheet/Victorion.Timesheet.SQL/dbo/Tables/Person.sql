CREATE TABLE [dbo].[Person] (
    [PersonId]      INT           IDENTITY (1, 1) NOT NULL,
    [GivenNames]    NVARCHAR (50) NOT NULL,
    [PreferredName] NVARCHAR (50) NOT NULL,
    [Surname]       NVARCHAR (50) NOT NULL,
    [Email]         NVARCHAR (50) NOT NULL,
    [DateCreated]   DATETIME      NOT NULL,
    [CreatedBy]     INT           NOT NULL,
    CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED ([PersonId] ASC)
);

