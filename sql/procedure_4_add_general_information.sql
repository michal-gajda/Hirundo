/****[pPT_AddData_GeneralInformationPage] ****/
/****Author: Magda Jankowska*******/
/****   Data: 18.02.2021    *******/

USE [DABI001]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[pPT_AddData_GeneralInformationPage] 
	@source_json NVARCHAR(max)
	
AS
BEGIN

	DECLARE @country NVARCHAR(20);
	DECLARE @countryGroup NVARCHAR(2);
	DECLARE @carline NVARCHAR(20);
	DECLARE @vehicleBrand NVARCHAR(20);
	DECLARE @modelYear NVARCHAR(5);
	DECLARE @grossSalesFactorOptionsFromPDU NVARCHAR(max);
	DECLARE @grossSalesFactorVehiclesFromPDU NVARCHAR(max);
	DECLARE @otherTaxes NVARCHAR(max);
	DECLARE @localCurrency NVARCHAR(max);
	DECLARE @fxRATE NVARCHAR(max);
	DECLARE @vat NVARCHAR(max);
	DECLARE @dealerMargin NVARCHAR(max);
	DECLARE @dealerMsrpType NVARCHAR(max);
	DECLARE @importerMargin NVARCHAR(max);
	DECLARE @importerMarginOptions NVARCHAR(max);
	DECLARE @salesAllowances NVARCHAR(max);
	DECLARE @gmudBase NVARCHAR(max);
	DECLARE @lcdvBase NVARCHAR(max);
	DECLARE @msrpBase NVARCHAR(max);
	DECLARE @pduBase NVARCHAR(max);
	DECLARE @costBase NVARCHAR(max);
	DECLARE @timeStamp DATETIME;
	DECLARE @userId NVARCHAR(10);
	DECLARE @officialPrices DECIMAL(1,0);
	DECLARE @latestTimeStampWorkingVersion DECIMAL(1,0);
	DECLARE @latestTimeStampOfficialVersion DECIMAL(1,0);
	
	SELECT
		@country = JSON_VALUE(@source_json, '$.country'),
		@countryGroup = JSON_VALUE(@source_json, '$.countryGroup'),
		@carline = JSON_VALUE(@source_json, '$.carline'),
		@vehicleBrand = JSON_VALUE(@source_json, '$.vehicleBrand'),
		@modelYear = JSON_VALUE(@source_json, '$.modelYear'),
		@grossSalesFactorOptionsFromPDU = JSON_VALUE(@source_json, '$.grossSalesFactorOptionsFromPDU'),
		@grossSalesFactorVehiclesFromPDU = JSON_VALUE(@source_json, '$.grossSalesFactorVehiclesFromPDU'),
		@otherTaxes = JSON_VALUE(@source_json, '$.otherTaxes'),
		@localCurrency = JSON_VALUE(@source_json, '$.localCurrency'),
		@fxRATE = JSON_VALUE(@source_json, '$.fxRATE'),
		@vat = JSON_VALUE(@source_json, '$.vat'),
		@dealerMargin = JSON_VALUE(@source_json, '$.dealerMargin'),
		@dealerMsrpType = JSON_VALUE(@source_json, '$.dealerMsrpType'),
		@importerMargin = JSON_VALUE(@source_json, '$.importerMargin'),
		@importerMarginOptions = JSON_VALUE(@source_json, '$.importerMarginOptions'),
		@salesAllowances = JSON_VALUE(@source_json, '$.salesAllowances'),
		@gmudBase = JSON_VALUE(@source_json, '$.gmudBase'),
		@lcdvBase = JSON_VALUE(@source_json, '$.lcdvBase'),
		@msrpBase = JSON_VALUE(@source_json, '$.msrpBase'),
		@pduBase = JSON_VALUE(@source_json, '$.pduBase'),
		@costBase = JSON_VALUE(@source_json, '$.costBase'),
		@timeStamp = JSON_VALUE(@source_json, '$.timeStamp'),
		@userId = JSON_VALUE(@source_json, '$.userId'),
		@officialPrices = JSON_VALUE(@source_json, '$.officialPrices'),
		@latestTimeStampWorkingVersion = JSON_VALUE(@source_json, '$.latestTimeStampWorkingVersion'),
		@latestTimeStampOfficialVersion = JSON_VALUE(@source_json, '$.latestTimeStampOfficialVersion')
		;

		--input_general
		--grossSalesFactorOptionsFromPDU
		INSERT INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES (
			@country,
			@countryGroup,
			@carline, 
			@vehicleBrand, 
			@modelYear,
			'Input General',
			'Gross Sales Factor (Options) - From PDU',
			@grossSalesFactorOptionsFromPDU,
			@timeStamp, 
			@userId, 
			@officialPrices,
			@latestTimeStampWorkingVersion,
			@latestTimeStampOfficialVersion);
		--change thelatestWorkingStamp to 0 for the old records
		UPDATE [DABI001].[dbo].[rPT_InputGeneralInformation]
		SET [latestTimeStampWorkingVersion] = 0
		WHERE [countryName] = @country
		  AND [countryGroup] = @countryGroup
		  AND [carlineName] = @carline
		  AND [vehicleBrand] = @vehicleBrand
		  AND [modelYear] = @modelYear
		  AND [measureType] = 'Input General'
		  AND [measureTypeSubcategory] = 'Gross Sales Factor (Options) - From PDU'
		  AND [officialPrices] = 0
		  AND [timeStamp] < @timeStamp;

		--input_general
		--grossSalesFactorVehiclesFromPDU
		INSERT INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES (
			@country,
			@countryGroup,
			@carline, 
			@vehicleBrand, 
			@modelYear,
			'Input General',
			'Gross Sales Factor (Vehicle) - From PDU',
			@grossSalesFactorVehiclesFromPDU,
			@timeStamp, 
			@userId, 
			@officialPrices,
			@latestTimeStampWorkingVersion,
			@latestTimeStampOfficialVersion);
		--change thelatestWorkingStamp to 0 for the old records
		UPDATE [DABI001].[dbo].[rPT_InputGeneralInformation]
		SET [latestTimeStampWorkingVersion] = 0
		WHERE [countryName] = @country
		  AND [countryGroup] = @countryGroup
		  AND [carlineName] = @carline
		  AND [vehicleBrand] = @vehicleBrand
		  AND [modelYear] = @modelYear
		  AND [measureType] = 'Input General'
		  AND [measureTypeSubcategory] = 'Gross Sales Factor (Vehicle) - From PDU'
		  AND [officialPrices] = 0
		  AND [timeStamp] < @timeStamp;

		--input_general
		--otherTaxes
		INSERT INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES (
			@country,
			@countryGroup,
			@carline, 
			@vehicleBrand, 
			@modelYear,
			'Input General',
			'Other Taxes',
			@otherTaxes,
			@timeStamp, 
			@userId, 
			@officialPrices,
			@latestTimeStampWorkingVersion,
			@latestTimeStampOfficialVersion);
		--change thelatestWorkingStamp to 0 for the old records
		UPDATE [DABI001].[dbo].[rPT_InputGeneralInformation]
		SET [latestTimeStampWorkingVersion] = 0
		WHERE [countryName] = @country
		  AND [countryGroup] = @countryGroup
		  AND [carlineName] = @carline
		  AND [vehicleBrand] = @vehicleBrand
		  AND [modelYear] = @modelYear
		  AND [measureType] = 'Input General'
		  AND [measureTypeSubcategory] = 'Other Taxes'
		  AND [officialPrices] = 0
		  AND [timeStamp] < @timeStamp;
		  
		--input_general
		--localCurrency
		INSERT INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES (
			@country,
			@countryGroup,
			@carline, 
			@vehicleBrand, 
			@modelYear,
			'Input General',
			'Local Currency',
			@localCurrency,
			@timeStamp, 
			@userId, 
			@officialPrices,
			@latestTimeStampWorkingVersion,
			@latestTimeStampOfficialVersion);
		--change thelatestWorkingStamp to 0 for the old records
		UPDATE [DABI001].[dbo].[rPT_InputGeneralInformation]
		SET [latestTimeStampWorkingVersion] = 0
		WHERE [countryName] = @country
		  AND [countryGroup] = @countryGroup
		  AND [carlineName] = @carline
		  AND [vehicleBrand] = @vehicleBrand
		  AND [modelYear] = @modelYear
		  AND [measureType] = 'Input General'
		  AND [measureTypeSubcategory] = 'Local Currency'
		  AND [officialPrices] = 0
		  AND [timeStamp] < @timeStamp;

		--input_general
		--fxRATE
		INSERT INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES (
			@country,
			@countryGroup,
			@carline, 
			@vehicleBrand, 
			@modelYear,
			'Input General',
			'FX Rate',
			@fxRATE,
			@timeStamp, 
			@userId, 
			@officialPrices,
			@latestTimeStampWorkingVersion,
			@latestTimeStampOfficialVersion);
		--change thelatestWorkingStamp to 0 for the old records
		UPDATE [DABI001].[dbo].[rPT_InputGeneralInformation]
		SET [latestTimeStampWorkingVersion] = 0
		WHERE [countryName] = @country
		  AND [countryGroup] = @countryGroup
		  AND [carlineName] = @carline
		  AND [vehicleBrand] = @vehicleBrand
		  AND [modelYear] = @modelYear
		  AND [measureType] = 'Input General'
		  AND [measureTypeSubcategory] = 'FX Rate'
		  AND [officialPrices] = 0
		  AND [timeStamp] < @timeStamp;

		--input_general
		--vat
		INSERT INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES (
			@country,
			@countryGroup,
			@carline, 
			@vehicleBrand, 
			@modelYear,
			'Input General',
			'VAT',
			@vat,
			@timeStamp, 
			@userId, 
			@officialPrices,
			@latestTimeStampWorkingVersion,
			@latestTimeStampOfficialVersion);
		--change thelatestWorkingStamp to 0 for the old records
		UPDATE [DABI001].[dbo].[rPT_InputGeneralInformation]
		SET [latestTimeStampWorkingVersion] = 0
		WHERE [countryName] = @country
		  AND [countryGroup] = @countryGroup
		  AND [carlineName] = @carline
		  AND [vehicleBrand] = @vehicleBrand
		  AND [modelYear] = @modelYear
		  AND [measureType] = 'Input General'
		  AND [measureTypeSubcategory] = 'VAT'
		  AND [officialPrices] = 0
		  AND [timeStamp] < @timeStamp;

		--input_general
		--dealerMargin
		INSERT INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES (
			@country,
			@countryGroup,
			@carline, 
			@vehicleBrand, 
			@modelYear,
			'Input General',
			'Dealer Margin',
			@dealerMargin,
			@timeStamp, 
			@userId, 
			@officialPrices,
			@latestTimeStampWorkingVersion,
			@latestTimeStampOfficialVersion);
		--change thelatestWorkingStamp to 0 for the old records
		UPDATE [DABI001].[dbo].[rPT_InputGeneralInformation]
		SET [latestTimeStampWorkingVersion] = 0
		WHERE [countryName] = @country
		  AND [countryGroup] = @countryGroup
		  AND [carlineName] = @carline
		  AND [vehicleBrand] = @vehicleBrand
		  AND [modelYear] = @modelYear
		  AND [measureType] = 'Input General'
		  AND [measureTypeSubcategory] = 'Dealer Margin'
		  AND [officialPrices] = 0
		  AND [timeStamp] < @timeStamp;

		--input_general
		--dealerMsrpType
		INSERT INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES (
			@country,
			@countryGroup,
			@carline, 
			@vehicleBrand, 
			@modelYear,
			'Input General',
			'Default MSRP Type',
			@dealerMsrpType,
			@timeStamp, 
			@userId, 
			@officialPrices,
			@latestTimeStampWorkingVersion,
			@latestTimeStampOfficialVersion);
		--change thelatestWorkingStamp to 0 for the old records
		UPDATE [DABI001].[dbo].[rPT_InputGeneralInformation]
		SET [latestTimeStampWorkingVersion] = 0
		WHERE [countryName] = @country
		  AND [countryGroup] = @countryGroup
		  AND [carlineName] = @carline
		  AND [vehicleBrand] = @vehicleBrand
		  AND [modelYear] = @modelYear
		  AND [measureType] = 'Input General'
		  AND [measureTypeSubcategory] = 'Default MSRP Type'
		  AND [officialPrices] = 0
		  AND [timeStamp] < @timeStamp;

		--input_general
		--importerMargin
		INSERT INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES (
			@country,
			@countryGroup,
			@carline, 
			@vehicleBrand, 
			@modelYear,
			'Input General',
			'Importer Margin',
			@importerMargin,
			@timeStamp, 
			@userId, 
			@officialPrices,
			@latestTimeStampWorkingVersion,
			@latestTimeStampOfficialVersion);
		--change thelatestWorkingStamp to 0 for the old records
		UPDATE [DABI001].[dbo].[rPT_InputGeneralInformation]
		SET [latestTimeStampWorkingVersion] = 0
		WHERE [countryName] = @country
		  AND [countryGroup] = @countryGroup
		  AND [carlineName] = @carline
		  AND [vehicleBrand] = @vehicleBrand
		  AND [modelYear] = @modelYear
		  AND [measureType] = 'Input General'
		  AND [measureTypeSubcategory] = 'Importer Margin'
		  AND [officialPrices] = 0
		  AND [timeStamp] < @timeStamp;

		--input_general
		--importerMarginOptions
		INSERT INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES (
			@country,
			@countryGroup,
			@carline, 
			@vehicleBrand, 
			@modelYear,
			'Input General',
			'Importer Margin on Options',
			@importerMarginOptions,
			@timeStamp, 
			@userId, 
			@officialPrices,
			@latestTimeStampWorkingVersion,
			@latestTimeStampOfficialVersion);
		--change thelatestWorkingStamp to 0 for the old records
		UPDATE [DABI001].[dbo].[rPT_InputGeneralInformation]
		SET [latestTimeStampWorkingVersion] = 0
		WHERE [countryName] = @country
		  AND [countryGroup] = @countryGroup
		  AND [carlineName] = @carline
		  AND [vehicleBrand] = @vehicleBrand
		  AND [modelYear] = @modelYear
		  AND [measureType] = 'Input General'
		  AND [measureTypeSubcategory] = 'Importer Margin on Options'
		  AND [officialPrices] = 0
		  AND [timeStamp] < @timeStamp;

		--input_general
		--salesAllowances
		INSERT INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES (
			@country,
			@countryGroup,
			@carline, 
			@vehicleBrand, 
			@modelYear,
			'Input General',
			'Sales Allowances (% of PDU)',
			@salesAllowances,
			@timeStamp, 
			@userId, 
			@officialPrices,
			@latestTimeStampWorkingVersion,
			@latestTimeStampOfficialVersion);
		--change thelatestWorkingStamp to 0 for the old records
		UPDATE [DABI001].[dbo].[rPT_InputGeneralInformation]
		SET [latestTimeStampWorkingVersion] = 0
		WHERE [countryName] = @country
		  AND [countryGroup] = @countryGroup
		  AND [carlineName] = @carline
		  AND [vehicleBrand] = @vehicleBrand
		  AND [modelYear] = @modelYear
		  AND [measureType] = 'Input General'
		  AND [measureTypeSubcategory] = 'Sales Allowances (% of PDU)'
		  AND [officialPrices] = 0
		  AND [timeStamp] < @timeStamp;



		--input_other
		--gmudBase
		INSERT INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES (
			@country,
			@countryGroup,
			@carline, 
			@vehicleBrand, 
			@modelYear,
			'Input Other',
			'GMUD Base',
			@gmudBase,
			@timeStamp, 
			@userId, 
			@officialPrices,
			@latestTimeStampWorkingVersion,
			@latestTimeStampOfficialVersion);
		--change thelatestWorkingStamp to 0 for the old records
		UPDATE [DABI001].[dbo].[rPT_InputGeneralInformation]
		SET [latestTimeStampWorkingVersion] = 0
		WHERE [countryName] = @country
		  AND [countryGroup] = @countryGroup
		  AND [carlineName] = @carline
		  AND [vehicleBrand] = @vehicleBrand
		  AND [modelYear] = @modelYear
		  AND [measureType] = 'Input Other'
		  AND [measureTypeSubcategory] = 'GMUD Base'
		  AND [officialPrices] = 0
		  AND [timeStamp] < @timeStamp;

	 	--input_other
		--lcdvBase
		INSERT INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES (
			@country,
			@countryGroup,
			@carline, 
			@vehicleBrand, 
			@modelYear,
			'Input Other',
			'LCDV Base',
			@lcdvBase,
			@timeStamp, 
			@userId, 
			@officialPrices,
			@latestTimeStampWorkingVersion,
			@latestTimeStampOfficialVersion);
		--change thelatestWorkingStamp to 0 for the old records
		UPDATE [DABI001].[dbo].[rPT_InputGeneralInformation]
		SET [latestTimeStampWorkingVersion] = 0
		WHERE [countryName] = @country
		  AND [countryGroup] = @countryGroup
		  AND [carlineName] = @carline
		  AND [vehicleBrand] = @vehicleBrand
		  AND [modelYear] = @modelYear
		  AND [measureType] = 'Input Other'
		  AND [measureTypeSubcategory] = 'LCDV Base'
		  AND [officialPrices] = 0
		  AND [timeStamp] < @timeStamp;

		--input_other
		--msrpBase
		INSERT INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES (
			@country,
			@countryGroup,
			@carline, 
			@vehicleBrand, 
			@modelYear,
			'Input Other',
			'MSRP Base',
			@msrpBase,
			@timeStamp, 
			@userId, 
			@officialPrices,
			@latestTimeStampWorkingVersion,
			@latestTimeStampOfficialVersion);
		--change thelatestWorkingStamp to 0 for the old records
		UPDATE [DABI001].[dbo].[rPT_InputGeneralInformation]
		SET [latestTimeStampWorkingVersion] = 0
		WHERE [countryName] = @country
		  AND [countryGroup] = @countryGroup
		  AND [carlineName] = @carline
		  AND [vehicleBrand] = @vehicleBrand
		  AND [modelYear] = @modelYear
		  AND [measureType] = 'Input Other'
		  AND [measureTypeSubcategory] = 'MSRP Base'
		  AND [officialPrices] = 0
		  AND [timeStamp] < @timeStamp;

		--input_other
		--pduBase
		INSERT INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES (
			@country,
			@countryGroup,
			@carline, 
			@vehicleBrand, 
			@modelYear,
			'Input Other',
			'PDU',
			@pduBase,
			@timeStamp, 
			@userId, 
			@officialPrices,
			@latestTimeStampWorkingVersion,
			@latestTimeStampOfficialVersion);
		--change thelatestWorkingStamp to 0 for the old records
		UPDATE [DABI001].[dbo].[rPT_InputGeneralInformation]
		SET [latestTimeStampWorkingVersion] = 0
		WHERE [countryName] = @country
		  AND [countryGroup] = @countryGroup
		  AND [carlineName] = @carline
		  AND [vehicleBrand] = @vehicleBrand
		  AND [modelYear] = @modelYear
		  AND [measureType] = 'Input Other'
		  AND [measureTypeSubcategory] = 'PDU'
		  AND [officialPrices] = 0
		  AND [timeStamp] < @timeStamp;

		--input_other
		--costBase
		INSERT INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES (
			@country,
			@countryGroup,
			@carline, 
			@vehicleBrand, 
			@modelYear,
			'Input Other',
			'Cost',
			@costBase,
			@timeStamp, 
			@userId, 
			@officialPrices,
			@latestTimeStampWorkingVersion,
			@latestTimeStampOfficialVersion);
		--change thelatestWorkingStamp to 0 for the old records
		UPDATE [DABI001].[dbo].[rPT_InputGeneralInformation]
		SET [latestTimeStampWorkingVersion] = 0
		WHERE [countryName] = @country
		  AND [countryGroup] = @countryGroup
		  AND [carlineName] = @carline
		  AND [vehicleBrand] = @vehicleBrand
		  AND [modelYear] = @modelYear
		  AND [measureType] = 'Input Other'
		  AND [measureTypeSubcategory] = 'Cost'
		  AND [officialPrices] = 0
		  AND [timeStamp] < @timeStamp;


END

--exec [pPT_AddData_GeneralInformationPage] N'{"country":"Switzerland","countryGroup":"CA","carline":"Mokka","vehicleBrand":"0: Opel","modelYear":"21.0A","grossSalesFactorOptionsFromPDU":"0.56","grossSalesFactorVehiclesFromPDU":"0.52","otherTaxes":"0","localCurrency":"CHF","fxRATE":"1.1","vat":"0.77","dealerMargin":"0.1","dealerMsrpType":"1. Including Taxes","importerMargin":"0.3","importerMarginOptions":"0.25","salesAllowances":"0.03","gmudBase":"0MC76EU6","lcdvBase":"","msrpBase":"23915","pduBase":"12340","costBase":"9720","timeStamp":"2021-03-15 17:25:00","userId":"GZ6CN8","officialPrices":"0","latestTimeStampWorkingVersion":"1","latestTimeStampOfficialVersion":"0"}'
--exec [pPT_AddData_GeneralInformationPage] N'{"country":"Switzerland","countryGroup":"CA","carline":"Mokka","vehicleBrand":"0: Opel","modelYear":"21.0A","grossSalesFactorOptionsFromPDU":"0.56","grossSalesFactorVehiclesFromPDU":"0.52","otherTaxes":"0","localCurrency":"CHF","fxRATE":"1.1","vat":"0.77","dealerMargin":"0.1","dealerMsrpType":"1. Including Taxes","importerMargin":"0.3","importerMarginOptions":"0.25","salesAllowances":"0.03","gmudBase":"0MC76EU6","lcdvBase":"","msrpBase":"23915","pduBase":"12340","costBase":"9720","timeStamp":"2021-03-18 18:25:00","userId":"GZ6CN8","officialPrices":"0","latestTimeStampWorkingVersion":"1","latestTimeStampOfficialVersion":"0"}'

 
