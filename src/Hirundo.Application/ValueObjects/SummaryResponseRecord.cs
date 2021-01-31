namespace Hirundo.Application.ValueObjects
{
    using System.Text.Json.Serialization;

    public sealed class SummaryResponseRecord
    {
        //[JsonPropertyName("MeasureType_1")]
        public string MeasureType_1 { get; set; }
        //[JsonPropertyName("EURTotalSubmission")]
        public string EURTotalSubmission { get; set; }
        //[JsonPropertyName("EURTotalBudget")]
        public string EURTotalBudget { get; set; }
        //[JsonPropertyName("EURTotalPrevious")]
        public string EURTotalPrevious { get; set; }
        //[JsonPropertyName("EURVehicleSubmission")]
        public string EURVehicleSubmission { get; set; }
        //[JsonPropertyName("EUROptionsSubmission")]
        public string EUROptionsSubmission { get; set; }
        //[JsonPropertyName("EURVehiclePrevious")]
        public string EURVehiclePrevious { get; set; }
        //[JsonPropertyName("EUROptionsPrevious")]
        public string EUROptionsPrevious { get; set; }
    }
}