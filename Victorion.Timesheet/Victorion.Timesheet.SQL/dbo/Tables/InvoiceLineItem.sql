CREATE TABLE [dbo].[InvoiceLineItem]
(
	[InvoiceLineItemId] INT NOT NULL PRIMARY KEY, 
    [InvoiceId] INT NOT NULL, 
    [TimesheetId] INT NULL, 
    [Description] NVARCHAR(100) NULL, 
    [Amount] DECIMAL(18, 2) NOT NULL, 
    [GST] DECIMAL(18, 2) NOT NULL, 
    [TotalAmount] DECIMAL(18, 2) NOT NULL, 
    [DateCreated] DATETIME NULL, 
    [CreatedBy] INT NULL
)
