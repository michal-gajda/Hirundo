namespace Hirundo.Application.ValueObjects
{
    using System.Collections.Generic;
    using System.Text.Json.Serialization;

    public sealed class InputGeneralInformationResponse
    {
        [JsonPropertyName("input_general")]
        public List<InputGeneralInformationResponseRecord> Data { get; set; } = new List<InputGeneralInformationResponseRecord>();
        [JsonPropertyName("input_other")]
        public List<InputGeneralInformationResponseRecord1> Data1 { get; set; } = new List<InputGeneralInformationResponseRecord1>();
    }
}
