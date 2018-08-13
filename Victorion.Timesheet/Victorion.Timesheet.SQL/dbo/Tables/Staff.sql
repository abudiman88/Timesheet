CREATE TABLE [dbo].[Staff] (
    [StaffId]       UNIQUEIDENTIFIER           NOT NULL DEFAULT newid(),
    [CompanyId]     UNIQUEIDENTIFIER           NOT NULL,
    [PersonId]      UNIQUEIDENTIFIER           NOT NULL,
    [PositionTitle] NVARCHAR (50) NULL,
    [DateCreated]   DATETIME      NOT NULL,
    [CreatedBy]     UNIQUEIDENTIFIER           NOT NULL,
    CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED ([StaffId] ASC)
);

