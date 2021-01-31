namespace Hirundo.Application.ValueObjects
{
    using System.Collections.Generic;
    using System.Text.Json.Serialization;

    public sealed class SummaryResponse
    {
        [JsonPropertyName("data")]
        public List<SummaryResponseRecord> Date { get; set; } = new List<SummaryResponseRecord>();
    }
}