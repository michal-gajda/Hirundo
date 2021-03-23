namespace Hirundo.Application.ValueObjects
{
    using System.Text.Json.Serialization;

    public sealed class InputVehiclesResponseRecord
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
        [JsonPropertyName("selectedVersion")] public string selectedVersion { get; set; }
        [JsonPropertyName("codeGMUD2")] public string codeGMUD2 { get; set; }
        [JsonPropertyName("codeLCDV")] public string codeLCDV { get; set; }
        [JsonPropertyName("versionName")] public string versionName { get; set; }
        [JsonPropertyName("mixCurrentMY")] public decimal mixCurrentMY { get; set; }
        [JsonPropertyName("timeStamp")] public string timeStamp { get; set; }
        [JsonPropertyName("officialPrices")] public decimal officialPrices { get; set; }
        [JsonPropertyName("latestTimeStampWorkingVersion")] public decimal latestTimeStampWorkingVersion { get; set; }
        [JsonPropertyName("latestTimeStampOfficialVersion")] public decimal latestTimeStampOfficialVersion { get; set; }
    }

}