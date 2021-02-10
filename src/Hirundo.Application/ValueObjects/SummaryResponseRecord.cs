namespace Hirundo.Application.ValueObjects
{
    using System.Text.Json.Serialization;

    public sealed class SummaryResponseRecord
    {
        [JsonPropertyName("CountryName")] public string CountryName { get; set; }
        [JsonPropertyName("CarlineName")] public string CarlineName { get; set; }
        [JsonPropertyName("VehicleBrand")] public string VehicleBrand { get; set; }
        [JsonPropertyName("ModelYear")] public string ModelYear { get; set; }
        [JsonPropertyName("Date1")] public string Date1 { get; set; }
        [JsonPropertyName("DateOfVOG")] public string DateOfVOG { get; set; }
        [JsonPropertyName("FXRate")] public decimal FXRate { get; set; }
        [JsonPropertyName("LocalCurrency")] public string LocalCurrency { get; set; }
        [JsonPropertyName("MeasureType_1")] public string MeasureType_1 { get; set; }
        [JsonPropertyName("EURTotalSubmission")] public decimal EURTotalSubmission { get; set; }
        [JsonPropertyName("EURTotalBudget")] public decimal EURTotalBudget { get; set; }
        [JsonPropertyName("EURTotalPrevious")] public decimal EURTotalPrevious { get; set; }
        [JsonPropertyName("EURVehicleSubmission")] public decimal EURVehicleSubmission { get; set; }
        [JsonPropertyName("EUROptionsSubmission")] public decimal EUROptionsSubmission { get; set; }
        [JsonPropertyName("EURVehiclePrevious")] public decimal EURVehiclePrevious { get; set; }
        [JsonPropertyName("EUROptionsPrevious")] public decimal EUROptionsPrevious { get; set; }
    }
}