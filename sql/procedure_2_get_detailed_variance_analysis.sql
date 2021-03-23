/****[pPT_GetData_DetailVarianceAnalysisPage] ****/
/****Author: Magda Jankowska               *******/
/****   Data: 15.02.2021                   *******/

ALTER PROCEDURE [dbo].[pPT_GetData_DetailedVarianceAnalysisPage] 
	@source_json NVARCHAR(max)
	
AS
BEGIN

	DECLARE @result1 NVARCHAR(max);
	DECLARE @result2 NVARCHAR(max);
	DECLARE @result3 NVARCHAR(max);
	DECLARE @result4 NVARCHAR(max);
	DECLARE @result5 NVARCHAR(max); 
	DECLARE @result6 NVARCHAR(max); 
	DECLARE @result7 NVARCHAR(max);
	DECLARE @result8 NVARCHAR(max); 
	DECLARE @result9 NVARCHAR(max);
	DECLARE @result10 NVARCHAR(max);
	DECLARE @result11 NVARCHAR(max);
	DECLARE @result12 NVARCHAR(max);
	DECLARE @result13 NVARCHAR(max);
	DECLARE @result14 NVARCHAR(max);
	DECLARE @result15 NVARCHAR(max); 
	DECLARE @result16 NVARCHAR(max); 
	DECLARE @result17 NVARCHAR(max);
	DECLARE @result18 NVARCHAR(max);

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

    --Trimline vehicle + options subtab1
	SELECT @result1 = (SELECT v.[countryName] 
      ,v.[countryGroup]
	  ,v.[carlineName] 
      ,v.[vehicleBrand] 
      ,v.[modelYear] 
      ,v.[dateOfDocument] 
      ,v.[dateOfVOG] 
      ,v.[fXRate] 
      ,v.[localCurrency] 
	  ,v.[measureType] 
      ,v.[codeLCDV] 
	  ,v.[codeRPO] 
	  ,v.[name]
	  ,v.[mixPreviousMY] 
	  ,v.[mixCurrentMY] 
	  ,v.[mixCurrentMY] - v.[mixPreviousMY] AS [mixDelta] 
	  ,v.[listPriceInclTaxesInLCPreviousMY] + o.[listPriceInclTaxesInLCPreviousMY] as [listPriceInclTaxesInLCPreviousMY]
	  ,v.[listPriceInclTaxesInLCCurrentMY] + o.[listPriceInclTaxesInLCCurrentMY]  as [listPriceInclTaxesInLCCurrentMY] 
	  ,(v.[listPriceInclTaxesInLCCurrentMY] + o.[listPriceInclTaxesInLCCurrentMY])-(v.[listPriceInclTaxesInLCPreviousMY] + o.[listPriceInclTaxesInLCPreviousMY]) as [listPriceInclTaxesInLCDelta] 
	  ,v.[listPriceExclTaxesInLCPreviousMY] + o.[listPriceExclTaxesInLCPreviousMY]  as [listPriceExclTaxesInLCPreviousMY] 
	  ,v.[listPriceExclTaxesInLCCurrentMY] + o.[listPriceExclTaxesInLCCurrentMY] as [listPriceExclTaxesInLCCurrentMY] 
	  ,(v.[listPriceExclTaxesInLCCurrentMY] + o.[listPriceExclTaxesInLCCurrentMY])-(v.[listPriceExclTaxesInLCPreviousMY] + o.[listPriceExclTaxesInLCPreviousMY]) as [listPriceExclTaxesInLCDelta] 
	  ,v.[grossSalesPDUinEuroPreviousMY] + o.[grossSalesPDUinEuroPreviousMY]  as [grossSalesPDUinEuroPreviousMY] 
	  ,v.[grossSalesPDUinEuroCurrentMY] + o.[grossSalesPDUinEuroCurrentMY] as [grossSalesPDUinEuroCurrentMY]
	  ,(v.[grossSalesPDUinEuroCurrentMY] + o.[grossSalesPDUinEuroCurrentMY]) - (v.[grossSalesPDUinEuroPreviousMY] + o.[grossSalesPDUinEuroPreviousMY] ) as [grossSalesPDUinEuroDelta] 
	  ,v.[ppiInEuroPreviousMY] + o.[ppiInEuroPreviousMY]  as [ppiInEuroPreviousMY] 
	  ,v.[ppiInEuroCurrentMY] + o.[ppiInEuroCurrentMY] as [ppiInEuroCurrentMY] 
	  ,(v.[ppiInEuroCurrentMY] + o.[ppiInEuroCurrentMY]) - (v.[ppiInEuroPreviousMY] + o.[ppiInEuroPreviousMY]) as [ppiInEuroDelta] 
	  ,v.[rbcvInEuroPreviousMY] + o.[rbcvInEuroPreviousMY] as [rbcvInEuroPreviousMY]
	  ,v.[rbcvInEuroCurrentMY] + o.[rbcvInEuroCurrentMY] as [rbcvInEuroCurrentMY]
	  ,(v.[rbcvInEuroCurrentMY] + o.[rbcvInEuroCurrentMY]) - (v.[rbcvInEuroPreviousMY] + o.[rbcvInEuroPreviousMY]) as [rbcvInEuroDelta] 
	  ,v.[timeStamp]
	  --,v.[userId] --don't needed here
	  ,v.[officialPrices]
	  ,v.[latestTimeStampWorkingVersion]
	  ,v.[latestTimeStampOfficialVersion]
	FROM [rPT_DetailedVarianceAnalysis_SubTab1_Vehicle] v
	LEFT JOIN  [rPT_DetailedVarianceAnalysis_SubTab1_Options] o
	ON v.countryName = o.countryName
	 AND v.countryGroup = o.countryGroup
	 AND v.carlineName = o.carlineName
	 AND v.vehicleBrand = o.vehicleBrand
	 AND v.dateOfDocument = o.dateOfDocument
	 AND v.dateOfVOG = o.dateOfVOG
	 AND v.fXRate = o.fXRate
	 AND v.localCurrency = o.localCurrency
	 AND v.measureType = o.measureType
	 AND v.codeLCDV = o.codeLCDV
	 AND v.codeRPO = o.codeRPO
	 AND v.name = o.name
	 WHERE v.[measureType] = 'Trimline'
		AND v.[countryName]= @country
		AND v.[countryGroup] = @countryGroup
		AND v.[carlineName] = @carline
		AND v.[vehicleBrand] = @vehicleBrand
		AND v.[modelYear] = @modelYear
	FOR JSON AUTO);

	--Trimline vehicle subtab1
	SELECT @result2 = (SELECT [countryName] 
	  ,[countryGroup]
      ,[carlineName] 
      ,[vehicleBrand] 
      ,[modelYear] 
      ,[dateOfDocument] 
      ,[dateOfVOG] 
      ,[fXRate] 
      ,[localCurrency] 
	  ,[measureType] 
      ,[codeLCDV] 
	  ,[codeRPO] 
	  ,[name]
	  ,[mixPreviousMY] 
	  ,[mixCurrentMY] 
	  ,[mixCurrentMY]-[mixPreviousMY] AS [mixDelta] 
	  ,[listPriceInclTaxesInLCPreviousMY]
	  ,[listPriceInclTaxesInLCCurrentMY] 
	  ,[listPriceInclTaxesInLCCurrentMY]-[listPriceInclTaxesInLCCurrentMY] as [listPriceInclTaxesInLCDelta] 
	  ,[listPriceExclTaxesInLCPreviousMY] 
	  ,[listPriceExclTaxesInLCCurrentMY] 
	  ,[listPriceExclTaxesInLCCurrentMY]-[listPriceExclTaxesInLCPreviousMY] as [listPriceExclTaxesInLCDelta] 
	  ,[grossSalesPDUinEuroPreviousMY] 
	  ,[grossSalesPDUinEuroCurrentMY] 
	  ,[grossSalesPDUinEuroCurrentMY] - [grossSalesPDUinEuroPreviousMY] as [grossSalesPDUinEuroDelta] 
	  ,[ppiInEuroPreviousMY] 
	  ,[ppiInEuroCurrentMY] 
	  ,[ppiInEuroCurrentMY] - [ppiInEuroPreviousMY] as [ppiInEuroDelta] 
	  ,[rbcvInEuroPreviousMY]
	  ,[rbcvInEuroCurrentMY]
	  ,[rbcvInEuroCurrentMY] - [rbcvInEuroPreviousMY] as [rbcvInEuroDelta] 
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	FROM [rPT_DetailedVarianceAnalysis_SubTab1_Vehicle]
	WHERE [measureType] = 'Trimline'
		AND [countryName]= @country
		AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);

	--Trimline options subtab1
	SELECT @result3 = (SELECT [countryName] 
	  ,[countryGroup]
      ,[carlineName] 
      ,[vehicleBrand] 
      ,[modelYear] 
      ,[dateOfDocument] 
      ,[dateOfVOG] 
      ,[fXRate] 
      ,[localCurrency] 
	  ,[measureType] 
      ,[codeLCDV] 
	  ,[codeRPO] 
	  ,[name]
	  ,[mixPreviousMY] 
	  ,[mixCurrentMY] 
	  ,[mixCurrentMY]-[mixPreviousMY] AS [mixDelta] 
	  ,[listPriceInclTaxesInLCPreviousMY]
	  ,[listPriceInclTaxesInLCCurrentMY] 
	  ,[listPriceInclTaxesInLCCurrentMY]-[listPriceInclTaxesInLCCurrentMY] as [listPriceInclTaxesInLCDelta] 
	  ,[listPriceExclTaxesInLCPreviousMY] 
	  ,[listPriceExclTaxesInLCCurrentMY] 
	  ,[listPriceExclTaxesInLCCurrentMY]-[listPriceExclTaxesInLCPreviousMY] as [listPriceExclTaxesInLCDelta] 
	  ,[grossSalesPDUinEuroPreviousMY] 
	  ,[grossSalesPDUinEuroCurrentMY] 
	  ,[grossSalesPDUinEuroCurrentMY] - [grossSalesPDUinEuroPreviousMY] as [grossSalesPDUinEuroDelta] 
	  ,[ppiInEuroPreviousMY] 
	  ,[ppiInEuroCurrentMY] 
	  ,[ppiInEuroCurrentMY] - [ppiInEuroPreviousMY] as [ppiInEuroDelta] 
	  ,[rbcvInEuroPreviousMY]
	  ,[rbcvInEuroCurrentMY]
	  ,[rbcvInEuroCurrentMY] - [rbcvInEuroPreviousMY] as [rbcvInEuroDelta] 
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	FROM [rPT_DetailedVarianceAnalysis_SubTab1_Options]
	WHERE [measureType] = 'Trimline'
		AND [countryName]= @country
		AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);

	--Engine vehicle + options subtab1
	SELECT @result4 = (SELECT v.[countryName] 
	  ,v.[countryGroup]
      ,v.[carlineName] 
      ,v.[vehicleBrand] 
      ,v.[modelYear] 
      ,v.[dateOfDocument] 
      ,v.[dateOfVOG] 
      ,v.[fXRate] 
      ,v.[localCurrency] 
	  ,v.[measureType] 
      ,v.[codeLCDV] 
	  ,v.[codeRPO] 
	  ,v.[name]
	  ,v.[mixPreviousMY] 
	  ,v.[mixCurrentMY] 
	  ,v.[mixCurrentMY] - v.[mixPreviousMY] AS [mixDelta] 
	  ,v.[listPriceInclTaxesInLCPreviousMY] + o.[listPriceInclTaxesInLCPreviousMY] as [listPriceInclTaxesInLCPreviousMY]
	  ,v.[listPriceInclTaxesInLCCurrentMY] + o.[listPriceInclTaxesInLCCurrentMY]  as [listPriceInclTaxesInLCCurrentMY] 
	  ,(v.[listPriceInclTaxesInLCCurrentMY] + o.[listPriceInclTaxesInLCCurrentMY])-(v.[listPriceInclTaxesInLCPreviousMY] + o.[listPriceInclTaxesInLCPreviousMY]) as [listPriceInclTaxesInLCDelta] 
	  ,v.[listPriceExclTaxesInLCPreviousMY] + o.[listPriceExclTaxesInLCPreviousMY]  as [listPriceExclTaxesInLCPreviousMY] 
	  ,v.[listPriceExclTaxesInLCCurrentMY] + o.[listPriceExclTaxesInLCCurrentMY] as [listPriceExclTaxesInLCCurrentMY] 
	  ,(v.[listPriceExclTaxesInLCCurrentMY] + o.[listPriceExclTaxesInLCCurrentMY])-(v.[listPriceExclTaxesInLCPreviousMY] + o.[listPriceExclTaxesInLCPreviousMY]) as [listPriceExclTaxesInLCDelta] 
	  ,v.[grossSalesPDUinEuroPreviousMY] + o.[grossSalesPDUinEuroPreviousMY]  as [grossSalesPDUinEuroPreviousMY] 
	  ,v.[grossSalesPDUinEuroCurrentMY] + o.[grossSalesPDUinEuroCurrentMY] as [grossSalesPDUinEuroCurrentMY]
	  ,(v.[grossSalesPDUinEuroCurrentMY] + o.[grossSalesPDUinEuroCurrentMY]) - (v.[grossSalesPDUinEuroPreviousMY] + o.[grossSalesPDUinEuroPreviousMY] ) as [grossSalesPDUinEuroDelta] 
	  ,v.[ppiInEuroPreviousMY] + o.[ppiInEuroPreviousMY]  as [ppiInEuroPreviousMY] 
	  ,v.[ppiInEuroCurrentMY] + o.[ppiInEuroCurrentMY] as [ppiInEuroCurrentMY] 
	  ,(v.[ppiInEuroCurrentMY] + o.[ppiInEuroCurrentMY]) - (v.[ppiInEuroPreviousMY] + o.[ppiInEuroPreviousMY]) as [ppiInEuroDelta] 
	  ,v.[rbcvInEuroPreviousMY] + o.[rbcvInEuroPreviousMY] as [rbcvInEuroPreviousMY]
	  ,v.[rbcvInEuroCurrentMY] + o.[rbcvInEuroCurrentMY] as [rbcvInEuroCurrentMY]
	  ,(v.[rbcvInEuroCurrentMY] + o.[rbcvInEuroCurrentMY]) - (v.[rbcvInEuroPreviousMY] + o.[rbcvInEuroPreviousMY]) as [rbcvInEuroDelta] 
	  ,v.[timeStamp]
	  --,v.[userId] --don't needed here
	  ,v.[officialPrices]
	  ,v.[latestTimeStampWorkingVersion]
	  ,v.[latestTimeStampOfficialVersion]
	FROM [rPT_DetailedVarianceAnalysis_SubTab1_Vehicle] v
	LEFT JOIN  [rPT_DetailedVarianceAnalysis_SubTab1_Options] o
	ON v.countryName = o.countryName
	 AND v.countryGroup = o.countryGroup
	 AND v.carlineName = o.carlineName
	 AND v.vehicleBrand = o.vehicleBrand
	 AND v.dateOfDocument = o.dateOfDocument
	 AND v.dateOfVOG = o.dateOfVOG
	 AND v.fXRate = o.fXRate
	 AND v.localCurrency = o.localCurrency
	 AND v.measureType = o.measureType
	 AND v.codeLCDV = o.codeLCDV
	 AND v.codeRPO = o.codeRPO
	 AND v.name = o.name
	 WHERE v.[measureType] = 'Engine'
		AND v.[countryName]= @country
		AND v.[countryGroup] = @countryGroup
		AND v.[carlineName] = @carline
		AND v.[vehicleBrand] = @vehicleBrand
		AND v.[modelYear] = @modelYear
	FOR JSON AUTO);

	--Engine vehicle subtab1
	SELECT @result5 = (SELECT [countryName] 
	  ,[countryGroup]
      ,[carlineName] 
      ,[vehicleBrand] 
      ,[modelYear] 
      ,[dateOfDocument] 
      ,[dateOfVOG] 
      ,[fXRate] 
      ,[localCurrency] 
	  ,[measureType] 
      ,[codeLCDV] 
	  ,[codeRPO] 
	  ,[name]
	  ,[mixPreviousMY] 
	  ,[mixCurrentMY] 
	  ,[mixCurrentMY]-[mixPreviousMY] AS [mixDelta] 
	  ,[listPriceInclTaxesInLCPreviousMY]
	  ,[listPriceInclTaxesInLCCurrentMY] 
	  ,[listPriceInclTaxesInLCCurrentMY]-[listPriceInclTaxesInLCCurrentMY] as [listPriceInclTaxesInLCDelta] 
	  ,[listPriceExclTaxesInLCPreviousMY] 
	  ,[listPriceExclTaxesInLCCurrentMY] 
	  ,[listPriceExclTaxesInLCCurrentMY]-[listPriceExclTaxesInLCPreviousMY] as [listPriceExclTaxesInLCDelta] 
	  ,[grossSalesPDUinEuroPreviousMY] 
	  ,[grossSalesPDUinEuroCurrentMY] 
	  ,[grossSalesPDUinEuroCurrentMY] - [grossSalesPDUinEuroPreviousMY] as [grossSalesPDUinEuroDelta] 
	  ,[ppiInEuroPreviousMY] 
	  ,[ppiInEuroCurrentMY] 
	  ,[ppiInEuroCurrentMY] - [ppiInEuroPreviousMY] as [ppiInEuroDelta] 
	  ,[rbcvInEuroPreviousMY]
	  ,[rbcvInEuroCurrentMY]
	  ,[rbcvInEuroCurrentMY] - [rbcvInEuroPreviousMY] as [rbcvInEuroDelta] 
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	FROM [rPT_DetailedVarianceAnalysis_SubTab1_Vehicle]
	WHERE [measureType] = 'Engine'
		AND [countryName]= @country
		AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);

	--Engine options subtab1
	SELECT @result6 = (SELECT [countryName] 
	  ,[countryGroup]
      ,[carlineName] 
      ,[vehicleBrand] 
      ,[modelYear] 
      ,[dateOfDocument] 
      ,[dateOfVOG] 
      ,[fXRate] 
      ,[localCurrency] 
	  ,[measureType] 
      ,[codeLCDV] 
	  ,[codeRPO] 
	  ,[name]
	  ,[mixPreviousMY] 
	  ,[mixCurrentMY] 
	  ,[mixCurrentMY]-[mixPreviousMY] AS [mixDelta] 
	  ,[listPriceInclTaxesInLCPreviousMY]
	  ,[listPriceInclTaxesInLCCurrentMY] 
	  ,[listPriceInclTaxesInLCCurrentMY]-[listPriceInclTaxesInLCCurrentMY] as [listPriceInclTaxesInLCDelta] 
	  ,[listPriceExclTaxesInLCPreviousMY] 
	  ,[listPriceExclTaxesInLCCurrentMY] 
	  ,[listPriceExclTaxesInLCCurrentMY]-[listPriceExclTaxesInLCPreviousMY] as [listPriceExclTaxesInLCDelta] 
	  ,[grossSalesPDUinEuroPreviousMY] 
	  ,[grossSalesPDUinEuroCurrentMY] 
	  ,[grossSalesPDUinEuroCurrentMY] - [grossSalesPDUinEuroPreviousMY] as [grossSalesPDUinEuroDelta] 
	  ,[ppiInEuroPreviousMY] 
	  ,[ppiInEuroCurrentMY] 
	  ,[ppiInEuroCurrentMY] - [ppiInEuroPreviousMY] as [ppiInEuroDelta] 
	  ,[rbcvInEuroPreviousMY]
	  ,[rbcvInEuroCurrentMY]
	  ,[rbcvInEuroCurrentMY] - [rbcvInEuroPreviousMY] as [rbcvInEuroDelta] 
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	FROM [rPT_DetailedVarianceAnalysis_SubTab1_Options]
	WHERE [measureType] = 'Engine'
		AND [countryName]= @country
		AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);

	--Bodystyle vehicle + options subtab1
	SELECT @result7 = (SELECT v.[countryName] 
	  ,v.[countryGroup]
      ,v.[carlineName] 
      ,v.[vehicleBrand] 
      ,v.[modelYear] 
      ,v.[dateOfDocument] 
      ,v.[dateOfVOG] 
      ,v.[fXRate] 
      ,v.[localCurrency] 
	  ,v.[measureType] 
      ,v.[codeLCDV] 
	  ,v.[codeRPO] 
	  ,v.[name]
	  ,v.[mixPreviousMY] 
	  ,v.[mixCurrentMY] 
	  ,v.[mixCurrentMY] - v.[mixPreviousMY] AS [mixDelta] 
	  ,v.[listPriceInclTaxesInLCPreviousMY] + o.[listPriceInclTaxesInLCPreviousMY] as [listPriceInclTaxesInLCPreviousMY]
	  ,v.[listPriceInclTaxesInLCCurrentMY] + o.[listPriceInclTaxesInLCCurrentMY]  as [listPriceInclTaxesInLCCurrentMY] 
	  ,(v.[listPriceInclTaxesInLCCurrentMY] + o.[listPriceInclTaxesInLCCurrentMY])-(v.[listPriceInclTaxesInLCPreviousMY] + o.[listPriceInclTaxesInLCPreviousMY]) as [listPriceInclTaxesInLCDelta] 
	  ,v.[listPriceExclTaxesInLCPreviousMY] + o.[listPriceExclTaxesInLCPreviousMY]  as [listPriceExclTaxesInLCPreviousMY] 
	  ,v.[listPriceExclTaxesInLCCurrentMY] + o.[listPriceExclTaxesInLCCurrentMY] as [listPriceExclTaxesInLCCurrentMY] 
	  ,(v.[listPriceExclTaxesInLCCurrentMY] + o.[listPriceExclTaxesInLCCurrentMY])-(v.[listPriceExclTaxesInLCPreviousMY] + o.[listPriceExclTaxesInLCPreviousMY]) as [listPriceExclTaxesInLCDelta] 
	  ,v.[grossSalesPDUinEuroPreviousMY] + o.[grossSalesPDUinEuroPreviousMY]  as [grossSalesPDUinEuroPreviousMY] 
	  ,v.[grossSalesPDUinEuroCurrentMY] + o.[grossSalesPDUinEuroCurrentMY] as [grossSalesPDUinEuroCurrentMY]
	  ,(v.[grossSalesPDUinEuroCurrentMY] + o.[grossSalesPDUinEuroCurrentMY]) - (v.[grossSalesPDUinEuroPreviousMY] + o.[grossSalesPDUinEuroPreviousMY] ) as [grossSalesPDUinEuroDelta] 
	  ,v.[ppiInEuroPreviousMY] + o.[ppiInEuroPreviousMY]  as [ppiInEuroPreviousMY] 
	  ,v.[ppiInEuroCurrentMY] + o.[ppiInEuroCurrentMY] as [ppiInEuroCurrentMY] 
	  ,(v.[ppiInEuroCurrentMY] + o.[ppiInEuroCurrentMY]) - (v.[ppiInEuroPreviousMY] + o.[ppiInEuroPreviousMY]) as [ppiInEuroDelta] 
	  ,v.[rbcvInEuroPreviousMY] + o.[rbcvInEuroPreviousMY] as [rbcvInEuroPreviousMY]
	  ,v.[rbcvInEuroCurrentMY] + o.[rbcvInEuroCurrentMY] as [rbcvInEuroCurrentMY]
	  ,(v.[rbcvInEuroCurrentMY] + o.[rbcvInEuroCurrentMY]) - (v.[rbcvInEuroPreviousMY] + o.[rbcvInEuroPreviousMY]) as [rbcvInEuroDelta] 
	  ,v.[timeStamp]
	  --,v.[userId] --don't needed here
	  ,v.[officialPrices]
	  ,v.[latestTimeStampWorkingVersion]
	  ,v.[latestTimeStampOfficialVersion]
	FROM [rPT_DetailedVarianceAnalysis_SubTab1_Vehicle] v
	LEFT JOIN  [rPT_DetailedVarianceAnalysis_SubTab1_Options] o
	ON v.countryName = o.countryName
	 AND v.countryGroup = o.countryGroup
	 AND v.carlineName = o.carlineName
	 AND v.vehicleBrand = o.vehicleBrand
	 AND v.dateOfDocument = o.dateOfDocument
	 AND v.dateOfVOG = o.dateOfVOG
	 AND v.fXRate = o.fXRate
	 AND v.localCurrency = o.localCurrency
	 AND v.measureType = o.measureType
	 AND v.codeLCDV = o.codeLCDV
	 AND v.codeRPO = o.codeRPO
	 AND v.name = o.name
	 WHERE v.[measureType] = 'Body style'
		AND v.[countryName]= @country
		AND v.[countryGroup] = @countryGroup
		AND v.[carlineName] = @carline
		AND v.[vehicleBrand] = @vehicleBrand
		AND v.[modelYear] = @modelYear
	FOR JSON AUTO);

	--Bodystyle vehicle subtab1
	SELECT @result8 = (SELECT [countryName] 
	  ,[countryGroup]
      ,[carlineName] 
      ,[vehicleBrand] 
      ,[modelYear] 
      ,[dateOfDocument] 
      ,[dateOfVOG] 
      ,[fXRate] 
      ,[localCurrency] 
	  ,[measureType] 
      ,[codeLCDV] 
	  ,[codeRPO] 
	  ,[name]
	  ,[mixPreviousMY] 
	  ,[mixCurrentMY] 
	  ,[mixCurrentMY]-[mixPreviousMY] AS [mixDelta] 
	  ,[listPriceInclTaxesInLCPreviousMY]
	  ,[listPriceInclTaxesInLCCurrentMY] 
	  ,[listPriceInclTaxesInLCCurrentMY]-[listPriceInclTaxesInLCCurrentMY] as [listPriceInclTaxesInLCDelta] 
	  ,[listPriceExclTaxesInLCPreviousMY] 
	  ,[listPriceExclTaxesInLCCurrentMY] 
	  ,[listPriceExclTaxesInLCCurrentMY]-[listPriceExclTaxesInLCPreviousMY] as [listPriceExclTaxesInLCDelta] 
	  ,[grossSalesPDUinEuroPreviousMY] 
	  ,[grossSalesPDUinEuroCurrentMY] 
	  ,[grossSalesPDUinEuroCurrentMY] - [grossSalesPDUinEuroPreviousMY] as [grossSalesPDUinEuroDelta] 
	  ,[ppiInEuroPreviousMY] 
	  ,[ppiInEuroCurrentMY] 
	  ,[ppiInEuroCurrentMY] - [ppiInEuroPreviousMY] as [ppiInEuroDelta] 
	  ,[rbcvInEuroPreviousMY]
	  ,[rbcvInEuroCurrentMY]
	  ,[rbcvInEuroCurrentMY] - [rbcvInEuroPreviousMY] as [rbcvInEuroDelta] 
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	FROM [rPT_DetailedVarianceAnalysis_SubTab1_Vehicle]
	WHERE [measureType] = 'Body style'
		AND [countryName]= @country
		AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);

	--Bodystyle options subtab1
	SELECT @result9 = (SELECT [countryName] 
	  ,[countryGroup]
      ,[carlineName] 
      ,[vehicleBrand] 
      ,[modelYear] 
      ,[dateOfDocument] 
      ,[dateOfVOG] 
      ,[fXRate] 
      ,[localCurrency] 
	  ,[measureType] 
      ,[codeLCDV] 
	  ,[codeRPO] 
	  ,[name]
	  ,[mixPreviousMY] 
	  ,[mixCurrentMY] 
	  ,[mixCurrentMY]-[mixPreviousMY] AS [mixDelta] 
	  ,[listPriceInclTaxesInLCPreviousMY]
	  ,[listPriceInclTaxesInLCCurrentMY] 
	  ,[listPriceInclTaxesInLCCurrentMY]-[listPriceInclTaxesInLCCurrentMY] as [listPriceInclTaxesInLCDelta] 
	  ,[listPriceExclTaxesInLCPreviousMY] 
	  ,[listPriceExclTaxesInLCCurrentMY] 
	  ,[listPriceExclTaxesInLCCurrentMY]-[listPriceExclTaxesInLCPreviousMY] as [listPriceExclTaxesInLCDelta] 
	  ,[grossSalesPDUinEuroPreviousMY] 
	  ,[grossSalesPDUinEuroCurrentMY] 
	  ,[grossSalesPDUinEuroCurrentMY] - [grossSalesPDUinEuroPreviousMY] as [grossSalesPDUinEuroDelta] 
	  ,[ppiInEuroPreviousMY] 
	  ,[ppiInEuroCurrentMY] 
	  ,[ppiInEuroCurrentMY] - [ppiInEuroPreviousMY] as [ppiInEuroDelta] 
	  ,[rbcvInEuroPreviousMY]
	  ,[rbcvInEuroCurrentMY]
	  ,[rbcvInEuroCurrentMY] - [rbcvInEuroPreviousMY] as [rbcvInEuroDelta] 
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	FROM [rPT_DetailedVarianceAnalysis_SubTab1_Options]
	WHERE [measureType] = 'Body style'
		AND [countryName]= @country
		AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);

	--Trimline vehicle + options subtab2
	SELECT @result10 = (SELECT v.[countryName] 
	  ,v.[countryGroup]
      ,v.[carlineName] 
      ,v.[vehicleBrand] 
      ,v.[modelYear] 
      ,v.[dateOfDocument] 
      ,v.[dateOfVOG] 
      ,v.[fXRate] 
      ,v.[localCurrency] 
	  ,v.[measureType] 
      ,v.[codeLCDV] 
	  ,v.[codeRPO] 
	  ,v.[name]
	  ,v.[importerGrossMarginEurPreviousMY]  + o.[importerGrossMarginEurPreviousMY] as [importerGrossMarginEurPreviousMY]
	  ,v.[importerGrossMarginEurCurrentMY] + o.[importerGrossMarginEurCurrentMY]  as [importerGrossMarginEurCurrentMY] 
	  ,(v.[importerGrossMarginEurCurrentMY] + o.[importerGrossMarginEurCurrentMY]) - (v.[importerGrossMarginEurPreviousMY]  + o.[importerGrossMarginEurPreviousMY]) as [importerGrossMarginEurDelta] 
	  ,v.[importerGrossMarginPercentPreviousMY] + o.[importerGrossMarginPercentPreviousMY] as [importerGrossMarginPercentPreviousMY]
	  ,v.[importerGrossMarginPercentCurrentMY] + o.[importerGrossMarginPercentCurrentMY]  as [importerGrossMarginPercentCurrentMY] 
	  ,(v.[importerGrossMarginPercentCurrentMY] + o.[importerGrossMarginPercentCurrentMY]) - (v.[importerGrossMarginPercentPreviousMY] + o.[importerGrossMarginPercentPreviousMY]) as [importerGrossMarginPercentDelta] 
	  ,v.[importerNetMarginEurPreviousMY] + o.[importerNetMarginEurPreviousMY] as [importerNetMarginEurPreviousMY]
	  ,v.[importerNetMarginEurCurrentMY] + o.[importerNetMarginEurCurrentMY]  as [importerNetMarginEurCurrentMY] 
	  ,(v.[importerNetMarginEurCurrentMY] + o.[importerNetMarginEurCurrentMY]) - (v.[importerNetMarginEurPreviousMY] + o.[importerNetMarginEurPreviousMY]) as [importerNetMarginEurDelta]
	  ,v.[importerNetMarginPercentPreviousMY] + o.[importerNetMarginPercentPreviousMY] as [importerNetMarginPercentPreviousMY] 
	  ,v.[importerNetMarginPercentCurrentMY] + o.[importerNetMarginPercentCurrentMY] as [importerNetMarginPercentCurrentMY] 
	  ,(v.[importerNetMarginPercentCurrentMY] + o.[importerNetMarginPercentCurrentMY]) - (v.[importerNetMarginPercentPreviousMY] + o.[importerNetMarginPercentPreviousMY]) as [importerNetMarginPercentDelta] 
	  ,v.[countryGrossMarginEurPreviousMY] + o.[countryGrossMarginEurPreviousMY] as [countryGrossMarginEurPreviousMY]
	  ,v.[countryGrossMarginEurCurrentMY] + o.[countryGrossMarginEurCurrentMY] as [countryGrossMarginEurCurrentMY]
	  ,(v.[countryGrossMarginEurCurrentMY] + o.[countryGrossMarginEurCurrentMY]) - (v.[countryGrossMarginEurPreviousMY] + o.[countryGrossMarginEurPreviousMY]) as [countryGrossMarginEurDelta]
	  ,v.[countryGrossMarginPercentPreviousMY] + o.[countryGrossMarginPercentPreviousMY] as [countryGrossMarginPercentPreviousMY] 
	  ,v.[countryGrossMarginPercentCurrentMY] + o.[countryGrossMarginPercentCurrentMY] as [countryGrossMarginPercentCurrentMY]
	  ,(v.[countryGrossMarginPercentCurrentMY] + o.[countryGrossMarginPercentCurrentMY]) - (v.[countryGrossMarginPercentPreviousMY] + o.[countryGrossMarginPercentPreviousMY]) as [countryGrossMarginPercentDelta] 
	  ,v.[dealerMarginEurPreviousMY] + o.[dealerMarginEurPreviousMY]  as [dealerMarginEurPreviousMY] 
	  ,v.[dealerGrossMarginEurCurrentMY] + o.[dealerGrossMarginEurCurrentMY] as [dealerGrossMarginEurCurrentMY]
	  ,(v.[dealerGrossMarginEurCurrentMY] + o.[dealerGrossMarginEurCurrentMY]) - (v.[dealerMarginEurPreviousMY] + o.[dealerMarginEurPreviousMY]) as [dealerGrossMarginEurDelta] 
	  ,v.[timeStamp]
	  --,v.[userId] --don't needed here
	  ,v.[officialPrices]
	  ,v.[latestTimeStampWorkingVersion]
	  ,v.[latestTimeStampOfficialVersion]
	FROM [rPT_DetailedVarianceAnalysis_SubTab2_Vehicle] v
	LEFT JOIN  [rPT_DetailedVarianceAnalysis_SubTab2_Options] o
	ON v.countryName = o.countryName
	 AND v.countryGroup = o.countryGroup
	 AND v.carlineName = o.carlineName
	 AND v.vehicleBrand = o.vehicleBrand
	 AND v.dateOfDocument = o.dateOfDocument
	 AND v.dateOfVOG = o.dateOfVOG
	 AND v.fXRate = o.fXRate
	 AND v.localCurrency = o.localCurrency
	 AND v.measureType = o.measureType
	 AND v.codeLCDV = o.codeLCDV
	 AND v.codeRPO = o.codeRPO
	 AND v.name = o.name
	 WHERE v.[measureType] = 'Trimline'
		AND v.[countryName]= @country
		AND v.[countryGroup] = @countryGroup
		AND v.[carlineName] = @carline
		AND v.[vehicleBrand] = @vehicleBrand
		AND v.[modelYear] = @modelYear
	FOR JSON AUTO);
	
	--Trimline vehicle subtab2
	SELECT @result11 = (SELECT [countryName] 
	  ,[countryGroup]
      ,[carlineName] 
      ,[vehicleBrand] 
      ,[modelYear] 
      ,[dateOfDocument] 
      ,[dateOfVOG] 
      ,[fXRate] 
      ,[localCurrency]  
	  ,[measureType] 
      ,[codeLCDV] 
	  ,[codeRPO] 
	  ,[name] 
	  ,[importerGrossMarginEurPreviousMY] 
	  ,[importerGrossMarginEurCurrentMY] 
	  ,[importerGrossMarginEurCurrentMY]-[importerGrossMarginEurPreviousMY] as [importerGrossMarginEurDelta] 
	  ,[importerGrossMarginPercentPreviousMY] 
	  ,[importerGrossMarginPercentCurrentMY] 
	  ,[importerGrossMarginPercentCurrentMY] - [importerGrossMarginPercentPreviousMY] as [importerGrossMarginPercentDelta] 
	  ,[importerNetMarginEurPreviousMY] 
	  ,[importerNetMarginEurCurrentMY] 
	  ,[importerNetMarginEurCurrentMY] - [importerNetMarginEurPreviousMY] as [importerNetMarginEurDelta]
	  ,[importerNetMarginPercentPreviousMY] 
	  ,[importerNetMarginPercentCurrentMY] 
	  ,[importerNetMarginPercentCurrentMY] - [importerNetMarginPercentPreviousMY] as [importerNetMarginPercentDelta] 
	  ,[countryGrossMarginEurPreviousMY] 
	  ,[countryGrossMarginEurCurrentMY] 
	  ,[countryGrossMarginEurCurrentMY] - [countryGrossMarginEurPreviousMY] as [countryGrossMarginEurDelta] 
	  ,[countryGrossMarginPercentPreviousMY] 
	  ,[countryGrossMarginPercentCurrentMY] 
	  ,[countryGrossMarginPercentCurrentMY] - [countryGrossMarginPercentPreviousMY] as [countryGrossMarginPercentDelta] 
	  ,[dealerMarginEurPreviousMY] 
	  ,[dealerGrossMarginEurCurrentMY] 
	  ,[dealerGrossMarginEurCurrentMY] - [dealerMarginEurPreviousMY] as [dealerGrossMarginEurDelta]
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab2_Vehicle]
	  WHERE [measureType]='Trimline'
		AND [countryName]= @country
		AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);
	
	--Trimline options subtab2
	SELECT @result12 = (SELECT [countryName] 
	  ,[countryGroup]
      ,[carlineName] 
      ,[vehicleBrand] 
      ,[modelYear] 
      ,[dateOfDocument] 
      ,[dateOfVOG] 
      ,[fXRate] 
      ,[localCurrency]  
	  ,[measureType] 
      ,[codeLCDV] 
	  ,[codeRPO] 
	  ,[name] 
	  ,[importerGrossMarginEurPreviousMY] 
	  ,[importerGrossMarginEurCurrentMY] 
	  ,[importerGrossMarginEurCurrentMY]-[importerGrossMarginEurPreviousMY] as [importerGrossMarginEurDelta] 
	  ,[importerGrossMarginPercentPreviousMY] 
	  ,[importerGrossMarginPercentCurrentMY] 
	  ,[importerGrossMarginPercentCurrentMY] - [importerGrossMarginPercentPreviousMY] as [importerGrossMarginPercentDelta] 
	  ,[importerNetMarginEurPreviousMY] 
	  ,[importerNetMarginEurCurrentMY] 
	  ,[importerNetMarginEurCurrentMY] - [importerNetMarginEurPreviousMY] as [importerNetMarginEurDelta]
	  ,[importerNetMarginPercentPreviousMY] 
	  ,[importerNetMarginPercentCurrentMY] 
	  ,[importerNetMarginPercentCurrentMY] - [importerNetMarginPercentPreviousMY] as [importerNetMarginPercentDelta] 
	  ,[countryGrossMarginEurPreviousMY] 
	  ,[countryGrossMarginEurCurrentMY] 
	  ,[countryGrossMarginEurCurrentMY] - [countryGrossMarginEurPreviousMY] as [countryGrossMarginEurDelta]
	  ,[countryGrossMarginPercentPreviousMY] 
	  ,[countryGrossMarginPercentCurrentMY] 
	  ,[countryGrossMarginPercentCurrentMY] - [countryGrossMarginPercentPreviousMY] as [countryGrossMarginPercentDelta] 
	  ,[dealerMarginEurPreviousMY] 
	  ,[dealerGrossMarginEurCurrentMY] 
	  ,[dealerGrossMarginEurCurrentMY] - [dealerMarginEurPreviousMY] as [dealerGrossMarginEurDelta]
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab2_Options]
	  WHERE [measureType]='Trimline'
		AND [countryName]= @country
		AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);

	--Engine vehicle + options subtab2
	SELECT @result13 = (SELECT v.[countryName] 
	  ,v.[countryGroup]
      ,v.[carlineName] 
      ,v.[vehicleBrand] 
      ,v.[modelYear] 
      ,v.[dateOfDocument] 
      ,v.[dateOfVOG] 
      ,v.[fXRate] 
      ,v.[localCurrency] 
	  ,v.[measureType] 
      ,v.[codeLCDV] 
	  ,v.[codeRPO] 
	  ,v.[name]
	  ,v.[importerGrossMarginEurPreviousMY]  + o.[importerGrossMarginEurPreviousMY] as [importerGrossMarginEurPreviousMY]
	  ,v.[importerGrossMarginEurCurrentMY] + o.[importerGrossMarginEurCurrentMY]  as [importerGrossMarginEurCurrentMY] 
	  ,(v.[importerGrossMarginEurCurrentMY] + o.[importerGrossMarginEurCurrentMY]) - (v.[importerGrossMarginEurPreviousMY]  + o.[importerGrossMarginEurPreviousMY]) as [importerGrossMarginEurDelta] 
	  ,v.[importerGrossMarginPercentPreviousMY] + o.[importerGrossMarginPercentPreviousMY] as [importerGrossMarginPercentPreviousMY]
	  ,v.[importerGrossMarginPercentCurrentMY] + o.[importerGrossMarginPercentCurrentMY]  as [importerGrossMarginPercentCurrentMY] 
	  ,(v.[importerGrossMarginPercentCurrentMY] + o.[importerGrossMarginPercentCurrentMY]) - (v.[importerGrossMarginPercentPreviousMY] + o.[importerGrossMarginPercentPreviousMY]) as [importerGrossMarginPercentDelta] 
	  ,v.[importerNetMarginEurPreviousMY] + o.[importerNetMarginEurPreviousMY] as [importerNetMarginEurPreviousMY]
	  ,v.[importerNetMarginEurCurrentMY] + o.[importerNetMarginEurCurrentMY]  as [importerNetMarginEurCurrentMY] 
	  ,(v.[importerNetMarginEurCurrentMY] + o.[importerNetMarginEurCurrentMY]) - (v.[importerNetMarginEurPreviousMY] + o.[importerNetMarginEurPreviousMY]) as [importerNetMarginEurDelta]
	  ,v.[importerNetMarginPercentPreviousMY] + o.[importerNetMarginPercentPreviousMY] as [importerNetMarginPercentPreviousMY] 
	  ,v.[importerNetMarginPercentCurrentMY] + o.[importerNetMarginPercentCurrentMY] as [importerNetMarginPercentCurrentMY] 
	  ,(v.[importerNetMarginPercentCurrentMY] + o.[importerNetMarginPercentCurrentMY]) - (v.[importerNetMarginPercentPreviousMY] + o.[importerNetMarginPercentPreviousMY]) as [importerNetMarginPercentDelta] 
	  ,v.[countryGrossMarginEurPreviousMY] + o.[countryGrossMarginEurPreviousMY] as [countryGrossMarginEurPreviousMY]
	  ,v.[countryGrossMarginEurCurrentMY] + o.[countryGrossMarginEurCurrentMY] as [countryGrossMarginEurCurrentMY]
	  ,(v.[countryGrossMarginEurCurrentMY] + o.[countryGrossMarginEurCurrentMY]) - (v.[countryGrossMarginEurPreviousMY] + o.[countryGrossMarginEurPreviousMY]) as [countryGrossMarginEurDelta]
	  ,v.[countryGrossMarginPercentPreviousMY] + o.[countryGrossMarginPercentPreviousMY] as [countryGrossMarginPercentPreviousMY] 
	  ,v.[countryGrossMarginPercentCurrentMY] + o.[countryGrossMarginPercentCurrentMY] as [countryGrossMarginPercentCurrentMY]
	  ,(v.[countryGrossMarginPercentCurrentMY] + o.[countryGrossMarginPercentCurrentMY]) - (v.[countryGrossMarginPercentPreviousMY] + o.[countryGrossMarginPercentPreviousMY]) as [countryGrossMarginPercentDelta] 
	  ,v.[dealerMarginEurPreviousMY] + o.[dealerMarginEurPreviousMY]  as [dealerMarginEurPreviousMY] 
	  ,v.[dealerGrossMarginEurCurrentMY] + o.[dealerGrossMarginEurCurrentMY] as [dealerGrossMarginEurCurrentMY]
	  ,(v.[dealerGrossMarginEurCurrentMY] + o.[dealerGrossMarginEurCurrentMY]) - (v.[dealerMarginEurPreviousMY] + o.[dealerMarginEurPreviousMY]) as [dealerGrossMarginEurDelta] 
	  ,v.[timeStamp]
	  --,v.[userId] --don't needed here
	  ,v.[officialPrices]
	  ,v.[latestTimeStampWorkingVersion]
	  ,v.[latestTimeStampOfficialVersion]
	FROM [rPT_DetailedVarianceAnalysis_SubTab2_Vehicle] v
	LEFT JOIN  [rPT_DetailedVarianceAnalysis_SubTab2_Options] o
	ON v.countryName = o.countryName
	 AND v.countryGroup = o.countryGroup
	 AND v.carlineName = o.carlineName
	 AND v.vehicleBrand = o.vehicleBrand
	 AND v.dateOfDocument = o.dateOfDocument
	 AND v.dateOfVOG = o.dateOfVOG
	 AND v.fXRate = o.fXRate
	 AND v.localCurrency = o.localCurrency
	 AND v.measureType = o.measureType
	 AND v.codeLCDV = o.codeLCDV
	 AND v.codeRPO = o.codeRPO
	 AND v.name = o.name
	 WHERE v.[measureType] = 'Engine'
		AND v.[countryName]= @country
		AND v.[countryGroup] = @countryGroup
		AND v.[carlineName] = @carline
		AND v.[vehicleBrand] = @vehicleBrand
		AND v.[modelYear] = @modelYear
	FOR JSON AUTO);
	
	--Engine vehicle subtab2
	SELECT @result14 = (SELECT [countryName] 
	  ,[countryGroup]
      ,[carlineName] 
      ,[vehicleBrand] 
      ,[modelYear] 
      ,[dateOfDocument] 
      ,[dateOfVOG] 
      ,[fXRate] 
      ,[localCurrency]  
	  ,[measureType] 
      ,[codeLCDV] 
	  ,[codeRPO] 
	  ,[name] 
	  ,[importerGrossMarginEurPreviousMY] 
	  ,[importerGrossMarginEurCurrentMY] 
	  ,[importerGrossMarginEurCurrentMY]-[importerGrossMarginEurPreviousMY] as [importerGrossMarginEurDelta] 
	  ,[importerGrossMarginPercentPreviousMY] 
	  ,[importerGrossMarginPercentCurrentMY] 
	  ,[importerGrossMarginPercentCurrentMY] - [importerGrossMarginPercentPreviousMY] as [importerGrossMarginPercentDelta] 
	  ,[importerNetMarginEurPreviousMY] 
	  ,[importerNetMarginEurCurrentMY] 
	  ,[importerNetMarginEurCurrentMY] - [importerNetMarginEurPreviousMY] as [importerNetMarginEurDelta]
	  ,[importerNetMarginPercentPreviousMY] 
	  ,[importerNetMarginPercentCurrentMY] 
	  ,[importerNetMarginPercentCurrentMY] - [importerNetMarginPercentPreviousMY] as [importerNetMarginPercentDelta]  
	  ,[countryGrossMarginEurPreviousMY] 
	  ,[countryGrossMarginEurCurrentMY] 
	  ,[countryGrossMarginEurCurrentMY] - [countryGrossMarginEurPreviousMY] as [countryGrossMarginEurDelta]
	  ,[countryGrossMarginPercentPreviousMY] 
	  ,[countryGrossMarginPercentCurrentMY] 
	  ,[countryGrossMarginPercentCurrentMY] - [countryGrossMarginPercentPreviousMY] as [countryGrossMarginPercentDelta] 
	  ,[dealerMarginEurPreviousMY] 
	  ,[dealerGrossMarginEurCurrentMY] 
	  ,[dealerGrossMarginEurCurrentMY] - [dealerMarginEurPreviousMY] as [dealerGrossMarginEurDelta]
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab2_Vehicle]
	  WHERE [measureType]='Engine'
		AND [countryName]= @country
		AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);
	
	--Engine options subtab2
	SELECT @result15 = (SELECT [countryName] 
	  ,[countryGroup]
      ,[carlineName] 
      ,[vehicleBrand] 
      ,[modelYear] 
      ,[dateOfDocument] 
      ,[dateOfVOG] 
      ,[fXRate] 
      ,[localCurrency]  
	  ,[measureType] 
      ,[codeLCDV] 
	  ,[codeRPO] 
	  ,[name] 
	  ,[importerGrossMarginEurPreviousMY] 
	  ,[importerGrossMarginEurCurrentMY] 
	  ,[importerGrossMarginEurCurrentMY]-[importerGrossMarginEurPreviousMY] as [importerGrossMarginEurDelta] 
	  ,[importerGrossMarginPercentPreviousMY] 
	  ,[importerGrossMarginPercentCurrentMY] 
	  ,[importerGrossMarginPercentCurrentMY] - [importerGrossMarginPercentPreviousMY] as [importerGrossMarginPercentDelta]  
	  ,[importerNetMarginEurPreviousMY] 
	  ,[importerNetMarginEurCurrentMY] 
	  ,[importerNetMarginEurCurrentMY] - [importerNetMarginEurPreviousMY] as [importerNetMarginEurDelta] 
	  ,[importerNetMarginPercentPreviousMY] 
	  ,[importerNetMarginPercentCurrentMY] 
	  ,[importerNetMarginPercentCurrentMY] - [importerNetMarginPercentPreviousMY] as [importerNetMarginPercentDelta]  
	  ,[countryGrossMarginEurPreviousMY] 
	  ,[countryGrossMarginEurCurrentMY] 
	  ,[countryGrossMarginEurCurrentMY] - [countryGrossMarginEurPreviousMY] as [countryGrossMarginEurDelta]
	  ,[countryGrossMarginPercentPreviousMY] 
	  ,[countryGrossMarginPercentCurrentMY] 
	  ,[countryGrossMarginPercentCurrentMY] - [countryGrossMarginPercentPreviousMY] as [countryGrossMarginPercentDelta] 
	  ,[dealerMarginEurPreviousMY] 
	  ,[dealerGrossMarginEurCurrentMY] 
	  ,[dealerGrossMarginEurCurrentMY] - [dealerMarginEurPreviousMY] as [dealerGrossMarginEurDelta]
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab2_Options]
	  WHERE [measureType]='Engine'
		AND [countryName]= @country
		AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);
	
	--Body style vehicle + options subtab2
	SELECT @result16 = (SELECT v.[countryName] 
	  ,v.[countryGroup]
      ,v.[carlineName] 
      ,v.[vehicleBrand] 
      ,v.[modelYear] 
      ,v.[dateOfDocument] 
      ,v.[dateOfVOG] 
      ,v.[fXRate] 
      ,v.[localCurrency] 
	  ,v.[measureType] 
      ,v.[codeLCDV] 
	  ,v.[codeRPO] 
	  ,v.[name]
	  ,v.[importerGrossMarginEurPreviousMY]  + o.[importerGrossMarginEurPreviousMY] as [importerGrossMarginEurPreviousMY]
	  ,v.[importerGrossMarginEurCurrentMY] + o.[importerGrossMarginEurCurrentMY]  as [importerGrossMarginEurCurrentMY] 
	  ,(v.[importerGrossMarginEurCurrentMY] + o.[importerGrossMarginEurCurrentMY]) - (v.[importerGrossMarginEurPreviousMY]  + o.[importerGrossMarginEurPreviousMY]) as [importerGrossMarginEurDelta] 
	  ,v.[importerGrossMarginPercentPreviousMY] + o.[importerGrossMarginPercentPreviousMY] as [importerGrossMarginPercentPreviousMY]
	  ,v.[importerGrossMarginPercentCurrentMY] + o.[importerGrossMarginPercentCurrentMY]  as [importerGrossMarginPercentCurrentMY] 
	  ,(v.[importerGrossMarginPercentCurrentMY] + o.[importerGrossMarginPercentCurrentMY]) - (v.[importerGrossMarginPercentPreviousMY] + o.[importerGrossMarginPercentPreviousMY]) as [importerGrossMarginPercentDelta] 
	  ,v.[importerNetMarginEurPreviousMY] + o.[importerNetMarginEurPreviousMY] as [importerNetMarginEurPreviousMY]
	  ,v.[importerNetMarginEurCurrentMY] + o.[importerNetMarginEurCurrentMY]  as [importerNetMarginEurCurrentMY] 
	  ,(v.[importerNetMarginEurCurrentMY] + o.[importerNetMarginEurCurrentMY]) - (v.[importerNetMarginEurPreviousMY] + o.[importerNetMarginEurPreviousMY]) as [importerNetMarginEurDelta]
	  ,v.[importerNetMarginPercentPreviousMY] + o.[importerNetMarginPercentPreviousMY] as [importerNetMarginPercentPreviousMY] 
	  ,v.[importerNetMarginPercentCurrentMY] + o.[importerNetMarginPercentCurrentMY] as [importerNetMarginPercentCurrentMY] 
	  ,(v.[importerNetMarginPercentCurrentMY] + o.[importerNetMarginPercentCurrentMY]) - (v.[importerNetMarginPercentPreviousMY] + o.[importerNetMarginPercentPreviousMY]) as [importerNetMarginPercentDelta] 
	  ,v.[countryGrossMarginEurPreviousMY] + o.[countryGrossMarginEurPreviousMY] as [countryGrossMarginEurPreviousMY]
	  ,v.[countryGrossMarginEurCurrentMY] + o.[countryGrossMarginEurCurrentMY] as [countryGrossMarginEurCurrentMY]
	  ,(v.[countryGrossMarginEurCurrentMY] + o.[countryGrossMarginEurCurrentMY]) - (v.[countryGrossMarginEurPreviousMY] + o.[countryGrossMarginEurPreviousMY]) as [countryGrossMarginEurDelta]
	  ,v.[countryGrossMarginPercentPreviousMY] + o.[countryGrossMarginPercentPreviousMY] as [countryGrossMarginPercentPreviousMY] 
	  ,v.[countryGrossMarginPercentCurrentMY] + o.[countryGrossMarginPercentCurrentMY] as [countryGrossMarginPercentCurrentMY]
	  ,(v.[countryGrossMarginPercentCurrentMY] + o.[countryGrossMarginPercentCurrentMY]) - (v.[countryGrossMarginPercentPreviousMY] + o.[countryGrossMarginPercentPreviousMY]) as [countryGrossMarginPercentDelta] 
	  ,v.[dealerMarginEurPreviousMY] + o.[dealerMarginEurPreviousMY]  as [dealerMarginEurPreviousMY] 
	  ,v.[dealerGrossMarginEurCurrentMY] + o.[dealerGrossMarginEurCurrentMY] as [dealerGrossMarginEurCurrentMY]
	  ,(v.[dealerGrossMarginEurCurrentMY] + o.[dealerGrossMarginEurCurrentMY]) - (v.[dealerMarginEurPreviousMY] + o.[dealerMarginEurPreviousMY]) as [dealerGrossMarginEurDelta] 
	  ,v.[timeStamp]
	  --,v.[userId] --don't needed here
	  ,v.[officialPrices]
	  ,v.[latestTimeStampWorkingVersion]
	  ,v.[latestTimeStampOfficialVersion]
	FROM [rPT_DetailedVarianceAnalysis_SubTab2_Vehicle] v
	LEFT JOIN  [rPT_DetailedVarianceAnalysis_SubTab2_Options] o
	ON v.countryName = o.countryName
	 AND v.countryGroup = o.countryGroup
	 AND v.carlineName = o.carlineName
	 AND v.vehicleBrand = o.vehicleBrand
	 AND v.dateOfDocument = o.dateOfDocument
	 AND v.dateOfVOG = o.dateOfVOG
	 AND v.fXRate = o.fXRate
	 AND v.localCurrency = o.localCurrency
	 AND v.measureType = o.measureType
	 AND v.codeLCDV = o.codeLCDV
	 AND v.codeRPO = o.codeRPO
	 AND v.name = o.name
	 WHERE v.[measureType] = 'Body style'
		AND v.[countryName]= @country
		AND v.[countryGroup] = @countryGroup
		AND v.[carlineName] = @carline
		AND v.[vehicleBrand] = @vehicleBrand
		AND v.[modelYear] = @modelYear
	FOR JSON AUTO);
	
	--Body style vehicle subtab2
	SELECT @result17 = (SELECT [countryName] 
	  ,[countryGroup]
      ,[carlineName] 
      ,[vehicleBrand] 
      ,[modelYear] 
      ,[dateOfDocument] 
      ,[dateOfVOG] 
      ,[fXRate] 
      ,[localCurrency]  
	  ,[measureType] 
      ,[codeLCDV] 
	  ,[codeRPO] 
	  ,[name] 
	  ,[importerGrossMarginEurPreviousMY] 
	  ,[importerGrossMarginEurCurrentMY] 
	  ,[importerGrossMarginEurCurrentMY]-[importerGrossMarginEurPreviousMY] as [importerGrossMarginEurDelta]  
	  ,[importerGrossMarginPercentPreviousMY] 
	  ,[importerGrossMarginPercentCurrentMY] 
	  ,[importerGrossMarginPercentCurrentMY] - [importerGrossMarginPercentPreviousMY] as [importerGrossMarginPercentDelta]  
	  ,[importerNetMarginEurPreviousMY] 
	  ,[importerNetMarginEurCurrentMY] 
	  ,[importerNetMarginEurCurrentMY] - [importerNetMarginEurPreviousMY] as [importerNetMarginEurDelta]
	  ,[importerNetMarginPercentPreviousMY] 
	  ,[importerNetMarginPercentCurrentMY] 
	  ,[importerNetMarginPercentCurrentMY] - [importerNetMarginPercentPreviousMY] as [importerNetMarginPercentDelta]  
	  ,[countryGrossMarginEurPreviousMY] 
	  ,[countryGrossMarginEurCurrentMY] 
	  ,[countryGrossMarginEurCurrentMY] - [countryGrossMarginEurPreviousMY] as [countryGrossMarginEurDelta]
	  ,[countryGrossMarginPercentPreviousMY] 
	  ,[countryGrossMarginPercentCurrentMY] 
	  ,[countryGrossMarginPercentCurrentMY] - [countryGrossMarginPercentPreviousMY] as [countryGrossMarginPercentDelta] 
	  ,[dealerMarginEurPreviousMY] 
	  ,[dealerGrossMarginEurCurrentMY] 
	  ,[dealerGrossMarginEurCurrentMY] - [dealerMarginEurPreviousMY] as [dealerGrossMarginEurDelta]
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab2_Vehicle]
	  WHERE [measureType]='Body style'
		AND [countryName]= @country
		AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);
	
	--Body style options subtab2
	SELECT @result18 = (SELECT [countryName] 
	  ,[countryGroup]
      ,[carlineName] 
      ,[vehicleBrand] 
      ,[modelYear] 
      ,[dateOfDocument] 
      ,[dateOfVOG] 
      ,[fXRate] 
      ,[localCurrency]  
	  ,[measureType] 
      ,[codeLCDV] 
	  ,[codeRPO] 
	  ,[name] 
	  ,[importerGrossMarginEurPreviousMY] 
	  ,[importerGrossMarginEurCurrentMY] 
	  ,[importerGrossMarginEurCurrentMY]-[importerGrossMarginEurPreviousMY] as [importerGrossMarginEurDelta] 
	  ,[importerGrossMarginPercentPreviousMY] 
	  ,[importerGrossMarginPercentCurrentMY] 
	  ,[importerGrossMarginPercentCurrentMY] - [importerGrossMarginPercentPreviousMY] as [importerGrossMarginPercentDelta] 
	  ,[importerNetMarginEurPreviousMY] 
	  ,[importerNetMarginEurCurrentMY] 
	  ,[importerNetMarginEurCurrentMY] - [importerNetMarginEurPreviousMY] as [importerNetMarginEurDelta]
	  ,[importerNetMarginPercentPreviousMY] 
	  ,[importerNetMarginPercentCurrentMY] 
	  ,[importerNetMarginPercentCurrentMY] - [importerNetMarginPercentPreviousMY] as [importerNetMarginPercentDelta] 
	  ,[countryGrossMarginEurPreviousMY] 
	  ,[countryGrossMarginEurCurrentMY] 
	  ,[countryGrossMarginEurCurrentMY] - [countryGrossMarginEurPreviousMY] as [countryGrossMarginEurDelta]
	  ,[countryGrossMarginPercentPreviousMY] 
	  ,[countryGrossMarginPercentCurrentMY] 
	  ,[countryGrossMarginPercentCurrentMY] - [countryGrossMarginPercentPreviousMY] as [countryGrossMarginPercentDelta] 
	  ,[dealerMarginEurPreviousMY] 
	  ,[dealerGrossMarginEurCurrentMY] 
	  ,[dealerGrossMarginEurCurrentMY] - [dealerMarginEurPreviousMY] as [dealerGrossMarginEurDelta]
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_DetailedVarianceAnalysis_SubTab2_Options]
	  WHERE [measureType]='Body style'
		AND [countryName]= @country
		AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);

	

SELECT @result1 as [data]
SELECT @result2 as [data]
SELECT @result3 as [data]
SELECT @result4 as [data]
SELECT @result5 as [data]
SELECT @result6 as [data]
SELECT @result7 as [data]
SELECT @result8 as [data]
SELECT @result9 as [data]
SELECT @result10 as [data]
SELECT @result11 as [data]
SELECT @result12 as [data]
SELECT @result13 as [data]
SELECT @result14 as [data]
SELECT @result15 as [data]
SELECT @result16 as [data]
SELECT @result17 as [data]
SELECT @result18 as [data]

END

--exec [pPT_GetData_DetailedVarianceAnalysisPage] N'{"country":"Switzerland","countryGroup":"CA","carline":"Mokka","vehicleBrand":"0: Opel","modelYear":"21.0A"}'
