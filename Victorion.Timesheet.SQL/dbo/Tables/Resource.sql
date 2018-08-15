CREATE TABLE [dbo].[Resource] (
    [ResourceId]  UNIQUEIDENTIFIER            NOT NULL DEFAULT newid(),
    [ProjectId]   UNIQUEIDENTIFIER            NOT NULL,
    [StaffId]     UNIQUEIDENTIFIER            NOT NULL,
    [Description] NVARCHAR (100) NULL,
    [DateCreated] DATETIME       NOT NULL,
    [CreatedBy]   UNIQUEIDENTIFIER            NOT NULL,
    CONSTRAINT [PK_Resource] PRIMARY KEY CLUSTERED ([ResourceId] ASC)
);

