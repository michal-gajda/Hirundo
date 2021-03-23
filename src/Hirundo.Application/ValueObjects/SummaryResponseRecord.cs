namespace Hirundo.Application.ValueObjects
{
    using System.Text.Json.Serialization;

    public sealed class SummaryResponseRecord
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
        [JsonPropertyName("measureType_1")] public string measureType_1 { get; set; }
        [JsonPropertyName("eurTotalSubmission")] public decimal eurTotalSubmission { get; set; }
        [JsonPropertyName("eurTotalBudget")] public decimal eurTotalBudget { get; set; }
        [JsonPropertyName("eurTotalPrevious")] public decimal eurTotalPrevious { get; set; }
        [JsonPropertyName("eurVehicleSubmission")] public decimal eurVehicleSubmission { get; set; }
        [JsonPropertyName("eurOptionsSubmission")] public decimal eurOptionsSubmission { get; set; }
        [JsonPropertyName("eurVehiclePrevious")] public decimal eurVehiclePrevious { get; set; }
        [JsonPropertyName("eurOptionsPrevious")] public decimal eurOptionsPrevious { get; set; }
        [JsonPropertyName("timeStamp")] public string timeStamp { get; set; }
        [JsonPropertyName("officialPrices")] public decimal officialPrices { get; set; }
        [JsonPropertyName("latestTimeStampWorkingVersion")] public decimal latestTimeStampWorkingVersion { get; set; }
        [JsonPropertyName("latestTimeStampOfficialVersion")] public decimal latestTimeStampOfficialVersion { get; set; }
    }

}