CREATE TABLE [dbo].[Resource] (
    [ResourceId]  INT            IDENTITY (1, 1) NOT NULL,
    [ProjectId]   INT            NOT NULL,
    [StaffId]     INT            NOT NULL,
    [Description] NVARCHAR (100) NULL,
    [DateCreated] DATETIME       NOT NULL,
    [CreatedBy]   INT            NOT NULL,
    CONSTRAINT [PK_Resource] PRIMARY KEY CLUSTERED ([ResourceId] ASC)
);

