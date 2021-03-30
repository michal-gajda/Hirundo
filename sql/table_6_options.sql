/****** [rPT_InputOptions]  ******/
/****Author: Magda Jankowska*****/
/***** Date: 08.03.2021 *********/
CREATE TABLE [DABI001].[dbo].[rPT_InputOptions] (
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
	  ,[fXRate_PrevMY]  NUMERIC(18,4)
	  ,[selectedFFO] NVARCHAR(3)
	  ,[optionCodeRPO] NVARCHAR(10)
	  ,[optionCodeLCDV] NVARCHAR(10)
	  ,[overStandartCMO] NVARCHAR(50)
	  ,[optionDescription] NVARCHAR(200)
	  ,[trimlineCode] NVARCHAR(4)
	  ,[trimlineName] NVARCHAR(20)
	  ,[aggregatedBodyStyle] NVARCHAR(20)
	  ,[msrpInLC_CurrMY] NUMERIC(18,4)
	  --,[msrpInLC_CurrMY] / [fXRate] as [msrpInEuro_CurrMY] 
	  ,[mixPercent_CurrMY] NUMERIC(18,4)
	  --,[gsDividedPDUinEuro_CurrMY] / [msrpInEuro_CurrMY] as [gsfPercent_CurrMY] 
	  ,[gsDividedPDUinEuro_CurrMY] NUMERIC(18,4)
	  ,[materialCostInEuro_CurrMY] NUMERIC(18,4)
	  ,[foRbcvInEuro_CurrMY] NUMERIC(18,4)
	  --,[foRbcvInEuro_CurrMY] / [gsDividedPDUinEuro_CurrMY] as [foRbcvPercentOfPDU_CurrMY]
	  ,[msrpInLC_PrevMY] NUMERIC(18,4)
	  --,[msrpInLC] / [fXRate_PrevMY] as [msrpInEuro_PrevMY] 
	  ,[mixPercent_PrevMY] NUMERIC(18,4)
	  --,[gsDividedPDUinEuro_PrevMY] / [msrpInEuro_PrevMY] as [gsfPercent_PrevMY] 
	  ,[gsDividedPDUinEuro_PrevMY] NUMERIC(18,4)
	  ,[materialCostInEuro_PrevMY] NUMERIC(18,4)
	  ,[foRbcvInEuro_PrevMY] NUMERIC(18,4)
	  --,[foRbcvInEuro_PrevMY] / [gsDividedPDUinEuro_PrevMY] as [foRbcvPercentOfPDU_PrevMY]
	  ,[timeStamp] DATETIME
	  ,[userId] NVARCHAR(10)
	  ,[officialPrices] DECIMAL(1,0)
	  ,[latestTimeStampWorkingVersion] DECIMAL(1,0)
	  ,[latestTimeStampOfficialVersion] DECIMAL(1,0));

INSERT  INTO [DABI001].[dbo].[rPT_InputOptions] VALUES ('Switzerland','CA','Mokka','', '0: Opel', '21.0A','','2020-05-10','2020-07-01',1.1,'CHF',1.1,'[x]','2EB','','','Winter Pack 1', 'D','MOKKA','68',390,0.667,230,83,147,0,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputOptions] VALUES ('Switzerland','CA','Mokka','', '0: Opel', '21.0A','','2020-05-10','2020-07-01',1.1,'CHF',1.1,'[x]','2EB','','','Winter Pack 1', 'F','GS LINE','68',390,0.774,230,76,154,0,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputOptions] VALUES ('Switzerland','CA','Mokka','', '0: Opel', '21.0A','','2020-05-10','2020-07-01',1.1,'CHF',1.1,'[x]','2EB','','','Winter Pack 1', 'E','ELEGANCE','68',290,0.95,170,79,91,0,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputOptions] VALUES ('Switzerland','CA','Astra','', '0: Opel', '21.0A','','2020-05-10','2020-07-01',1.1,'CHF',1.1,'[x]','2EB','','','Winter Pack 1', 'D','ASTRA','68',390,0.667,230,83,147,0,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);

--DROP TABLE [DABI001].[dbo].[rPT_InputOptions] 
