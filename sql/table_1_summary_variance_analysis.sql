/**[rPT_Summary_Variance_Analysis]**/
/****Author: Magda Jankowska********/
/***** Date: 15.02.2021 ************/
CREATE TABLE [DABI001].[dbo].[rPT_Summary_Variance_Analysis] (
	   [countryName] NVARCHAR(20)
	  ,[countryGroup] NVARCHAR(2)
      ,[carlineName] NVARCHAR(20)
      ,[vehicleBrand] NVARCHAR(20)
      ,[modelYear] NVARCHAR(5)
      ,[dateOfDocument] DATE
      ,[dateOfVOG] DATE
      ,[fXRate] NUMERIC(18,4)
      ,[localCurrency]  NVARCHAR(3)
	  ,[measureType] NVARCHAR(50)
	  ,[measureTypeSubcategory] NVARCHAR(50)
      ,[value] NUMERIC(18,4)
	  ,[timeStamp] DATETIME
	  ,[userId] NVARCHAR(10)
	  ,[officialPrices] DECIMAL(1,0)
	  ,[latestTimeStampWorkingVersion] DECIMAL(1,0)
	  ,[latestTimeStampOfficialVersion] DECIMAL(1,0));

INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','RBCV incl. PandW per unit in Euro', 'Current Average (incl. Free Options)',606,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','RBCV incl. PandW per unit in Euro', 'Previous Average (incl. Free Options)',624,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','RBCV incl. PandW per unit in Euro', 'Variance per unit',18,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','There of', 'Mix',-12,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','There of', 'Equipment',296,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','There of', 'Economics',0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','There of', 'Other Cost / GSF',-13,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','There of', 'Free Option',-254,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','There of', 'Sales Allowances',0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','There of', 'Other Contribution Cost',0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','FFO', 'FFO penetrations',20,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','FFO', 'FFO prices',7,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','FFO', 'FFO deletions',-92,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','FFO', 'FFO introductions',55,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','FFO', 'Pack penetrations',42,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','FFO', 'Pack prices',-22,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','FFO', 'Pack introductions',0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','FFO', 'Pack deletions',305,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','FFO', 'Pack content change',28,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','Volume', 'Current',5000,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','Volume', 'Previous',5000,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','Volume', 'Variance',0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','Economics', 'Mix',0.0008,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','Economics', 'Equipment',0.0199,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','Economics', 'Economics',0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','Economics', 'Other Cost / GSF',-0.0009,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_Summary_Variance_Analysis] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','Economics', 'Free Option',-0.0171,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
--DROP TABLE [DABI001].[dbo].[rPT_Summary_Variance_Analysis]