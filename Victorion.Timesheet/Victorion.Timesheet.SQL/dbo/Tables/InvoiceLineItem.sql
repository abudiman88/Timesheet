CREATE TABLE [dbo].[InvoiceLineItem]
(
	[InvoiceLineItemId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT newid(), 
    [InvoiceId] UNIQUEIDENTIFIER NOT NULL, 
    [TimesheetId] UNIQUEIDENTIFIER NULL, 
    [Description] NVARCHAR(100) NULL, 
    [Amount] DECIMAL(18, 2) NOT NULL, 
    [GST] DECIMAL(18, 2) NOT NULL, 
    [TotalAmount] DECIMAL(18, 2) NOT NULL, 
    [DateCreated] DATETIME NULL, 
    [CreatedBy] UNIQUEIDENTIFIER NULL
)
