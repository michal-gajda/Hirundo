namespace Hirundo.Application.ValueObjects
{
    using System.Text.Json.Serialization;

    public sealed class DetailedVarianceAnalysisResponseRecord13
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
        [JsonPropertyName("importerGrossMarginEurPreviousMY")] public decimal importerGrossMarginEurPreviousMY { get; set; }
        [JsonPropertyName("importerGrossMarginEurCurrentMY")] public decimal importerGrossMarginEurCurrentMY { get; set; }
        [JsonPropertyName("importerGrossMarginEurDelta")] public decimal importerGrossMarginEurDelta { get; set; }
        [JsonPropertyName("importerGrossMarginPercentPreviousMY")] public decimal importerGrossMarginPercentPreviousMY { get; set; }
        [JsonPropertyName("importerGrossMarginPercentCurrentMY")] public decimal importerGrossMarginPercentCurrentMY { get; set; }
        [JsonPropertyName("importerGrossMarginPercentDelta")] public decimal importerGrossMarginPercentDelta { get; set; }
        [JsonPropertyName("importerNetMarginEurPreviousMY")] public decimal importerNetMarginEurPreviousMY { get; set; }
        [JsonPropertyName("importerNetMarginEurCurrentMY")] public decimal importerNetMarginEurCurrentMY { get; set; }
        [JsonPropertyName("importerNetMarginEurDelta")] public decimal importerNetMarginEurDelta { get; set; }
        [JsonPropertyName("importerNetMarginPercentPreviousMY")] public decimal importerNetMarginPercentPreviousMY { get; set; }
        [JsonPropertyName("importerNetMarginPercentCurrentMY")] public decimal importerNetMarginPercentCurrentMY { get; set; }
        [JsonPropertyName("importerNetMarginPercentDelta")] public decimal importerNetMarginPercentDelta { get; set; }
        [JsonPropertyName("countryGrossMarginEurPreviousMY")] public decimal countryGrossMarginEurPreviousMY { get; set; }
        [JsonPropertyName("countryGrossMarginEurCurrentMY")] public decimal countryGrossMarginEurCurrentMY { get; set; }
        [JsonPropertyName("countryGrossMarginEurDelta")] public decimal countryGrossMarginEurDelta { get; set; }
        [JsonPropertyName("countryGrossMarginPercentPreviousMY")] public decimal countryGrossMarginPercentPreviousMY { get; set; }
        [JsonPropertyName("countryGrossMarginPercentCurrentMY")] public decimal countryGrossMarginPercentCurrentMY { get; set; }
        [JsonPropertyName("countryGrossMarginPercentDelta")] public decimal countryGrossMarginPercentDelta { get; set; }
        [JsonPropertyName("dealerMarginEurPreviousMY")] public decimal dealerMarginEurPreviousMY { get; set; }
        [JsonPropertyName("dealerGrossMarginEurCurrentMY")] public decimal dealerGrossMarginEurCurrentMY { get; set; }
        [JsonPropertyName("dealerGrossMarginEurDelta")] public decimal dealerGrossMarginEurDelta { get; set; }
        [JsonPropertyName("timeStamp")] public string timeStamp { get; set; }
        [JsonPropertyName("officialPrices")] public decimal officialPrices { get; set; }
        [JsonPropertyName("latestTimeStampWorkingVersion")] public decimal latestTimeStampWorkingVersion { get; set; }
        [JsonPropertyName("latestTimeStampOfficialVersion")] public decimal latestTimeStampOfficialVersion { get; set; }
    }

}