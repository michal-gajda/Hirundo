/**[rPT_Summary_Variance_Analysis]**/
/****Author: Magda Jankowska********/
/***** Date: 15.02.2021 ************/
CREATE TABLE [DABI001].[dbo].[rPT_Summary_Content_Change] (
	   [countryName] NVARCHAR(20)
	  ,[countryGroup] NVARCHAR(2)
      ,[carlineName] NVARCHAR(20)
      ,[vehicleBrand] NVARCHAR(20)
      ,[modelYear] NVARCHAR(5)
      ,[dateOfDocument] DATE
      ,[dateOfVOG] DATE
      ,[fXRate] NUMERIC(18,4)
      ,[localCurrency]  NVARCHAR(3)
	  ,[trimlineCodeGMUD2] NVARCHAR(20)
	  ,[trimlineCodeLCDV] NVARCHAR(20)
      ,[cmoCurrentMY] NVARCHAR(max)
	  ,[cmoPreviousMY] NVARCHAR(max)
	  ,[changesAdded] NVARCHAR(max)
	  ,[changesDroped] NVARCHAR(max)
	  ,[impactOnPrices] NUMERIC(18,2)
	  ,[impactOnCosts] NUMERIC(18,2)
	  ,[timeStamp] DATETIME
	  ,[userId] NVARCHAR(10)
	  ,[officialPrices] DECIMAL(1,0)
	  ,[latestTimeStampWorkingVersion] DECIMAL(1,0)
	  ,[latestTimeStampOfficialVersion] DECIMAL(1,0)
	  );

INSERT  INTO [DABI001].[dbo].[rPT_Summary_Content_Change] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','MB76','', 'AAA AAB AAC AAD AAE', 'AAB AAC AAD 222', '	AAA AAE', '222', 200, 100 ,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Content_Change] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','MC76','', 'AAA AAB AAC AAD AAE', 'AAB AAC AAD 222', '	AAA AAE', '222', 200, 100 ,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Content_Change] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','ME76','', 'AAA AAB AAC AAD AAE', 'AAB AAC AAD 222', '	AAA AAE', '222', 200, 100 ,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Content_Change] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','MJ76','', 'AAA AAB AAC AAD AAE', 'AAB AAC AAD 222', '	AAA AAE', '222', 200, 100 ,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Content_Change] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','MS76','', 'AAA AAB AAC AAD AAE', 'AAB AAC AAD 222', '	AAA AAE', '222', 200, 100 ,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
-- DROP TABLE [DABI001].[dbo].[rPT_Summary_Content_Change] 