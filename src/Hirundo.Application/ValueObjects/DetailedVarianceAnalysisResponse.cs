namespace Hirundo.Application.ValueObjects
{
    using System.Collections.Generic;
    using System.Text.Json.Serialization;

    public sealed class DetailedVarianceAnalysisResponse
    {
        [JsonPropertyName("trimline_vehicle_options_subtab1")]
        public List<DetailedVarianceAnalysisResponseRecord> Data { get; set; } = new List<DetailedVarianceAnalysisResponseRecord>();
        [JsonPropertyName("trimline_vehicle_subtab1")]
        public List<DetailedVarianceAnalysisResponseRecord1> Data1 { get; set; } = new List<DetailedVarianceAnalysisResponseRecord1>();
        [JsonPropertyName("trimline_options_subtab1")]
        public List<DetailedVarianceAnalysisResponseRecord2> Data2 { get; set; } = new List<DetailedVarianceAnalysisResponseRecord2>();
        [JsonPropertyName("engine_vehicle_options_subtab1")]
        public List<DetailedVarianceAnalysisResponseRecord3> Data3 { get; set; } = new List<DetailedVarianceAnalysisResponseRecord3>();
        [JsonPropertyName("engine_vehicle_subtab1")]
        public List<DetailedVarianceAnalysisResponseRecord4> Data4 { get; set; } = new List<DetailedVarianceAnalysisResponseRecord4>();
        [JsonPropertyName("engine_options_subtab1")]
        public List<DetailedVarianceAnalysisResponseRecord5> Data5 { get; set; } = new List<DetailedVarianceAnalysisResponseRecord5>();
        [JsonPropertyName("bodystyle_vehicle_options_subtab1")]
        public List<DetailedVarianceAnalysisResponseRecord6> Data6 { get; set; } = new List<DetailedVarianceAnalysisResponseRecord6>();
        [JsonPropertyName("bodystyle_vehicle_subtab1")]
        public List<DetailedVarianceAnalysisResponseRecord7> Data7 { get; set; } = new List<DetailedVarianceAnalysisResponseRecord7>();
        [JsonPropertyName("bodystyle_options_subtab1")]
        public List<DetailedVarianceAnalysisResponseRecord8> Data8 { get; set; } = new List<DetailedVarianceAnalysisResponseRecord8>();
        [JsonPropertyName("trimline_vehicle_options_subtab2")]
        public List<DetailedVarianceAnalysisResponseRecord9> Data9 { get; set; } = new List<DetailedVarianceAnalysisResponseRecord9>();
        [JsonPropertyName("trimline_vehicle_subtab2")]
        public List<DetailedVarianceAnalysisResponseRecord10> Data10 { get; set; } = new List<DetailedVarianceAnalysisResponseRecord10>();
        [JsonPropertyName("trimline_options_subtab2")]
        public List<DetailedVarianceAnalysisResponseRecord11> Data11 { get; set; } = new List<DetailedVarianceAnalysisResponseRecord11>();
        [JsonPropertyName("engine_vehicle_options_subtab2")]
        public List<DetailedVarianceAnalysisResponseRecord12> Data12 { get; set; } = new List<DetailedVarianceAnalysisResponseRecord12>();
        [JsonPropertyName("engine_vehicle_subtab2")]
        public List<DetailedVarianceAnalysisResponseRecord13> Data13 { get; set; } = new List<DetailedVarianceAnalysisResponseRecord13>();
        [JsonPropertyName("engine_options_subtab2")]
        public List<DetailedVarianceAnalysisResponseRecord14> Data14 { get; set; } = new List<DetailedVarianceAnalysisResponseRecord14>();
        [JsonPropertyName("bodystyle_vehicle_options_subtab2")]
        public List<DetailedVarianceAnalysisResponseRecord15> Data15 { get; set; } = new List<DetailedVarianceAnalysisResponseRecord15>();
        [JsonPropertyName("bodystyle_vehicle_subtab2")]
        public List<DetailedVarianceAnalysisResponseRecord16> Data16 { get; set; } = new List<DetailedVarianceAnalysisResponseRecord16>();
        [JsonPropertyName("bodystyle_options_subtab2")]
        public List<DetailedVarianceAnalysisResponseRecord17> Data17 { get; set; } = new List<DetailedVarianceAnalysisResponseRecord17>();
    }
}
