/**[rPT_DetailedVarianceAnalysis_SubTab2_Options]**/
/****Author: Magda Jankowska********/
/***** Date: 17.02.2021 ************/
CREATE TABLE [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab2_Options] (
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
      ,[codeLCDV] NVARCHAR(10)
	  ,[codeRPO] NVARCHAR(10)
	  ,[name] NVARCHAR(30)
	  ,[importerGrossMarginEurPreviousMY] NUMERIC(18,4)
	  ,[importerGrossMarginEurCurrentMY] NUMERIC(18,4)
	  --,[importerGrossMarginEurDelta] NUMERIC(18,4)
	  ,[importerGrossMarginPercentPreviousMY] NUMERIC(18,4)
	  ,[importerGrossMarginPercentCurrentMY] NUMERIC(18,4)
	  --,[importerGrossMarginPercentDelta] NUMERIC(18,4)
	  ,[importerNetMarginEurPreviousMY] NUMERIC(18,4)
	  ,[importerNetMarginEurCurrentMY] NUMERIC(18,4)
	  --,[importerNetMarginEurDelta] NUMERIC(18,4)
	  ,[importerNetMarginPercentPreviousMY] NUMERIC(18,4)
	  ,[importerNetMarginPercentCurrentMY] NUMERIC(18,4)
	  --,[importerNetMarginPercentDelta] NUMERIC(18,4)
	  ,[countryGrossMarginEurPreviousMY] NUMERIC(18,4)
	  ,[countryGrossMarginEurCurrentMY] NUMERIC(18,4)
	  --,[countryGrossMarginEurDelta] NUMERIC(18,4)
	  ,[countryGrossMarginPercentPreviousMY] NUMERIC(18,4)
	  ,[countryGrossMarginPercentCurrentMY] NUMERIC(18,4)
	  --,[countryGrossMarginPercentDelta] NUMERIC(18,4)
	  ,[dealerMarginEurPreviousMY] NUMERIC(18,4)
	  ,[dealerGrossMarginEurCurrentMY] NUMERIC(18,4)
	  --,[dealerGrossMarginEurDelta] NUMERIC(18,4)
	  ,[timeStamp] DATETIME
	  ,[userId] NVARCHAR(10)
	  ,[officialPrices] DECIMAL(1,0)
	  ,[latestTimeStampWorkingVersion] DECIMAL(1,0)
	  ,[latestTimeStampOfficialVersion] DECIMAL(1,0));

INSERT INTO [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab2_Options] 
VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF'
,'Trimline'
,'FA0','B','Base',
0,100,
0,0.1,
0,900,
0,0.1,
0,800,
0,0.1,
0,150
,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT INTO [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab2_Options] 
VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','Trimline','GA0','C','Edition',0,100,0,0.1,0,900,0,0.1,0,800,0,0.1,0,150,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT INTO [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab2_Options] 
VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','Engine','FA0','B','Base',0,100,0,0.1,0,900,0,0.1,0,800,0,0.1,0,150,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT INTO [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab2_Options] 
VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','Engine','GA0','C','Edition',0,100,0,0.1,0,900,0,0.1,0,800,0,0.1,0,150,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT INTO [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab2_Options] 
VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','Body style','FA0','B','Base',0,100,0,0.1,0,900,0,0.1,0,800,0,0.1,0,150,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT INTO [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab2_Options] 
VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','Body style','GA0','C','Edition',0,100,0,0.1,0,900,0,0.1,0,800,0,0.1,0,150,'2021-03-10 17:25:00','GZ6CN8',0,1,0);

--DROP TABLE [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab2_Options] 