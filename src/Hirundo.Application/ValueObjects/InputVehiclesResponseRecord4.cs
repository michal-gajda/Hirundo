namespace Hirundo.Application.ValueObjects
{
    using System.Text.Json.Serialization;

    public sealed class InputVehiclesResponseRecord4
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
        [JsonPropertyName("codeGMUD2")] public string codeGMUD2 { get; set; }
        [JsonPropertyName("name")] public string name { get; set; }
        [JsonPropertyName("codeLCDV")] public string codeLCDV { get; set; }
        [JsonPropertyName("reference")] public string reference { get; set; }
        [JsonPropertyName("deafaultMSRPInEuroVsBase")] public decimal deafaultMSRPInEuroVsBase { get; set; }
        [JsonPropertyName("PDUCMOInEuroVsBase")] public decimal PDUCMOInEuroVsBase { get; set; }
        [JsonPropertyName("PDULMOInEuroVsBase")] public decimal PDULMOInEuroVsBase { get; set; }
        [JsonPropertyName("PDUTotalInEuroVsBase")] public decimal PDUTotalInEuroVsBase { get; set; }
        [JsonPropertyName("CostCMOInEuroVsBase")] public decimal CostCMOInEuroVsBase { get; set; }
        [JsonPropertyName("CostLMOInEuroVsBase")] public decimal CostLMOInEuroVsBase { get; set; }
        [JsonPropertyName("CostTotalInEuroVsBase")] public decimal CostTotalInEuroVsBase { get; set; }
        [JsonPropertyName("mix")] public decimal mix { get; set; }
        [JsonPropertyName("codeGMUD2_2")] public string codeGMUD2_2 { get; set; }
        [JsonPropertyName("deafaultMSRPInEuroVsOther")] public decimal deafaultMSRPInEuroVsOther { get; set; }
        [JsonPropertyName("PDUCMOInEuroVsOther")] public decimal PDUCMOInEuroVsOther { get; set; }
        [JsonPropertyName("PDULMOInEuroVsOther")] public decimal PDULMOInEuroVsOther { get; set; }
        [JsonPropertyName("PDUTotalInEuroVsOther")] public decimal PDUTotalInEuroVsOther { get; set; }
        [JsonPropertyName("CostCMOInEuroVsOther")] public decimal CostCMOInEuroVsOther { get; set; }
        [JsonPropertyName("CostLMOInEuroVsOther")] public decimal CostLMOInEuroVsOther { get; set; }
        [JsonPropertyName("CostTotalInEuroVsOther")] public decimal CostTotalInEuroVsOther { get; set; }
        [JsonPropertyName("rbcfInEuroGSFBased")] public decimal rbcfInEuroGSFBased { get; set; }
        [JsonPropertyName("rbcfInPercentGSFBased")] public decimal rbcfInPercentGSFBased { get; set; }
        [JsonPropertyName("timeStamp")] public string timeStamp { get; set; }
        [JsonPropertyName("officialPrices")] public decimal officialPrices { get; set; }
        [JsonPropertyName("latestTimeStampWorkingVersion")] public decimal latestTimeStampWorkingVersion { get; set; }
        [JsonPropertyName("latestTimeStampOfficialVersion")] public decimal latestTimeStampOfficialVersion { get; set; }
    }

}