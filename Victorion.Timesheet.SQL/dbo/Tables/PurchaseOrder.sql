﻿CREATE TABLE [dbo].[PurchaseOrder] (
    [PurchaseOrderId] UNIQUEIDENTIFIER NOT NULL DEFAULT newid(),
    [IssuedBy]        UNIQUEIDENTIFIER NOT NULL,
	[PurchaseOrderNo] NVARCHAR(50),
    [Amount]          DECIMAL(18, 2) NOT NULL,
    [DateCreated]     DATETIME NOT NULL,
    [CreatedBy]       UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_PurchaseOrder] PRIMARY KEY CLUSTERED ([PurchaseOrderId] ASC)
);

