namespace Hirundo.Application.ValueObjects
{
    using System.Collections.Generic;
    using System.Text.Json.Serialization;

    public sealed class SummaryResponse
    {
        [JsonPropertyName("data")]
        public List<SummaryResponseRecord> Date { get; set; } = new List<SummaryResponseRecord>();
        //[JsonPropertyName("data1")]
        //public List<SummaryResponseRecord> Date1 { get; set; } = new List<SummaryResponseRecord>();
        //[JsonPropertyName("data2")]
        //public List<SummaryResponseRecord> Date2 { get; set; } = new List<SummaryResponseRecord>();
    }
}
