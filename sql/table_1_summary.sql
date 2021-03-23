CREATE TABLE [DABI001].[dbo].[rPT_Summary] (
	[countryName] NVARCHAR(20) 
	,[countryGroup] NVARCHAR(2) 
	,[carlineName] NVARCHAR(max) 
	,[vehicleBrand] NVARCHAR(20) 
	,[modelYear] NVARCHAR(5) 
	,[dateOfDocument] DATE 
	,[dateOfVOG] DATE 
	,[fXRate] NUMERIC(18,2) 
	,[localCurrency] NCHAR(10) 
	,[measureType_1] NVARCHAR(max) 
	,[eurTotalSubmission] NUMERIC(18,2) 
	,[eurTotalBudget] NUMERIC(18,2) 
	,[eurTotalPrevious] NUMERIC(18,2) 
	,[eurVehicleSubmission] NUMERIC(18,2) 
	,[eurOptionsSubmission] NUMERIC(18,2) 
	,[eurVehiclePrevious] NUMERIC(18,2) 
	,[eurOptionsPrevious] NUMERIC(18,2) 
	,[timeStamp] DATETIME
	,[userId] NVARCHAR(10)
	,[officialPrices] DECIMAL(1,0)
	,[latestTimeStampWorkingVersion] DECIMAL(1,0)
	,[latestTimeStampOfficialVersion] DECIMAL(1,0));

INSERT INTO [DABI001].[dbo].[rPT_Summary] VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Volume',1000,1000,1000,1000,1000,1000,1000,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT INTO [DABI001].[dbo].[rPT_Summary] VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Net Commercial Result',1000,1000,1000,1000,1000,1000,1000,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT INTO [DABI001].[dbo].[rPT_Summary] VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Policy and Warranty',1000,1000,1000,1000,1000,1000,1000,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT INTO [DABI001].[dbo].[rPT_Summary] VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','RBCF',1000,1000,1000,1000,1000,1000,1000,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT INTO [DABI001].[dbo].[rPT_Summary] VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Commercial Margin',1000,1000,1000,1000,1000,1000,1000,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT INTO [DABI001].[dbo].[rPT_Summary] VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Opel Support (SA, EUR)',1000,1000,1000,1000,1000,1000,1000,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT INTO [DABI001].[dbo].[rPT_Summary] VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Opel Support (SA, %)',1000,1000,1000,1000,1000,1000,1000,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT INTO [DABI001].[dbo].[rPT_Summary] VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','PPI',1000,1000,1000,1000,1000,1000,1000,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT INTO [DABI001].[dbo].[rPT_Summary] VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Gross Sales/PDU',1000,1000,1000,1000,1000,1000,1000,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT INTO [DABI001].[dbo].[rPT_Summary] VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','List Price Including Taxes',1000,1000,1000,1000,1000,1000,1000,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT INTO [DABI001].[dbo].[rPT_Summary] VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','List Price Excluding Taxes',1000,1000,1000,1000,1000,1000,1000,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT INTO [DABI001].[dbo].[rPT_Summary] VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Dealer Price',1000,1000,1000,1000,1000,1000,1000,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT INTO [DABI001].[dbo].[rPT_Summary] VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Importer Cost',1000,1000,1000,1000,1000,1000,1000,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT INTO [DABI001].[dbo].[rPT_Summary] VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Importer Sales Allowance',1000,1000,1000,1000,1000,1000,1000,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT INTO [DABI001].[dbo].[rPT_Summary] VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Importer Gross Margin EUR',1000,1000,1000,1000,1000,1000,1000,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT INTO [DABI001].[dbo].[rPT_Summary] VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Importer Gross Margin %',1000,1000,1000,1000,1000,1000,1000,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT INTO [DABI001].[dbo].[rPT_Summary] VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Importer Net Margin EUR',1000,1000,1000,1000,1000,1000,1000,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT INTO [DABI001].[dbo].[rPT_Summary] VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Importer Net Margin %',1000,1000,1000,1000,1000,1000,1000,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT INTO [DABI001].[dbo].[rPT_Summary] VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Country Gross Margin EUR',1000,1000,1000,1000,1000,1000,1000,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT INTO [DABI001].[dbo].[rPT_Summary] VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Country Gross Margin %',1000,1000,1000,1000,1000,1000,1000,'2021-03-10 17:25:00','GZ6CN8',0,1,0);

INSERT INTO [DABI001].[dbo].[rPT_Summary] VALUES ('Switzerland','CA','Astra','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Country Gross Margin %',1000,1000,1000,1000,1000,1000,1000,'2021-03-10 17:25:00','GZ6CN8',0,1,0);

-- DROP TABLE [DABI001].[dbo].[rPT_Summary]