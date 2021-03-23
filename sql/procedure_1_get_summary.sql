/****[pPT_GetData_SummaryPage] ****/
/****Author: Magda Jankowska*******/
/****   Data: 15.02.2021    *******/

ALTER PROCEDURE [dbo].[pPT_GetData_SummaryPage] 
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

	DECLARE @country NVARCHAR(max);
	DECLARE @countryGroup NVARCHAR(2)
	DECLARE @carline NVARCHAR(max);
	DECLARE @vehicleBrand NVARCHAR(max);
	DECLARE @modelYear NVARCHAR(max);

	SELECT
		@country = JSON_VALUE(@source_json, '$.country'),
		@countryGroup = JSON_VALUE(@source_json, '$.countryGroup'),
		@carline = JSON_VALUE(@source_json, '$.carline'),
		@vehicleBrand = JSON_VALUE(@source_json, '$.vehicleBrand'),
		@modelYear = JSON_VALUE(@source_json, '$.modelYear');

	SELECT @result1 = (	SELECT
       [countryName]
	  ,[countryGroup]
      ,[carlineName]
      ,[vehicleBrand]
      ,[modelYear]
      ,[dateOfDocument]
      ,[dateOfVOG]
      ,[fXRate]
      ,[localCurrency]
      ,[measureType_1]
      ,[eurTotalSubmission]
      ,[eurTotalBudget]
      ,[eurTotalPrevious]
      ,[eurVehicleSubmission]
      ,[eurOptionsSubmission]
      ,[eurVehiclePrevious]
      ,[eurOptionsPrevious]
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	FROM [dbo].[rPT_Summary]
	WHERE [countryName]= @country
		AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);

	SELECT @result2 = (SELECT
       [countryName]
	  ,[countryGroup]
      ,[carlineName]
      ,[vehicleBrand]
      ,[modelYear]
      ,[dateOfDocument]
      ,[dateOfVOG]
      ,[fXRate]
      ,[localCurrency]
      ,[measureType]
      ,[name]
      ,[mixCurrentMY]
	  ,[mixPreviousMy]
	  ,[mixCurrentMY]-[mixPreviousMy] AS [mixDelta]
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	FROM [dbo].[rPT_Summary_Mix]
	WHERE [measureType] = 'trimline'
		AND [countryName]= @country
		AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);

	SELECT @result3 = (SELECT
       [countryName]
	  ,[countryGroup]
      ,[carlineName]
      ,[vehicleBrand]
      ,[modelYear]
      ,[dateOfDocument]
      ,[dateOfVOG]
      ,[fXRate]
      ,[localCurrency]
      ,[measureType]
      ,[name]
      ,[mixCurrentMY]
	  ,[mixPreviousMy]
	  ,[mixCurrentMY]-[mixPreviousMy] AS [mixDelta]
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	FROM [dbo].[rPT_Summary_Mix]
	WHERE [measureType] = 'engine'
		AND [countryName]= @country
		AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);

	SELECT @result4 = (SELECT
       [countryName]
	  ,[countryGroup]
      ,[carlineName]
      ,[vehicleBrand]
      ,[modelYear]
      ,[dateOfDocument]
      ,[dateOfVOG]
      ,[fXRate]
      ,[localCurrency]
      ,[measureType]
      ,[name]
      ,[mixCurrentMY]
	  ,[mixPreviousMy]
	  ,[mixCurrentMY]-[mixPreviousMy] AS [mixDelta]
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	FROM [dbo].[rPT_Summary_Mix]
	WHERE [measureType] = 'body style'
		AND [countryName]= @country
		AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);

	 --variance analysis
	SELECT @result5 = (SELECT
	   [countryName]
	  ,[countryGroup]
      ,[carlineName] 
      ,[vehicleBrand] 
      ,[modelYear] 
      ,[dateOfDocument] 
      ,[dateOfVOG] 
      ,[fXRate] 
      ,[localCurrency] 
	  ,[measureType]
	  ,[measureTypeSubcategory]
      ,[value] 
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_Summary_Variance_Analysis]
	  WHERE [measureType] = 'RBCV incl. PandW per unit in Euro'
		AND[countryName]= @country
		AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	  FOR JSON AUTO);

	--variance analysis
	  SELECT @result6 = (SELECT
	   [countryName]
	  ,[countryGroup]
      ,[carlineName] 
      ,[vehicleBrand] 
      ,[modelYear] 
      ,[dateOfDocument] 
      ,[dateOfVOG] 
      ,[fXRate] 
      ,[localCurrency] 
	  ,[measureType]
	  ,[measureTypeSubcategory]
      ,[value] 
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_Summary_Variance_Analysis]
	  WHERE [measureType] = 'There of'
		AND [countryName]= @country
		AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	  FOR JSON AUTO);

	  --variance analysis
	  SELECT @result7 = (SELECT
	   [countryName]
	  ,[countryGroup]
      ,[carlineName] 
      ,[vehicleBrand] 
      ,[modelYear] 
      ,[dateOfDocument] 
      ,[dateOfVOG] 
      ,[fXRate] 
      ,[localCurrency] 
	  ,[measureType]
	  ,[measureTypeSubcategory]
      ,[value] 
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_Summary_Variance_Analysis]
	  WHERE [measureType] = 'FFO'
		AND[countryName]= @country
		AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	  FOR JSON AUTO);

	  --variance analysis
	  SELECT @result8 = (SELECT
	   [countryName]
	  ,[countryGroup]
      ,[carlineName] 
      ,[vehicleBrand] 
      ,[modelYear] 
      ,[dateOfDocument] 
      ,[dateOfVOG] 
      ,[fXRate] 
      ,[localCurrency] 
	  ,[measureType]
	  ,[measureTypeSubcategory]
      ,[value]
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_Summary_Variance_Analysis]
	  WHERE [measureType] = 'Volume'
		AND[countryName]= @country
		AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	  FOR JSON AUTO);
		
		--variance analysis
	  SELECT @result9 = (SELECT
	   [countryName]
	  ,[countryGroup]
      ,[carlineName] 
      ,[vehicleBrand] 
      ,[modelYear] 
      ,[dateOfDocument] 
      ,[dateOfVOG] 
      ,[fXRate] 
      ,[localCurrency] 
	  ,[measureType]
	  ,[measureTypeSubcategory]
      ,[value] 
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_Summary_Variance_Analysis]
	  WHERE [measureType] = 'Economics'
		AND[countryName]= @country
		AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	  FOR JSON AUTO);


	SELECT @result10 = (
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
	  ,[trimlineCodeGMUD2] 
	  ,[trimlineCodeLCDV] 
      ,[cmoCurrentMY] 
	  ,[cmoPreviousMY] 
	  ,[changesAdded] 
	  ,[changesDroped] 
	  ,[impactOnPrices] 
	  ,[impactOnCosts] 
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	FROM [DABI001].[dbo].[rPT_Summary_Content_Change]
	WHERE [countryName]= @country
		AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);
	

SELECT @result1 as [finnacial_summary]
SELECT @result2 as [mix_changes_trimline]
SELECT @result3 as [mix_changes_engine]
SELECT @result4 as [mix_changes_bodystyle]
SELECT @result5 as [variance_analysis_RBCV]
SELECT @result6 as [variance_analysis_there_of]
SELECT @result7 as [variance_analysis_ffo]
SELECT @result8 as [variance_analysis_volume]
SELECT @result9 as [variance_analysis_economics]
SELECT @result10 as [content_changes]

END

--exec [pPT_GetData_SummaryPage] N'{"country":"Switzerland","countryGroup":"CA","carline":"Mokka","vehicleBrand":"0: Opel","modelYear":"21.0A"}'
