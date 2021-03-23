namespace Hirundo.Application.ValueObjects
{
    using System.Text.Json.Serialization;

    public sealed class PriceListFinalResponseRecord
    {
        [JsonPropertyName("countryName")] public string countryName { get; set; }
        [JsonPropertyName("countryGroup")] public string countryGroup { get; set; }
        [JsonPropertyName("carlineName")] public string carlineName { get; set; }
        [JsonPropertyName("vehicleBrand")] public string vehicleBrand { get; set; }
        [JsonPropertyName("modelYear")] public string modelYear { get; set; }
        [JsonPropertyName("dateOfDocument")] public string dateOfDocument { get; set; }
        [JsonPropertyName("dateOfVOG")] public string dateOfVOG { get; set; }
        [JsonPropertyName("fXRate")] public decimal fXRate { get; set; }
        [JsonPropertyName("localCurrency")] public string localCurrency { get; set; }
        [JsonPropertyName("codeGMUD2")] public string codeGMUD2 { get; set; }
        [JsonPropertyName("codeLCDV")] public string codeLCDV { get; set; }
        [JsonPropertyName("versionName")] public string versionName { get; set; }
        [JsonPropertyName("finalMixPercent")] public decimal finalMixPercent { get; set; }
        [JsonPropertyName("EURTolpIncludedTaxesVehicleInLCtalBudget")] public decimal lpIncludedTaxesVehicleInLC { get; set; }
        [JsonPropertyName("lpIncludedTaxesOptionsInLC")] public decimal lpIncludedTaxesOptionsInLC { get; set; }
        [JsonPropertyName("lpIncludedTaxesTotalInLC")] public decimal lpIncludedTaxesTotalInLC { get; set; }
        [JsonPropertyName("lpExcludedTaxesVehicleInLC")] public decimal lpExcludedTaxesVehicleInLC { get; set; }
        [JsonPropertyName("lpExcludedTaxesOptionsInLC")] public decimal lpExcludedTaxesOptionsInLC { get; set; }
        [JsonPropertyName("lpExcludedTaxesTotalInLC")] public decimal lpExcludedTaxesTotalInLC { get; set; }
        [JsonPropertyName("dealerPriceVehicleInLC")] public decimal dealerPriceVehicleInLC { get; set; }
        [JsonPropertyName("dealerPriceOptionsInLC")] public decimal dealerPriceOptionsInLC { get; set; }
        [JsonPropertyName("dealerPriceTotalInLC")] public decimal dealerPriceTotalInLC { get; set; }
        [JsonPropertyName("dealerPriceVehicleInEUR")] public decimal dealerPriceVehicleInEUR { get; set; }
        [JsonPropertyName("dealerPriceOptionsInEUR")] public decimal dealerPriceOptionsInEUR { get; set; }
        [JsonPropertyName("dealerPriceTotalInEUR")] public decimal dealerPriceTotalInEUR { get; set; }
        [JsonPropertyName("importerGrossMarginVehicleInEUR")] public decimal importerGrossMarginVehicleInEUR { get; set; }
        [JsonPropertyName("importerGrossMarginOptionsInEUR")] public decimal importerGrossMarginOptionsInEUR { get; set; }
        [JsonPropertyName("importerGrossMarginTotalInEUR")] public decimal importerGrossMarginTotalInEUR { get; set; }
        [JsonPropertyName("importerGrossMarginVehiclePercent")] public decimal importerGrossMarginVehiclePercent { get; set; }
        [JsonPropertyName("importerGrossMarginOptionsPercent")] public decimal importerGrossMarginOptionsPercent { get; set; }
        [JsonPropertyName("importerGrossMarginTotalPercent")] public decimal importerGrossMarginTotalPercent { get; set; }
        [JsonPropertyName("importerCostsVehicleInEUR")] public decimal importerCostsVehicleInEUR { get; set; }
        [JsonPropertyName("importerCostsOptionsInEUR")] public decimal importerCostsOptionsInEUR { get; set; }
        [JsonPropertyName("importerCostsTotalInEUR")] public decimal importerCostsTotalInEUR { get; set; }
        [JsonPropertyName("importerNetMarginVehicleInEUR")] public decimal importerNetMarginVehicleInEUR { get; set; }
        [JsonPropertyName("importerNetMarginOptionsInEUR")] public decimal importerNetMarginOptionsInEUR { get; set; }
        [JsonPropertyName("importerNetMarginTotalInEUR")] public decimal importerNetMarginTotalInEUR { get; set; }
        [JsonPropertyName("importerNetMarginVehiclePercent")] public decimal importerNetMarginVehiclePercent { get; set; }
        [JsonPropertyName("importerNetMarginOptionsPercent")] public decimal importerNetMarginOptionsPercent { get; set; }
        [JsonPropertyName("importerNetMarginTotalPercent")] public decimal importerNetMarginTotalPercent { get; set; }
        [JsonPropertyName("grossSalesPduVehicleInEUR")] public decimal grossSalesPduVehicleInEUR { get; set; }
        [JsonPropertyName("grossSalesPduOptionsInEUR")] public decimal grossSalesPduOptionsInEUR { get; set; }
        [JsonPropertyName("grossSalesPduTotalInEUR")] public decimal grossSalesPduTotalInEUR { get; set; }
        [JsonPropertyName("countryMarginVehicleInEUR")] public decimal countryMarginVehicleInEUR { get; set; }
        [JsonPropertyName("countryMarginOptionsInEUR")] public decimal countryMarginOptionsInEUR { get; set; }
        [JsonPropertyName("countryMarginTotalInEUR")] public decimal countryMarginTotalInEUR { get; set; }
        [JsonPropertyName("countryMarginVehiclePercent")] public decimal countryMarginVehiclePercent { get; set; }
        [JsonPropertyName("countryMarginOptionsPercent")] public decimal countryMarginOptionsPercent { get; set; }
        [JsonPropertyName("countryMarginTotalPercent")] public decimal countryMarginTotalPercent { get; set; }
        [JsonPropertyName("ppiVehicleInEUR")] public decimal ppiVehicleInEUR { get; set; }
        [JsonPropertyName("ppiOptionsInEUR")] public decimal ppiOptionsInEUR { get; set; }
        [JsonPropertyName("ppiTotalInEUR")] public decimal ppiTotalInEUR { get; set; }
        [JsonPropertyName("cmVehicleInEUR")] public decimal cmVehicleInEUR { get; set; }
        [JsonPropertyName("cmOptionsInEUR")] public decimal cmOptionsInEUR { get; set; }
        [JsonPropertyName("cmTotalInEUR")] public decimal cmTotalInEUR { get; set; }
        [JsonPropertyName("cmVehiclePercent")] public decimal cmVehiclePercent { get; set; }
        [JsonPropertyName("cmOptionsPercent")] public decimal cmOptionsPercent { get; set; }
        [JsonPropertyName("cmTotalPercent")] public decimal cmTotalPercent { get; set; }
        [JsonPropertyName("opelSupportVehicleInEUR")] public decimal opelSupportVehicleInEUR { get; set; }
        [JsonPropertyName("opelSupportOptionsInEUR")] public decimal opelSupportOptionsInEUR { get; set; }
        [JsonPropertyName("opelSupportTotalInEUR")] public decimal opelSupportTotalInEUR { get; set; }
        [JsonPropertyName("rbcvVehicleInEUR")] public decimal rbcvVehicleInEUR { get; set; }
        [JsonPropertyName("rbcvOptionsInEUR")] public decimal rbcvOptionsInEUR { get; set; }
        [JsonPropertyName("rbcvTotalInEUR")] public decimal rbcvTotalInEUR { get; set; }
        [JsonPropertyName("timeStamp")] public string timeStamp { get; set; }
        [JsonPropertyName("officialPrices")] public decimal officialPrices { get; set; }
        [JsonPropertyName("latestTimeStampWorkingVersion")] public decimal latestTimeStampWorkingVersion { get; set; }
        [JsonPropertyName("latestTimeStampOfficialVersion")] public decimal latestTimeStampOfficialVersion { get; set; }
    }

}