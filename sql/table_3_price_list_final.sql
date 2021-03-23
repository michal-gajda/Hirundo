/****** [rPT_PriceListFinal]  ******/
/****Author: Magda Jankowska*****/
/***** Date: 18.02.2021 *********/
CREATE TABLE [DABI001].[dbo].[rPT_PriceListFinal] (
	   [countryName] NVARCHAR(20)
	  ,[countryGroup] NVARCHAR(2)
      ,[carlineName] NVARCHAR(20)
      ,[vehicleBrand] NVARCHAR(20)
      ,[modelYear] NVARCHAR(5)
      ,[dateOfDocument] DATE
      ,[dateOfVOG] DATE
      ,[fXRate] NUMERIC(18,4)
      ,[localCurrency]  NVARCHAR(3)
	  ,[codeGMUD2] NVARCHAR(10)
	  ,[codeLCDV] NVARCHAR(10)
	  ,[versionName] NVARCHAR(200)
	  ,[finalMixPercent] NUMERIC(18,4)
	  ,[lpIncludedTaxesVehicleInLC] NUMERIC(18,4)
	  ,[lpIncludedTaxesOptionsInLC] NUMERIC(18,4)
	  --,[lpIncludedTaxesTotalInLC]
	  ,[lpExcludedTaxesVehicleInLC] NUMERIC(18,4)
	  ,[lpExcludedTaxesOptionsInLC] NUMERIC(18,4)
	  --,[lpExcludedTaxesTotalInLC]
	  ,[dealerPriceVehicleInLC] NUMERIC(18,4)
	  ,[dealerPriceOptionsInLC] NUMERIC(18,4)
	  --,[dealerPriceTotalInLC]
	  ,[dealerPriceVehicleInEUR] NUMERIC(18,4)
	  ,[dealerPriceOptionsInEUR] NUMERIC(18,4)
	  --,[dealerPriceTotalInEUR]
	  ,[importerGrossMarginVehicleInEUR] NUMERIC(18,4)
	  ,[importerGrossMarginOptionsInEUR] NUMERIC(18,4)
	  --,[importerGrossMarginTotalInEUR]
	  ,[importerGrossMarginVehiclePercent] NUMERIC(18,4)
	  ,[importerGrossMarginOptionsPercent] NUMERIC(18,4)
	  --,[importerGrossMarginTotalPercent]
	  ,[importerCostsVehicleInEUR] NUMERIC(18,4)
	  ,[importerCostsOptionsInEUR] NUMERIC(18,4)
	  --,[importerCostsTotalInEUR]
	  ,[importerNetMarginVehicleInEUR] NUMERIC(18,4)
	  ,[importerNetMarginOptionsInEUR] NUMERIC(18,4)
	  --,[importerNetMarginTotalInEUR]
	  ,[importerNetMarginVehiclePercent] NUMERIC(18,4)
	  ,[importerNetMarginOptionsPercent] NUMERIC(18,4)
	  --,[importerNetMarginTotalPercent]
	  ,[grossSalesPduVehicleInEUR] NUMERIC(18,4)
	  ,[grossSalesPduOptionsInEUR] NUMERIC(18,4)
	  --,[grossSalesPduTotalInEUR]
	  ,[countryMarginVehicleInEUR] NUMERIC(18,4)
	  ,[countryMarginOptionsInEUR] NUMERIC(18,4)
	  --,[countryMarginTotalInEUR]
	  ,[countryMarginVehiclePercent] NUMERIC(18,4)
	  ,[countryMarginOptionsPercent] NUMERIC(18,4)
	  --,[countryMarginTotalPercent]
	  ,[ppiVehicleInEUR] NUMERIC(18,4)
	  ,[ppiOptionsInEUR] NUMERIC(18,4)
	  --,[ppiTotalInEUR]
	  ,[cmVehicleInEUR] NUMERIC(18,4)
	  ,[cmOptionsInEUR] NUMERIC(18,4)
	  --,[cmTotalInEUR]
	  ,[cmVehiclePercent] NUMERIC(18,4)
	  ,[cmOptionsPercent] NUMERIC(18,4)
	  --,[cmTotalPercent]
	  ,[opelSupportVehicleInEUR] NUMERIC(18,4)
	  ,[opelSupportOptionsInEUR] NUMERIC(18,4)
	  --,[opelSupportTotalInEUR]
	  ,[rbcvVehicleInEUR] NUMERIC(18,4)
	  ,[rbcvOptionsInEUR] NUMERIC(18,4)
	  --,[rbcvTotalInEUR]
	  ,[timeStamp] DATETIME
	  ,[userId] NVARCHAR(10)
	  ,[officialPrices] DECIMAL(1,0)
	  ,[latestTimeStampWorkingVersion] DECIMAL(1,0)
	  ,[latestTimeStampOfficialVersion] DECIMAL(1,0));

INSERT  INTO [DABI001].[dbo].[rPT_PriceListFinal] 
VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','code1','code1','Mokka Base Gasoline F 12XHL & MT-6 (74kW) EB2 ADTD_B 100Hp MT6 Start/Stop Europe',0.25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_PriceListFinal] 
VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','code2','code2','Mokka Edition Gasoline F 12 XHT & AT-8 (96kw) EB2 ADTS 130Hp AT8 Start/Stop Europe',0.25,10,10,10,10,10,10,10,10,10,10,10,10,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_PriceListFinal] 
VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','code3','code3','Mokka Elegance Diesel F 15DT & MT-6 (81kW) DV5RCE 110Hp MT6 Start/Stop Europe',0.5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_PriceListFinal] 
VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','code1','code1','Astra Base Gasoline F 12XHL & MT-6 (74kW) EB2 ADTD_B 100Hp MT6 Start/Stop Europe',0.25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_PriceListFinal] 
VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','code2','code2','Astra Edition Gasoline F 12 XHT & AT-8 (96kw) EB2 ADTS 130Hp AT8 Start/Stop Europe',0.25,30,30,30,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_PriceListFinal] 
VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','2020-05-10','2020-07-01',1.1,'CHF','code3','code3','Astra Elegance Diesel F 15DT & MT-6 (81kW) DV5RCE 110Hp MT6 Start/Stop Europe',0.5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2021-03-10 17:25:00','GZ6CN8',0,1,0);

--DROP TABLE [DABI001].[dbo].[rPT_PriceListFinal] 