/****[pPT_GetData_GeneralInformationPage] ****/
/****Author: Magda Jankowska*******/
/****   Data: 18.02.2021    *******/

ALTER PROCEDURE [dbo].[pPT_GetData_GeneralInformationPage] 
	@source_json NVARCHAR(max)
	
AS
BEGIN

	DECLARE @result1 NVARCHAR(max);
	DECLARE @result2 NVARCHAR(max);
	
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

		--input_general
	SELECT @result1 = (SELECT 
	   [countryName]
	  ,[countryGroup]
	  ,[carlineName] 
	  ,[vehicleBrand] 
	  ,[modelYear] 
	  --,[dateOfDocument] --deleted
	  --,[dateOfVOG] --deleted
	  --,[fXRate] --deleted
	  --,[localCurrency] --deleted
	  ,[measureType] 
	  ,[measureTypeSubcategory] 
	  ,[value]
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_InputGeneralInformation]
	  WHERE [measureType]='Input General'
		AND [carlineName] = @carline
		AND [countryName] = @country
		AND [countryGroup] = @countryGroup
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
		AND [latestTimeStampWorkingVersion] = 1
	 FOR JSON AUTO);

	 --input_other
	SELECT @result2 = (SELECT 
	   [countryName]
	  ,[countryGroup]
	  ,[carlineName] 
	  ,[vehicleBrand] 
	  ,[modelYear] 
	  --,[dateOfDocument] --deleted
	  --,[dateOfVOG] --deleted
	  --,[fXRate] --deleted
	  --,[localCurrency] --deleted
	  ,[measureType] 
	  ,[measureTypeSubcategory] 
	  ,[value]
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_InputGeneralInformation]
	  WHERE [measureType]='Other'
		AND [carlineName] = @carline
		AND [countryName] = @country
		AND [countryGroup] = @countryGroup
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
		AND [latestTimeStampWorkingVersion] = 1
	FOR JSON AUTO);

SELECT @result1 as [input_general]
SELECT @result2 as [input_other]


END

--exec [pPT_GetData_GeneralInformationPage] N'{"country":"Switzerland","countryGroup":"CA","carline":"Mokka","vehicleBrand":"0: Opel","modelYear":"21.0A"}'
