/****[pPT_GetData_VehiclesPage] ****/
/****Author: Magda Jankowska*******/
/****   Data: 24.02.2021    *******/

ALTER PROCEDURE [dbo].[pPT_GetData_VehiclesPage] 
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
	
	DECLARE @country NVARCHAR(max);
	DECLARE @countryGroup NVARCHAR(max);
	DECLARE @carline NVARCHAR(max);
	DECLARE @vehicleBrand NVARCHAR(max);
	DECLARE @modelYear NVARCHAR(max);

	SELECT
		@country = JSON_VALUE(@source_json, '$.country'),
		@countryGroup = JSON_VALUE(@source_json, '$.countryGroup'),
		@carline = JSON_VALUE(@source_json, '$.carline'),
		@vehicleBrand = JSON_VALUE(@source_json, '$.vehicleBrand'),
		@modelYear = JSON_VALUE(@source_json, '$.modelYear');

	--model mix
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
	  ,[selectedVersion] 
	  ,[codeGMUD2] 
	  ,[codeLCDV] 
	  ,[versionName] 
	  ,[mixCurrentMY]
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_InputVehicles_ModelMix]
	  WHERE [countryName]= @country
	    AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);

	--engines
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
	  ,[codeLCDV] 
	  ,[name] 
	  ,[codeGMUD2] 
	  ,[reference]
	  ,[deafaultMSRPInEuroVsBase] 
	  ,[PDUCMOInEuroVsBase] 
	  ,[PDULMOInEuroVsBase] 
	  ,[PDUCMOInEuroVsBase] + [PDULMOInEuroVsBase]as [PDUTotalInEuroVsBase] 
	  ,[CostCMOInEuroVsBase] 
	  ,[CostLMOInEuroVsBase] 
	  ,[CostCMOInEuroVsBase] + [CostLMOInEuroVsBase] as [CostTotalInEuroVsBase] 
	  ,[mix]
	  ,[codeGMUD2_2] 
	  ,[deafaultMSRPInEuroVsOther] 
	  ,[PDUCMOInEuroVsOther] 
	  ,[PDULMOInEuroVsOther] 
	  ,[PDUCMOInEuroVsOther] + [PDULMOInEuroVsOther] as [PDUTotalInEuroVsOther] 
	  ,[CostCMOInEuroVsOther] 
	  ,[CostLMOInEuroVsOther]
	  ,[CostCMOInEuroVsOther] + [CostLMOInEuroVsOther] as [CostTotalInEuroVsOther] 
	  ,[rbcfInEuroGSFBased] 
	  ,[rbcfInPercentGSFBased] 
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_InputVehicles_TEWU]
	  WHERE [measureType] = 'engines'
		AND [countryName] = @country
	    AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);

	--trims
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
	  ,[codeLCDV] 
	  ,[name] 
	  ,[codeGMUD2] 
	  ,[reference]
	  ,[deafaultMSRPInEuroVsBase] 
	  ,[PDUCMOInEuroVsBase] 
	  ,[PDULMOInEuroVsBase] 
	  ,[PDUCMOInEuroVsBase] + [PDULMOInEuroVsBase]as [PDUTotalInEuroVsBase] 
	  ,[CostCMOInEuroVsBase] 
	  ,[CostLMOInEuroVsBase] 
	  ,[CostCMOInEuroVsBase] + [CostLMOInEuroVsBase] as [CostTotalInEuroVsBase] 
	  ,[mix]
	  ,[codeGMUD2_2] 
	  ,[deafaultMSRPInEuroVsOther] 
	  ,[PDUCMOInEuroVsOther] 
	  ,[PDULMOInEuroVsOther] 
	  ,[PDUCMOInEuroVsOther] + [PDULMOInEuroVsOther] as [PDUTotalInEuroVsOther] 
	  ,[CostCMOInEuroVsOther] 
	  ,[CostLMOInEuroVsOther]
	  ,[CostCMOInEuroVsOther] + [CostLMOInEuroVsOther] as [CostTotalInEuroVsOther] 
	  ,[rbcfInEuroGSFBased] 
	  ,[rbcfInPercentGSFBased] 
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_InputVehicles_TEWU]
	  WHERE [measureType] = 'trims'
		AND [countryName]= @country
	    AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);

	--body style
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
	  ,[codeLCDV] 
	  ,[name] 
	  ,[codeGMUD2] 
	  ,[reference]
	  ,[deafaultMSRPInEuroVsBase] 
	  ,[PDUCMOInEuroVsBase] 
	  ,[PDULMOInEuroVsBase] 
	  ,[PDUCMOInEuroVsBase] + [PDULMOInEuroVsBase]as [PDUTotalInEuroVsBase] 
	  ,[CostCMOInEuroVsBase] 
	  ,[CostLMOInEuroVsBase] 
	  ,[CostCMOInEuroVsBase] + [CostLMOInEuroVsBase] as [CostTotalInEuroVsBase] 
	  ,[mix]
	  ,[codeGMUD2_2] 
	  ,[deafaultMSRPInEuroVsOther] 
	  ,[PDUCMOInEuroVsOther] 
	  ,[PDULMOInEuroVsOther] 
	  ,[PDUCMOInEuroVsOther] + [PDULMOInEuroVsOther] as [PDUTotalInEuroVsOther] 
	  ,[CostCMOInEuroVsOther] 
	  ,[CostLMOInEuroVsOther]
	  ,[CostCMOInEuroVsOther] + [CostLMOInEuroVsOther] as [CostTotalInEuroVsOther] 
	  ,[rbcfInEuroGSFBased] 
	  ,[rbcfInPercentGSFBased]
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_InputVehicles_TEWU]
	  WHERE [measureType] = 'body style'
		AND [countryName]= @country
	    AND [countryGroup]= @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);

	--vehicle type
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
	  ,[codeLCDV] 
	  ,[name] 
	  ,[codeGMUD2] 
	  ,[reference]
	  ,[deafaultMSRPInEuroVsBase] 
	  ,[PDUCMOInEuroVsBase] 
	  ,[PDULMOInEuroVsBase] 
	  ,[PDUCMOInEuroVsBase] + [PDULMOInEuroVsBase]as [PDUTotalInEuroVsBase] 
	  ,[CostCMOInEuroVsBase] 
	  ,[CostLMOInEuroVsBase] 
	  ,[CostCMOInEuroVsBase] + [CostLMOInEuroVsBase] as [CostTotalInEuroVsBase] 
	  ,[mix]
	  ,[codeGMUD2_2] 
	  ,[deafaultMSRPInEuroVsOther] 
	  ,[PDUCMOInEuroVsOther] 
	  ,[PDULMOInEuroVsOther] 
	  ,[PDUCMOInEuroVsOther] + [PDULMOInEuroVsOther] as [PDUTotalInEuroVsOther] 
	  ,[CostCMOInEuroVsOther] 
	  ,[CostLMOInEuroVsOther]
	  ,[CostCMOInEuroVsOther] + [CostLMOInEuroVsOther] as [CostTotalInEuroVsOther] 
	  ,[rbcfInEuroGSFBased] 
	  ,[rbcfInPercentGSFBased] 
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_InputVehicles_TEWU]
	  WHERE [measureType] = 'vehicle type'
		AND [countryName]= @country
		AND [countryGroup]= @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);

	--lcv size & type
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
	  ,[codeLCDV] 
	  ,[name] 
	  ,[codeGMUD2] 
	  ,[reference]
	  ,[deafaultMSRPInEuroVsBase] 
	  ,[PDUCMOInEuroVsBase] 
	  ,[PDULMOInEuroVsBase] 
	  ,[PDUCMOInEuroVsBase] + [PDULMOInEuroVsBase]as [PDUTotalInEuroVsBase] 
	  ,[CostCMOInEuroVsBase] 
	  ,[CostLMOInEuroVsBase] 
	  ,[CostCMOInEuroVsBase] + [CostLMOInEuroVsBase] as [CostTotalInEuroVsBase] 
	  ,[mix]
	  ,[codeGMUD2_2] 
	  ,[deafaultMSRPInEuroVsOther] 
	  ,[PDUCMOInEuroVsOther] 
	  ,[PDULMOInEuroVsOther] 
	  ,[PDUCMOInEuroVsOther] + [PDULMOInEuroVsOther] as [PDUTotalInEuroVsOther] 
	  ,[CostCMOInEuroVsOther] 
	  ,[CostLMOInEuroVsOther]
	  ,[CostCMOInEuroVsOther] + [CostLMOInEuroVsOther] as [CostTotalInEuroVsOther] 
	  ,[rbcfInEuroGSFBased] 
	  ,[rbcfInPercentGSFBased] 
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_InputVehicles_TEWU]
	  WHERE [measureType] = 'lcv size and type'
		AND [countryName] = @country
		AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);

	--drive axle
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
	  ,[codeLCDV] 
	  ,[name] 
	  ,[codeGMUD2] 
	  ,[reference]
	  ,[deafaultMSRPInEuroVsBase] 
	  ,[PDUCMOInEuroVsBase] 
	  ,[PDULMOInEuroVsBase] 
	  ,[PDUCMOInEuroVsBase] + [PDULMOInEuroVsBase]as [PDUTotalInEuroVsBase] 
	  ,[CostCMOInEuroVsBase] 
	  ,[CostLMOInEuroVsBase] 
	  ,[CostCMOInEuroVsBase] + [CostLMOInEuroVsBase] as [CostTotalInEuroVsBase] 
	  ,[mix]
	  ,[codeGMUD2_2] 
	  ,[deafaultMSRPInEuroVsOther] 
	  ,[PDUCMOInEuroVsOther] 
	  ,[PDULMOInEuroVsOther] 
	  ,[PDUCMOInEuroVsOther] + [PDULMOInEuroVsOther] as [PDUTotalInEuroVsOther] 
	  ,[CostCMOInEuroVsOther] 
	  ,[CostLMOInEuroVsOther]
	  ,[CostCMOInEuroVsOther] + [CostLMOInEuroVsOther] as [CostTotalInEuroVsOther] 
	  ,[rbcfInEuroGSFBased] 
	  ,[rbcfInPercentGSFBased] 
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_InputVehicles_TEWU]
	  WHERE [measureType] = 'drive axle'
		AND [countryName]= @country
	    AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);

	--drear axle
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
	  ,[codeLCDV] 
	  ,[name] 
	  ,[codeGMUD2] 
	  ,[reference]
	  ,[deafaultMSRPInEuroVsBase] 
	  ,[PDUCMOInEuroVsBase] 
	  ,[PDULMOInEuroVsBase] 
	  ,[PDUCMOInEuroVsBase] + [PDULMOInEuroVsBase]as [PDUTotalInEuroVsBase] 
	  ,[CostCMOInEuroVsBase] 
	  ,[CostLMOInEuroVsBase] 
	  ,[CostCMOInEuroVsBase] + [CostLMOInEuroVsBase] as [CostTotalInEuroVsBase] 
	  ,[mix]
	  ,[codeGMUD2_2] 
	  ,[deafaultMSRPInEuroVsOther] 
	  ,[PDUCMOInEuroVsOther] 
	  ,[PDULMOInEuroVsOther] 
	  ,[PDUCMOInEuroVsOther] + [PDULMOInEuroVsOther] as [PDUTotalInEuroVsOther] 
	  ,[CostCMOInEuroVsOther] 
	  ,[CostLMOInEuroVsOther]
	  ,[CostCMOInEuroVsOther] + [CostLMOInEuroVsOther] as [CostTotalInEuroVsOther] 
	  ,[rbcfInEuroGSFBased] 
	  ,[rbcfInPercentGSFBased] 
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_InputVehicles_TEWU]
	  WHERE [measureType] = 'drear axle'
		AND [countryName] = @country
	    AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);

	--length
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
	  ,[codeLCDV] 
	  ,[name] 
	  ,[codeGMUD2] 
	  ,[reference]
	  ,[deafaultMSRPInEuroVsBase] 
	  ,[PDUCMOInEuroVsBase] 
	  ,[PDULMOInEuroVsBase] 
	  ,[PDUCMOInEuroVsBase] + [PDULMOInEuroVsBase]as [PDUTotalInEuroVsBase] 
	  ,[CostCMOInEuroVsBase] 
	  ,[CostLMOInEuroVsBase] 
	  ,[CostCMOInEuroVsBase] + [CostLMOInEuroVsBase] as [CostTotalInEuroVsBase] 
	  ,[mix]
	  ,[codeGMUD2_2] 
	  ,[deafaultMSRPInEuroVsOther] 
	  ,[PDUCMOInEuroVsOther] 
	  ,[PDULMOInEuroVsOther] 
	  ,[PDUCMOInEuroVsOther] + [PDULMOInEuroVsOther] as [PDUTotalInEuroVsOther] 
	  ,[CostCMOInEuroVsOther] 
	  ,[CostLMOInEuroVsOther]
	  ,[CostCMOInEuroVsOther] + [CostLMOInEuroVsOther] as [CostTotalInEuroVsOther] 
	  ,[rbcfInEuroGSFBased] 
	  ,[rbcfInPercentGSFBased] 
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_InputVehicles_TEWU]
	  WHERE [measureType] = 'length'
		AND [countryName] = @country
	    AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);

	--payload
	SELECT @result10 = (SELECT
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
	  ,[codeLCDV] 
	  ,[name] 
	  ,[codeGMUD2] 
	  ,[reference]
	  ,[deafaultMSRPInEuroVsBase] 
	  ,[PDUCMOInEuroVsBase] 
	  ,[PDULMOInEuroVsBase] 
	  ,[PDUCMOInEuroVsBase] + [PDULMOInEuroVsBase]as [PDUTotalInEuroVsBase] 
	  ,[CostCMOInEuroVsBase] 
	  ,[CostLMOInEuroVsBase] 
	  ,[CostCMOInEuroVsBase] + [CostLMOInEuroVsBase] as [CostTotalInEuroVsBase] 
	  ,[mix]
	  ,[codeGMUD2_2] 
	  ,[deafaultMSRPInEuroVsOther] 
	  ,[PDUCMOInEuroVsOther] 
	  ,[PDULMOInEuroVsOther] 
	  ,[PDUCMOInEuroVsOther] + [PDULMOInEuroVsOther] as [PDUTotalInEuroVsOther] 
	  ,[CostCMOInEuroVsOther] 
	  ,[CostLMOInEuroVsOther]
	  ,[CostCMOInEuroVsOther] + [CostLMOInEuroVsOther] as [CostTotalInEuroVsOther] 
	  ,[rbcfInEuroGSFBased] 
	  ,[rbcfInPercentGSFBased]
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_InputVehicles_TEWU]
	  WHERE [measureType] = 'payload'
		AND [countryName] = @country
	    AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);

	--height
	SELECT @result11 = (SELECT
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
	  ,[codeLCDV] 
	  ,[name] 
	  ,[codeGMUD2] 
	  ,[reference]
	  ,[deafaultMSRPInEuroVsBase] 
	  ,[PDUCMOInEuroVsBase] 
	  ,[PDULMOInEuroVsBase] 
	  ,[PDUCMOInEuroVsBase] + [PDULMOInEuroVsBase]as [PDUTotalInEuroVsBase] 
	  ,[CostCMOInEuroVsBase] 
	  ,[CostLMOInEuroVsBase] 
	  ,[CostCMOInEuroVsBase] + [CostLMOInEuroVsBase] as [CostTotalInEuroVsBase] 
	  ,[mix]
	  ,[codeGMUD2_2] 
	  ,[deafaultMSRPInEuroVsOther] 
	  ,[PDUCMOInEuroVsOther] 
	  ,[PDULMOInEuroVsOther] 
	  ,[PDUCMOInEuroVsOther] + [PDULMOInEuroVsOther] as [PDUTotalInEuroVsOther] 
	  ,[CostCMOInEuroVsOther] 
	  ,[CostLMOInEuroVsOther]
	  ,[CostCMOInEuroVsOther] + [CostLMOInEuroVsOther] as [CostTotalInEuroVsOther] 
	  ,[rbcfInEuroGSFBased] 
	  ,[rbcfInPercentGSFBased] 
	  ,[timeStamp]
	  --,[userId] --don't needed here
	  ,[officialPrices]
	  ,[latestTimeStampWorkingVersion]
	  ,[latestTimeStampOfficialVersion]
	  FROM [DABI001].[dbo].[rPT_InputVehicles_TEWU]
	  WHERE [measureType] = 'height'
		AND [countryName] = @country
	    AND [countryGroup] = @countryGroup
		AND [carlineName] = @carline
		AND [vehicleBrand] = @vehicleBrand
		AND [modelYear] = @modelYear
	FOR JSON AUTO);

SELECT @result1 as [model mix]
SELECT @result2 as [engines]
SELECT @result3 as [trims]
SELECT @result4 as [body style]
SELECT @result5 as [vehicle type]
SELECT @result6 as [lcv size & type]
SELECT @result7 as [drive axle]
SELECT @result8 as [drear axle]
SELECT @result9 as [length]
SELECT @result10 as [payload]
SELECT @result11 as [height]


END

--exec [pPT_GetData_VehiclesPage] N'{"country":"Switzerland","countryGroup":"CA","carline":"Mokka","vehicleBrand":"0: Opel","modelYear":"21.0A"}'
