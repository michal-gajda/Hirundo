namespace Hirundo.Application.ValueObjects
{
    using System.Collections.Generic;
    using System.Text.Json.Serialization;

    public sealed class PriceListFinalResponse
    {
        [JsonPropertyName("price_list_final")]
        public List<PriceListFinalResponseRecord> Data { get; set; } = new List<PriceListFinalResponseRecord>();
    }
}
