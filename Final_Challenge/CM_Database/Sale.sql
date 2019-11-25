CREATE TABLE [dbo].[Sale]
(
	[SaleDate] DATE NOT NULL,
	[PricePaid] INT NOT NULl,
	[RecordID] NVARCHAR(5) NOT NULL,
	[CustNo] INT NOT NULL,
	PRIMARY KEY (SaleDate, RecordID, CustNo),
	FOREIGN KEY (RecordID) REFERENCES Record,
	FOREIGN KEY (CustNo) REFERENCES Customer
)
