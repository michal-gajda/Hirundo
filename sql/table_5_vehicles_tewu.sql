/****** [rPT_InputVehicles_TEWU]  ******/
/****Author: Magda Jankowska*****/
/***** Date: 23.02.2021 *********/
CREATE TABLE [DABI001].[dbo].[rPT_InputVehicles_TEWU] (
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
	  ,[codeLCDV] NVARCHAR(10)
	  ,[name] NVARCHAR(200)
	  ,[codeGMUD2] NVARCHAR(4)
	  ,[reference] NVARCHAR(4)
	  ,[deafaultMSRPInEuroVsBase] NUMERIC(18,4)
	  ,[PDUCMOInEuroVsBase] NUMERIC(18,4)
	  ,[PDULMOInEuroVsBase] NUMERIC(18,4)
	  --,[PDUTotalInEuroVsBase]
	  ,[CostCMOInEuroVsBase] NUMERIC(18,4)
	  ,[CostLMOInEuroVsBase] NUMERIC(18,4)
	  --,[CostTotalInEuroVsBase] 
	  ,[mix] NUMERIC(18,4)
	  ,[codeGMUD2_2] NVARCHAR(10)
	  ,[deafaultMSRPInEuroVsOther] NUMERIC(18,4)
	  ,[PDUCMOInEuroVsOther] NUMERIC(18,4)
	  ,[PDULMOInEuroVsOther] NUMERIC(18,4)
	  --,[PDUTotalInEuroVsOther]
	  ,[CostCMOInEuroVsOther] NUMERIC(18,4)
	  ,[CostLMOInEuroVsOther] NUMERIC(18,4)
	  --,[CostTotalInEuroVsOther]
	  ,[rbcfInEuroGSFBased] NUMERIC(18,4)
	  ,[rbcfInPercentGSFBased] NUMERIC(18,4)
	  ,[timeStamp] DATETIME
	  ,[userId] NVARCHAR(10)
	  ,[officialPrices] DECIMAL(1,0)
	  ,[latestTimeStampWorkingVersion] DECIMAL(1,0)
	  ,[latestTimeStampOfficialVersion] DECIMAL(1,0));

INSERT  INTO [DABI001].[dbo].[rPT_InputVehicles_TEWU] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','engines','0','Gasoline F 12 SHL 110Hp MT6 Start / Stop','EJ6_','[x]',0,0,0,0,0,0.03,'',0,0,0,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputVehicles_TEWU] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','engines','0','Gasoline F 12 SHT 130Hp MT6 Start / Stop','EN6_','',1400,725,0,0,0,0.21,'EN6_',1400,725,0,0,0,725,1,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputVehicles_TEWU] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','engines','0','Gasoline F 12 SHR 145Hp MT6 Start / Stop','ES6_','',2450,1270,0,0,0,0.14,'ES6_',1050,545,0,0,0,545,1,'2021-03-10 17:25:00','GZ6CN8',0,1,0);

INSERT  INTO [DABI001].[dbo].[rPT_InputVehicles_TEWU] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','engines','0','Astra: Gasoline F 12 SHL 110Hp MT6 Start / Stop','EJ6_','[x]',0,0,0,0,0,0.03,'',0,0,0,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputVehicles_TEWU] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','engines','0','Astra: Gasoline F 12 SHT 130Hp MT6 Start / Stop','EN6_','',1400,725,0,0,0,0.21,'EN6_',1400,725,0,0,0,725,1,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputVehicles_TEWU] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','engines','0','Astra: Gasoline F 12 SHR 145Hp MT6 Start / Stop','ES6_','',2450,1270,0,0,0,0.14,'ES6_',1050,545,0,0,0,545,1,'2021-03-10 17:25:00','GZ6CN8',0,1,0);

INSERT  INTO [DABI001].[dbo].[rPT_InputVehicles_TEWU] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','trims','0','Mokka','D','[x]',0,0,0,0,0,0.35,'',0,0,0,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputVehicles_TEWU] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','trims','0','Edition','G','',1350,700,0,316,0,0,'G',1350,700,0,316,0,384,0.55,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputVehicles_TEWU] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','trims','0','Business Edition','H','',1350,700,0,308,0,0,'H',0,0,0,-8,0,8,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);

INSERT  INTO [DABI001].[dbo].[rPT_InputVehicles_TEWU] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','body style','0','Hatchback','68','[x]',0,0,0,0,0,0.52,'',0,0,0,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputVehicles_TEWU] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','body style','0','Sports Tourer','35','',1000,515,0,1200,0,0.48,'35',1000,515,0,1200,0,-685,-1.33,'2021-03-10 17:25:00','GZ6CN8',0,1,0);

/*missing examples for
"vehicle type"
"lcv size and type"
"drive axle"
"rear axle"
"length"
"payload"
"height"
*/
--DROP TABLE [DABI001].[dbo].[rPT_InputVehicles_TEWU]