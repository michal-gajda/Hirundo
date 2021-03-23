namespace Hirundo.Application.ValueObjects
{
    using System.Text.Json.Serialization;

        public sealed class SummaryResponseRecord9
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
        [JsonPropertyName("trimlineCodeGMUD2")] public string trimlineCodeGMUD2 { get; set; }
        [JsonPropertyName("trimlineCodeLCDV")] public string trimlineCodeLCDV { get; set; }
        [JsonPropertyName("cmoCurrentMY")] public string cmoCurrentMY { get; set; }
        [JsonPropertyName("cmoPreviousMY")] public string cmoPreviousMY { get; set; }
        [JsonPropertyName("changesAdded")] public string changesAdded { get; set; }
        [JsonPropertyName("changesDroped")] public string changesDroped { get; set; }
        [JsonPropertyName("impactOnPrices")] public decimal impactOnPrices { get; set; }
        [JsonPropertyName("impactOnCosts")] public decimal impactOnCosts { get; set; }
        [JsonPropertyName("timeStamp")] public string timeStamp { get; set; }
        [JsonPropertyName("officialPrices")] public decimal officialPrices { get; set; }
        [JsonPropertyName("latestTimeStampWorkingVersion")] public decimal latestTimeStampWorkingVersion { get; set; }
        [JsonPropertyName("latestTimeStampOfficialVersion")] public decimal latestTimeStampOfficialVersion { get; set; }
    }
}