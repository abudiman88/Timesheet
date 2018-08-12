CREATE TABLE [dbo].[Staff] (
    [StaffId]       INT           IDENTITY (1, 1) NOT NULL,
    [CompanyId]     INT           NOT NULL,
    [PersonId]      INT           NOT NULL,
    [PositionTitle] NVARCHAR (50) NULL,
    [DateCreated]   DATETIME      NOT NULL,
    [CreatedBy]     INT           NOT NULL,
    CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED ([StaffId] ASC)
);

