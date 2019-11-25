CREATE TABLE [dbo].[Interests]
(
	[InterestCode] NVARCHAR(2) NOT NULL,
	[InterestDescription] NVARCHAR(100) NOT NULL,
	[CustNo] INT NOT NULL,
	PRIMARY KEY (InterestCode, CustNo),
	FOREIGN KEY (CustNo) REFERENCES Customer
)
