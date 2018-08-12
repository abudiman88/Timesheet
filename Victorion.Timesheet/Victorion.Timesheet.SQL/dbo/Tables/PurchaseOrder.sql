CREATE TABLE [dbo].[PurchaseOrder] (
    [PurchaseOrderId] INT NOT NULL,
    [IssuedBy]        INT NOT NULL,
	[PurchaseOrderNo] NVARCHAR(50),
    [Amount]          DECIMAL(18, 2) NOT NULL,
    [DateCreated]     DATETIME NOT NULL,
    [CreatedBy]       INT NOT NULL,
    CONSTRAINT [PK_PurchaseOrder] PRIMARY KEY CLUSTERED ([PurchaseOrderId] ASC)
);

