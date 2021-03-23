/****[pPT_GetData_OptionsPage] ****/
/****Author: Magda Jankowska*******/
/****   Data: 08.03.2021    *******/

ALTER PROCEDURE [dbo].[pPT_GetData_OptionsPage] 
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

--option_prices with 2 steps
WITH T AS
(SELECT [countryName]
	  ,[countryGroup]
      ,[carlineName] 
      ,[vehicleBrand] 
      ,[modelYear] 
      ,[dateOfDocument] 
      ,[dateOfVOG] 
      ,[fXRate] 
      ,[localCurrency]  
	  ,[fXRate_PrevMY]  
	  ,[selectedFFO]
	  ,[optionCodeRPO]
	  ,[optionCodeLCDV] 
	  ,[overStandartCMO] 
	  ,[optionDescription] 
	  ,[trimlineCode] 
	  ,[trimlineName] 
	  ,[aggregatedBodyStyle]
	  ,[msrpInLC_CurrMY] 
	  ,ISNULL([msrpInLC_CurrMY] / NULLIF([fXRate],0),0) as [msrpInEuro_CurrMY] 
	  ,[mixPercent_CurrMY] 
	  --,[gsDividedPDUinEuro_CurrMY] / [msrpInEuro_CurrMY] as [gsfPercent_CurrMY] 
	  ,[gsDividedPDUinEuro_CurrMY] 
	  ,[materialCostInEuro_CurrMY] 
	  ,[foRbcvInEuro_CurrMY] 
	  ,ISNULL([foRbcvInEuro_CurrMY] / NULLIF([gsDividedPDUinEuro_CurrMY],0),0) as [foRbcvPercentOfPDU_CurrMY]
	  ,[msrpInLC_PrevMY] 
	  ,ISNULL([msrpInLC_PrevMY] /  NULLIF([fXRate_PrevMY],0),0) as [msrpInEuro_PrevMY] 
	  ,[mixPercent_PrevMY] 
	  --,[gsDividedPDUinEuro_PrevMY] / [msrpInEuro_PrevMY] as [gsfPercent_PrevMY] 
	  ,[gsDividedPDUinEuro_PrevMY]
	  ,[materialCostInEuro_PrevMY] 
	  ,[foRbcvInEuro_PrevMY]
	  ,ISNULL([foRbcvInEuro_PrevMY] / NULLIF([gsDividedPDUinEuro_PrevMY],0),0) as [foRbcvPercentOfPDU_PrevMY]
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_InputOptions])

	
	SELECT @result1 = (SELECT 
	   [countryName]
	  ,[countryGroup]
      ,[carlineName] 
      ,[vehicleBrand] 
      ,[modelYear] 
      ,[dateOfDocument] 
      ,[dateOfVOG] 
      ,[fXRate] 
      ,[localCurrency]  
	  ,[fXRate_PrevMY]  
	  ,[selectedFFO]
	  ,[optionCodeRPO]
	  ,[optionCodeLCDV] 
	  ,[overStandartCMO] 
	  ,[optionDescription] 
	  ,[trimlineCode] 
	  ,[trimlineName] 
	  ,[aggregatedBodyStyle]
	  ,[msrpInLC_CurrMY] 
	  , [msrpInEuro_CurrMY] 
	  ,[mixPercent_CurrMY] 
	  ,ISNULL([gsDividedPDUinEuro_CurrMY] / NULLIF([msrpInEuro_CurrMY],0),0) as [gsfPercent_CurrMY] 
	  ,[gsDividedPDUinEuro_CurrMY] 
	  ,[materialCostInEuro_CurrMY] 
	  ,[foRbcvInEuro_CurrMY] 
	  , [foRbcvPercentOfPDU_CurrMY]
	  ,[msrpInLC_PrevMY] 
	  , [msrpInEuro_PrevMY] 
	  ,[mixPercent_PrevMY] 
	  ,ISNULL([gsDividedPDUinEuro_PrevMY] / NULLIF([msrpInEuro_PrevMY],0),0) as [gsfPercent_PrevMY] 
	  ,[gsDividedPDUinEuro_PrevMY]
	  ,[materialCostInEuro_PrevMY] 
	  ,[foRbcvInEuro_PrevMY]
	  ,[foRbcvPercentOfPDU_PrevMY] 
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM T
	  WHERE [countryName]= @country
		AND [countryGroup]= @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);

SELECT @result1 as [option_prices]

END

--exec [pPT_GetData_OptionsPage] N'{"country":"Switzerland","countryGroup":"CA","carline":"Astra","vehicleBrand":"0: Opel","modelYear":"21.0A"}'
