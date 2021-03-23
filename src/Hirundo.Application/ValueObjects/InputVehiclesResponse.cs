namespace Hirundo.Application.ValueObjects
{
    using System.Collections.Generic;
    using System.Text.Json.Serialization;

    public sealed class InputVehiclesResponse
    {
        [JsonPropertyName("model_mix")]
        public List<InputVehiclesResponseRecord> Data { get; set; } = new List<InputVehiclesResponseRecord>();
        [JsonPropertyName("engines")]
        public List<InputVehiclesResponseRecord1> Data1 { get; set; } = new List<InputVehiclesResponseRecord1>();
        [JsonPropertyName("trims")]
        public List<InputVehiclesResponseRecord2> Data2 { get; set; } = new List<InputVehiclesResponseRecord2>();
        [JsonPropertyName("body_style")]
        public List<InputVehiclesResponseRecord3> Data3 { get; set; } = new List<InputVehiclesResponseRecord3>();
        [JsonPropertyName("vehicle_type")]
        public List<InputVehiclesResponseRecord4> Data4 { get; set; } = new List<InputVehiclesResponseRecord4>();
        [JsonPropertyName("lcv_size_and_type")]
        public List<InputVehiclesResponseRecord5> Data5 { get; set; } = new List<InputVehiclesResponseRecord5>();
        [JsonPropertyName("drive_axle")]
        public List<InputVehiclesResponseRecord6> Data6 { get; set; } = new List<InputVehiclesResponseRecord6>();
        [JsonPropertyName("drear_axle")]
        public List<InputVehiclesResponseRecord7> Data7 { get; set; } = new List<InputVehiclesResponseRecord7>();
        [JsonPropertyName("length")]
        public List<InputVehiclesResponseRecord8> Data8 { get; set; } = new List<InputVehiclesResponseRecord8>();
        [JsonPropertyName("payload")]
        public List<InputVehiclesResponseRecord9> Data9 { get; set; } = new List<InputVehiclesResponseRecord9>();
        [JsonPropertyName("height")]
        public List<InputVehiclesResponseRecord10> Data10 { get; set; } = new List<InputVehiclesResponseRecord10>();
    }
}
