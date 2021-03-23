namespace Hirundo.Application.ValueObjects
{
    using System.Text.Json.Serialization;

    public sealed class DetailedVarianceAnalysisResponseRecord5
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
        [JsonPropertyName("measureType")] public string measureType { get; set; }
        [JsonPropertyName("codeLCDV")] public string codeLCDV { get; set; }
        [JsonPropertyName("codeRPO")] public string codeRPO { get; set; }
        [JsonPropertyName("name")] public string EURTotalPrevious { get; set; }
        [JsonPropertyName("mixPreviousMY")] public decimal EURVehicleSubmission { get; set; }
        [JsonPropertyName("mixCurrentMY")] public decimal EUROptionsSubmission { get; set; }
        [JsonPropertyName("mixDelta")] public decimal EURVehiclePrevious { get; set; }
        [JsonPropertyName("listPriceInclTaxesInLCPreviousMY")] public decimal listPriceInclTaxesInLCPreviousMY { get; set; }
        [JsonPropertyName("listPriceInclTaxesInLCCurrentMY")] public decimal listPriceInclTaxesInLCCurrentMY { get; set; }
        [JsonPropertyName("listPriceInclTaxesInLCDelta")] public decimal listPriceInclTaxesInLCDelta { get; set; }
        [JsonPropertyName("listPriceExclTaxesInLCPreviousMY")] public decimal listPriceExclTaxesInLCPreviousMY { get; set; }
        [JsonPropertyName("listPriceExclTaxesInLCCurrentMY")] public decimal listPriceExclTaxesInLCCurrentMY { get; set; }
        [JsonPropertyName("listPriceExclTaxesInLCDelta")] public decimal listPriceExclTaxesInLCDelta { get; set; }
        [JsonPropertyName("grossSalesPDUinEuroPreviousMY")] public decimal grossSalesPDUinEuroPreviousMY { get; set; }
        [JsonPropertyName("grossSalesPDUinEuroCurrentMY")] public decimal grossSalesPDUinEuroCurrentMY { get; set; }
        [JsonPropertyName("grossSalesPDUinEuroDelta")] public decimal grossSalesPDUinEuroDelta { get; set; }
        [JsonPropertyName("ppiInEuroPreviousMY")] public decimal ppiInEuroPreviousMY { get; set; }
        [JsonPropertyName("ppiInEuroCurrentMY")] public decimal ppiInEuroCurrentMY { get; set; }
        [JsonPropertyName("ppiInEuroDelta")] public decimal ppiInEuroDelta { get; set; }
        [JsonPropertyName("rbcvInEuroPreviousMY")] public decimal rbcvInEuroPreviousMY { get; set; }
        [JsonPropertyName("rbcvInEuroCurrentMY")] public decimal rbcvInEuroCurrentMY { get; set; }
        [JsonPropertyName("rbcvInEuroDelta")] public decimal rbcvInEuroDelta { get; set; }
        [JsonPropertyName("timeStamp")] public string timeStamp { get; set; }
        [JsonPropertyName("officialPrices")] public decimal officialPrices { get; set; }
        [JsonPropertyName("latestTimeStampWorkingVersion")] public decimal latestTimeStampWorkingVersion { get; set; }
        [JsonPropertyName("latestTimeStampOfficialVersion")] public decimal latestTimeStampOfficialVersion { get; set; }
    }

}