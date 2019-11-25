CREATE TABLE [dbo].[Customer]
(
	[CustNo] INT NOT NULL,
	[Name] NVARCHAR(100) NOT NULL,
	[Address] NVARCHAR(100) NOT NULL,
	[Postcode] INT NOT NULL,
	[InterestCode] NVARCHAR(2) NOT NULL,
	PRIMARY KEY (CustNo)
)