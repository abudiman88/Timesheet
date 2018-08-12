CREATE TABLE [dbo].[Invoice]
(
	[InvoiceId] INT NOT NULL PRIMARY KEY, 
    [CompanyId] INT NOT NULL, 
    [IssuedTo] INT NOT NULL, 
    [PurchaseOrderId] INT NULL, 
    [DateIssued] DATETIME NOT NULL, 
    [DatePaid] DATETIME NULL, 
    [Amount] DECIMAL(18, 2) NOT NULL, 
    [GST] DECIMAL(18, 2) NOT NULL, 
    [TotalAmount] DECIMAL(18, 2) NOT NULL, 
    [DateCreated] DATETIME NOT NULL, 
    [CreatedBy] INT NOT NULL
)
