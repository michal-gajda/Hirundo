/****** [rPT_InputVehicles_ModelMix]  ******/
/****Author: Magda Jankowska*****/
/***** Date: 23.02.2021 *********/
CREATE TABLE [DABI001].[dbo].[rPT_InputVehicles_ModelMix] (
	   [countryName] NVARCHAR(20)
	  ,[countryGroup] NVARCHAR(2)
      ,[carlineName] NVARCHAR(20)
      ,[carlineCode] NVARCHAR(10)
      ,[vehicleBrand] NVARCHAR(20)
      ,[modelYear] NVARCHAR(15)
	  ,[modelYearCode] NVARCHAR(5)
      ,[dateOfDocument] DATE
      ,[dateOfVOG] DATE
      ,[fXRate] NUMERIC(18,4)
      ,[localCurrency]  NVARCHAR(3)
	  ,[selectedVersion] NVARCHAR(3)
	  ,[codeGMUD2] NVARCHAR(10)
	  ,[codeLCDV] NVARCHAR(30)
	  ,[versionName] NVARCHAR(200)
	  ,[trimlineCode] NVARCHAR(2)
	  ,[powertrainCode] NVARCHAR(2)
	  ,[bodyStyleCode] NVARCHAR(4)
	  ,[mixCurrentMY] NUMERIC(18,4)
	  ,[timeStamp] DATETIME
	  ,[userId] NVARCHAR(10)
	  ,[officialPrices] DECIMAL(1,0)
	  ,[latestTimeStampWorkingVersion] DECIMAL(1,0)
	  ,[latestTimeStampOfficialVersion] DECIMAL(1,0));

INSERT  INTO [DABI001].[dbo].[rPT_InputVehicles_ModelMix] VALUES ('Switzerland','CA','Mokka','', '0: Opel', '21.0A','','2020-05-10','2020-07-01',1.1,'CHF','x','0','0','Mokka Base Gasoline F 12XHL & MT-6 (74kW) EB2 ADTD_B 100Hp MT6 Start/Stop Europe','','','',0.5,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputVehicles_ModelMix] VALUES ('Switzerland','CA','Mokka','', '0: Opel', '21.0A','','2020-05-10','2020-07-01',1.1,'CHF','x','0','0','Mokka Edition Gasoline F 12 XHT & AT-8 (96kw) EB2 ADTS 130Hp AT8 Start/Stop Europe','','','',0.5,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputVehicles_ModelMix] VALUES ('Switzerland','CA','Mokka','', '0: Opel', '21.0A','','2020-05-10','2020-07-01',1.1,'CHF','x','0','0','Mokka Elegance Diesel F 15DT & MT-6 (81kW) DV5RCE 110Hp MT6 Start/Stop Europe','','','',0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);

INSERT  INTO [DABI001].[dbo].[rPT_InputVehicles_ModelMix] VALUES ('Switzerland','CA','Astra','', '0: Opel', '21.0A','','2020-05-10','2020-07-01',1.1,'CHF','x','0','0','Astra Base Gasoline F 12XHL & MT-6 (74kW) EB2 ADTD_B 100Hp MT6 Start/Stop Europe','','','',0.5,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputVehicles_ModelMix] VALUES ('Switzerland','CA','Astra','', '0: Opel', '21.0A','','2020-05-10','2020-07-01',1.1,'CHF','x','0','0','Astra Edition Gasoline F 12 XHT & AT-8 (96kw) EB2 ADTS 130Hp AT8 Start/Stop Europe','','','',0.5,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputVehicles_ModelMix] VALUES ('Switzerland','CA','Astra','', '0: Opel', '21.0A','','2020-05-10','2020-07-01',1.1,'CHF','x','0','0','Astra Elegance Diesel F 15DT & MT-6 (81kW) DV5RCE 110Hp MT6 Start/Stop Europe','','','',0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);

--DROP TABLE [DABI001].[dbo].[rPT_InputVehicles_ModelMix]