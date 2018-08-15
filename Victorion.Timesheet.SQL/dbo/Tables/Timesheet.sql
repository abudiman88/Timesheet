CREATE TABLE [dbo].[Timesheet] (
    [TimesheetId]   UNIQUEIDENTIFIER      NOT NULL DEFAULT newid(),
    [ProjectId]     UNIQUEIDENTIFIER      NOT NULL,
    [StaffId]       UNIQUEIDENTIFIER      NOT NULL,
    [TimeCodeId]    UNIQUEIDENTIFIER      NOT NULL,
    [StartDateTime] DATETIME NOT NULL,
    [EndDateTime]   DATETIME NULL,
    [Description]   NVARCHAR(400) NOT NULL,
    [DateCreated]   DATETIME NOT NULL,
    [CreatedBy]     UNIQUEIDENTIFIER      NOT NULL,
    CONSTRAINT [PK_Timesheet] PRIMARY KEY CLUSTERED ([TimesheetId] ASC)
);

