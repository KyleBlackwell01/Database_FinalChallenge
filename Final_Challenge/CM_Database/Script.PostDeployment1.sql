/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

INSERT INTO [dbo].[Interests] (InterestCode, InterestDescription, CustNo) VALUES
('JA', 'Jazz', 456),
('RR', 'Rock and Roll', 123),
('RB', 'Rhythm and Blues', 789),
('RR', 'Rock and Roll', 234),
('RB', 'Rhythm and Blues', 567);

INSERT INTO Customer (CustNo, Name, Address, Postcode, InterestCode) VALUES
(123, 'Jimmy Barnes', '1 Sesame Street', 3000, 'RR'),
(456, 'Ian Moss', '10 Downing Street', 4000, 'JA'),
(789, 'Don Walker', '221B Baker Street', 5000, 'RB'),
(234, 'Steve Prestwich', 'LG1 College Cres, Parkville', 6000, 'RR'),
(567, 'Phil Small', '1 Adelaide Avenue', 7000, 'RB');

INSERT INTO Record (RecordID, Title, Performer) VALUES
('PF003', 'The Wall', 'Pink Floyd'),
('IX002', 'Kick', 'INXS'),
('SP069', 'Never Mind the Bollocks', 'Sex Pistols'),
('PF002', 'The Dark Side of the Moon', 'Pink Floyd'),
('IX005', 'Shabooh Shoobah', 'INXS'),
('SP070', 'Floggin a Dead Horse', 'Sex Pistols'),
('PF004', 'The Endless River', 'Pink Floyd'),
('PF006', 'Wish You Were Here', 'Pink Floyd'),
('SP075', 'Agents of Anarchy', 'Sex Pistols'),
('PF007', 'The Division Bell', 'Pink Floyd');

INSERT INTO Sale (SaleDate, PricePaid, RecordID, CustNo) VALUES
('2015-12-01', 30, 'PF003', 123),
('2015-12-01', 29.95, 'IX002', 123),
('2015-12-02', 12.45, 'SP069', 123),
('2015-12-05', 30, 'IX002', 123),
('2015-12-01', 31, 'PF002', 456),
('2015-12-03', 28.95, 'IX005', 456),
('2015-12-06', 13.45, 'SP070', 456),
('2015-12-02', 29, 'PF004', 789),
('2015-12-05', 29.95, 'IX002', 789),
('2015-12-01', 45, 'PF003', 234),
('2015-12-04', 5.67, 'PF003', 234),
('2015-12-03', 9.95, 'PF003', 567);