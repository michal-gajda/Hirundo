namespace Hirundo.Application.ValueObjects
{
    using System.Collections.Generic;
    using System.Text.Json.Serialization;

    public sealed class InputOptionsResponse
    {
        [JsonPropertyName("options_prices")]
        public List<InputOptionsResponseRecord> Data { get; set; } = new List<InputOptionsResponseRecord>();
    }
}
