/**[rPT_DetailedVarianceAnalysis_SubTab1_Options]**/
/****Author: Magda Jankowska********/
/***** Date: 15.02.2021 ************/
CREATE TABLE [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab1_Options] (
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
	  --,[measureTypeSubcategory] NVARCHAR(50)
      ,[codeLCDV] NVARCHAR(10)
	  ,[codeRPO] NVARCHAR(10)
	  ,[name] NVARCHAR(30)
	  ,[mixPreviousMY]  NUMERIC(18,4)
	  ,[mixCurrentMY] NUMERIC(18,4)
	  --,[mixDelta] NUMERIC(18,4)
	  ,[listPriceInclTaxesInLCPreviousMY] NUMERIC(18,4)
	  ,[listPriceInclTaxesInLCCurrentMY] NUMERIC(18,4)
	  --,[listPriceInclTaxesInLCDelta] NUMERIC(18,4)
	  ,[listPriceExclTaxesInLCPreviousMY] NUMERIC(18,4)
	  ,[listPriceExclTaxesInLCCurrentMY] NUMERIC(18,4)
	  --,[listPriceExclTaxesInLCDelta] NUMERIC(18,4)
	  ,[grossSalesPDUinEuroPreviousMY] NUMERIC(18,4)
	  ,[grossSalesPDUinEuroCurrentMY] NUMERIC(18,4)
	  --,[grossSalesPDUinEuroDelta] NUMERIC(18,4)
	  ,[ppiInEuroPreviousMY] NUMERIC(18,4)
	  ,[ppiInEuroCurrentMY] NUMERIC(18,4)
	  --,[ppiInEuroDelta] NUMERIC(18,4)
	  ,[rbcvInEuroPreviousMY] NUMERIC(18,4)
	  ,[rbcvInEuroCurrentMY] NUMERIC(18,4)
	  --,[rbcvInEuroDelta] NUMERIC(18,4)
	  ,[timeStamp] DATETIME
	  ,[userId] NVARCHAR(10)
	  ,[officialPrices] DECIMAL(1,0)
	  ,[latestTimeStampWorkingVersion] DECIMAL(1,0)
	  ,[latestTimeStampOfficialVersion] DECIMAL(1,0));

INSERT  INTO [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab1_Options] 
VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Trimline','FA0','B','Base',0,0,0,0,0,0,0,0,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab1_Options] 
VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Trimline','GA0','C','Edition',0,0.05,0,1293,0,1399,0,771,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab1_Options] 
VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Engine','FA0','B','Base',0,0,0,0,0,0,0,0,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab1_Options] 
VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Engine','GA0','C','Edition',0,0.05,0,1293,0,1399,0,771,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab1_Options] 
VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Body style','FA0','B','Base',0,0,0,0,0,0,0,0,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab1_Options] 
VALUES ('Switzerland','CA','Mokka','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Body style','GA0','C','Edition',0,0.05,0,1293,0,1399,0,771,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab1_Options] 
VALUES ('Switzerland','CA','Astra','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Trimline','FA0','B','Base',0,0,0,0,0,0,0,0,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab1_Options] 
VALUES ('Switzerland','CA','Astra','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Trimline','GA0','C','Edition',0,0.05,0,1293,0,1399,0,771,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab1_Options] 
VALUES ('Switzerland','CA','Astra','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Engine','FA0','B','Base',0,0,0,0,0,0,0,0,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab1_Options] 
VALUES ('Switzerland','CA','Astra','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Engine','GA0','C','Edition',0,0.05,0,1293,0,1399,0,771,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab1_Options] 
VALUES ('Switzerland','CA','Astra','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Body style','FA0','B','Base',0,0,0,0,0,0,0,0,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab1_Options] 
VALUES ('Switzerland','CA','Astra','0: Opel','21.0A','2020-05-10','2020-07-01',1.1,'CHF','Body style','GA0','C','Edition',0,0.05,0,1293,0,1399,0,771,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);

--DROP TABLE [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab1_Options] 

