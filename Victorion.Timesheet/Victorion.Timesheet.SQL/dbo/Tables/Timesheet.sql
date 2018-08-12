CREATE TABLE [dbo].[Timesheet] (
    [TimesheetId]   INT      IDENTITY (1, 1) NOT NULL,
    [ProjectId]     INT      NOT NULL,
    [StaffId]       INT      NOT NULL,
    [TimeCodeId]    INT      NOT NULL,
    [StartDateTime] DATETIME NOT NULL,
    [EndDateTime]   DATETIME NULL,
    [Description]   NVARCHAR(400) NOT NULL,
    [DateCreated]   DATETIME NOT NULL,
    [CreatedBy]     INT      NOT NULL,
    CONSTRAINT [PK_Timesheet] PRIMARY KEY CLUSTERED ([TimesheetId] ASC)
);

