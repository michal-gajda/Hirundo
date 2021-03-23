/****** [rPT_InputGeneralInformation]  ******/
/****Author: Magda Jankowska*****/
/***** Date: 18.02.2021 *********/
CREATE TABLE [DABI001].[dbo].[rPT_InputGeneralInformation] (
	   [countryName] NVARCHAR(20)
	  ,[countryGroup] NVARCHAR(2)
      ,[carlineName] NVARCHAR(20)
      ,[vehicleBrand] NVARCHAR(20)
      ,[modelYear] NVARCHAR(5)
      --,[dateOfDocument] DATE --deleted
      --,[dateOfVOG] DATE --deleted
      --,[fXRate] NUMERIC(18,4) --deleted
      --,[localCurrency]  NVARCHAR(3) --deleted
	  ,[measureType] NVARCHAR(20)
	  ,[measureTypeSubcategory] NVARCHAR(50)
	  ,[value] NVARCHAR(50)
	  ,[timeStamp] DATETIME
	  ,[userId] NVARCHAR(10)
	  ,[officialPrices] DECIMAL(1,0)
	  ,[latestTimeStampWorkingVersion] DECIMAL(1,0)
	  ,[latestTimeStampOfficialVersion] DECIMAL(1,0));

INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','Input General','Gross Sales Factor (Options) - From PDU','0.56','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','Input General','Gross Sales Factor (Vehicle) - From PDU','0.52','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','Input General','Other Taxes','0','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','Input General','Local Currency','CHF','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','Input General','FX Rate','1.1','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','Input General','VAT','0.77','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','Input General','Dealer Margin','0.1','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','Input General','Default MSRP Type','1. Including Taxes','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','Input General','Importer Margin','0.3','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','Input General','Importer Margin on Options','0.25','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','Input General','Sales Allowances (% of PDU)','0.03','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','Other','GMUD Base','OMC76EU6','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','Other','LCDV Base','','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','Other','MSRP Base','23915','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','Other','PDU','12340','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Mokka', '0: Opel', '21.0A','Other','Cost','9720','2021-03-10 17:25:00','GZ6CN8',0,1,0);

INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','Input General','Gross Sales Factor (Options) - From PDU','0.20','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','Input General','Gross Sales Factor (Vehicle) - From PDU','0.25','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','Input General','Other Taxes','5','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','Input General','Local Currency','CHF','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','Input General','FX Rate','1.1','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','Input General','VAT','0.77','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','Input General','Dealer Margin','0.1','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','Input General','Default MSRP Type','1. Including Taxes','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','Input General','Importer Margin','0.4','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','Input General','Importer Margin on Options','0.2','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','Input General','Sales Allowances (% of PDU)','0.5','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','Other','GMUD Base','OBC76EU6','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','Other','LCDV Base','','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','Other','MSRP Base','23915','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','Other','PDU','12340','2021-03-10 17:25:00','GZ6CN8',0,1,0);
INSERT  INTO [DABI001].[dbo].[rPT_InputGeneralInformation] VALUES ('Switzerland','CA','Astra', '0: Opel', '21.0A','Other','Cost','9720','2021-03-10 17:25:00','GZ6CN8',0,1,0);

--DROP TABLE [DABI001].[dbo].[rPT_InputGeneralInformation]