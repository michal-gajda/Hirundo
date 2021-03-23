/****** [rPT_Summary_Mix]  ******/
/****Author: Magda Jankowska*****/
/***** Date: 15.02.2021 *********/
CREATE TABLE [DABI001].[dbo].[rPT_Summary_Mix] (
	   [countryName] NVARCHAR(20)
	  ,[countryGroup] NVARCHAR(2)
      ,[carlineName] NVARCHAR(20)
      ,[vehicleBrand] NVARCHAR(20)
      ,[modelYear] NVARCHAR(5)
      ,[dateOfDocument] DATE
      ,[dateOfVOG] DATE
      ,[fXRate] NUMERIC(18,4)
      ,[localCurrency]  NVARCHAR(3)
	  ,[measureType] NVARCHAR(20)
	  ,[name] NVARCHAR(50)
      ,[mixCurrentMY] NUMERIC(18,2)
	  ,[mixPreviousMy] NUMERIC(18,2)
	  ,[timeStamp] DATETIME
	  ,[userId] NVARCHAR(10)
	  ,[officialPrices] DECIMAL(1,0)
	  ,[latestTimeStampWorkingVersion] DECIMAL(1,0)
	  ,[latestTimeStampOfficialVersion] DECIMAL(1,0));

INSERT  INTO [DABI001].[dbo].[rPT_Summary_Mix] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','trimline','TRIM 1',100,0.99,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Mix] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','trimline','TRIM 2',100,0.99,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Mix] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','trimline','TRIM 3',100,0.99,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Mix] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','trimline','TRIM 4',100,0.99,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Mix] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','trimline','TRIM 5',100,0.99,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Mix] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','engine','ENGINE 1',100,0.99,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Mix] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','engine','ENGINE 2',100,0.99,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Mix] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','engine','ENGINE 3',100,0.99,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Mix] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','engine','ENGINE 4',100,0.99,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Mix] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','engine','ENGINE 5',100,0.99,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Mix] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','body style','BODY STYLE 1',100,0.99,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Mix] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','body style','BODY STYLE 2',100,0.99,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Mix] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','trimline','TRIM 1',100,0.99,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Mix] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','trimline','TRIM 2',100,0.99,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Mix] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','trimline','TRIM 3',100,0.99,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Mix] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','trimline','TRIM 4',100,0.99,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Mix] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','trimline','TRIM 5',100,0.99,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Mix] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','engine','ENGINE 1',100,0.99,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Mix] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','engine','ENGINE 2',100,0.99,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Mix] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','engine','ENGINE 3',100,0.99,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Mix] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','engine','ENGINE 4',100,0.99,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Mix] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','engine','ENGINE 5',100,0.99,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Mix] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','body style','BODY STYLE 1',100,0.99,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Mix] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','body style','BODY STYLE 2',100,0.99,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
--DROP TABLE [DABI001].[dbo].[rPT_Summary_Mix]