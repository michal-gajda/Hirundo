/****[pPT_GetData_PriceListFinalPage] ****/
/****Author: Magda Jankowska*******/
/****   Data: 18.02.2021    *******/

ALTER PROCEDURE [dbo].[pPT_GetData_PriceListFinalPage] 
	@source_json NVARCHAR(max)
	
AS
BEGIN

	DECLARE @result1 NVARCHAR(max);
	
	DECLARE @country NVARCHAR(max);
	DECLARE @countryGroup NVARCHAR(2);
	DECLARE @carline NVARCHAR(max);
	DECLARE @vehicleBrand NVARCHAR(max);
	DECLARE @modelYear NVARCHAR(max);

	SELECT
		@country = JSON_VALUE(@source_json, '$.country'),
		@countryGroup = JSON_VALUE(@source_json, '$.countryGroup'),
		@carline = JSON_VALUE(@source_json, '$.carline'),
		@vehicleBrand = JSON_VALUE(@source_json, '$.vehicleBrand'),
		@modelYear = JSON_VALUE(@source_json, '$.modelYear');

		--price_list_final
	SELECT @result1 = (
	SELECT
	   [countryName] 
	  ,[countryGroup]
      ,[carlineName] 
      ,[vehicleBrand] 
      ,[modelYear] 
      ,[dateOfDocument] 
      ,[dateOfVOG] 
      ,[fXRate] 
      ,[localCurrency]  
	  ,[codeGMUD2] 
	  ,[codeLCDV] 
	  ,[versionName] 
	  ,[finalMixPercent] 
	  ,[lpIncludedTaxesVehicleInLC] 
	  ,[lpIncludedTaxesOptionsInLC] 
	  ,[lpIncludedTaxesVehicleInLC] + [lpIncludedTaxesOptionsInLC] as [lpIncludedTaxesTotalInLC]
	  ,[lpExcludedTaxesVehicleInLC] 
	  ,[lpExcludedTaxesOptionsInLC] 
	  ,[lpExcludedTaxesVehicleInLC] + [lpExcludedTaxesOptionsInLC] as [lpExcludedTaxesTotalInLC]
	  ,[dealerPriceVehicleInLC] 
	  ,[dealerPriceOptionsInLC] 
	  ,[dealerPriceVehicleInLC] + [dealerPriceOptionsInLC] as [dealerPriceTotalInLC]
	  ,[dealerPriceVehicleInEUR] 
	  ,[dealerPriceOptionsInEUR] 
	  ,[dealerPriceVehicleInEUR] + [dealerPriceOptionsInEUR] as [dealerPriceTotalInEUR]
	  ,[importerGrossMarginVehicleInEUR] 
	  ,[importerGrossMarginOptionsInEUR] 
	  ,[importerGrossMarginVehicleInEUR] + [importerGrossMarginOptionsInEUR] as [importerGrossMarginTotalInEUR]
	  ,[importerGrossMarginVehiclePercent] 
	  ,[importerGrossMarginOptionsPercent] 
	  ,[importerGrossMarginVehiclePercent] + [importerGrossMarginOptionsPercent] as [importerGrossMarginTotalPercent]
	  ,[importerCostsVehicleInEUR] 
	  ,[importerCostsOptionsInEUR] 
	  ,[importerCostsVehicleInEUR] + [importerCostsOptionsInEUR] as [importerCostsTotalInEUR]
	  ,[importerNetMarginVehicleInEUR] 
	  ,[importerNetMarginOptionsInEUR] 
	  ,[importerNetMarginVehicleInEUR] + [importerNetMarginOptionsInEUR] as [importerNetMarginTotalInEUR]
	  ,[importerNetMarginVehiclePercent] 
	  ,[importerNetMarginOptionsPercent] 
	  ,[importerNetMarginVehiclePercent] + [importerNetMarginOptionsPercent] as [importerNetMarginTotalPercent]
	  ,[grossSalesPduVehicleInEUR] 
	  ,[grossSalesPduOptionsInEUR] 
	  ,[grossSalesPduVehicleInEUR] + [grossSalesPduOptionsInEUR] as [grossSalesPduTotalInEUR]
	  ,[countryMarginVehicleInEUR] 
	  ,[countryMarginOptionsInEUR]
	  ,[countryMarginVehicleInEUR] + [countryMarginOptionsInEUR] as [countryMarginTotalInEUR]
	  ,[countryMarginVehiclePercent] 
	  ,[countryMarginOptionsPercent] 
	  ,[countryMarginVehiclePercent] + [countryMarginOptionsPercent] as [countryMarginTotalPercent]
	  ,[ppiVehicleInEUR] 
	  ,[ppiOptionsInEUR] 
	  ,[ppiVehicleInEUR] + [ppiOptionsInEUR] as [ppiTotalInEUR]
	  ,[cmVehicleInEUR] 
	  ,[cmOptionsInEUR] 
	  ,[cmVehicleInEUR] + [cmOptionsInEUR] as [cmTotalInEUR]
	  ,[cmVehiclePercent] 
	  ,[cmOptionsPercent] 
	  ,[cmVehiclePercent] + [cmOptionsPercent] as [cmTotalPercent]
	  ,[opelSupportVehicleInEUR] 
	  ,[opelSupportOptionsInEUR] 
	  ,[opelSupportVehicleInEUR] + [opelSupportOptionsInEUR] as [opelSupportTotalInEUR]
	  ,[rbcvVehicleInEUR] 
	  ,[rbcvOptionsInEUR] 
	  ,[rbcvVehicleInEUR] + [rbcvOptionsInEUR]  as [rbcvTotalInEUR]
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_PriceListFinal] 
	  WHERE [countryName] = @country
		AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	 FOR JSON AUTO);


SELECT @result1 as [price_list_final]


END

--exec [pPT_GetData_PriceListFinalPage] N'{"country":"Switzerland","countryGroup":"CA","carline":"Mokka","vehicleBrand":"0: Opel","modelYear":"21.0A"}'
