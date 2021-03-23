namespace Hirundo.Application.ValueObjects
{
    using System.Collections.Generic;
    using System.Text.Json.Serialization;

    public sealed class SummaryResponse
    {
        [JsonPropertyName("financial_summary")]
        public List<SummaryResponseRecord> Data { get; set; } = new List<SummaryResponseRecord>();
        [JsonPropertyName("mix_changes_trimline")]
        public List<SummaryResponseRecord1> Data1 { get; set; } = new List<SummaryResponseRecord1>();
        [JsonPropertyName("mix_changes_engine")]
        public List<SummaryResponseRecord2> Data2 { get; set; } = new List<SummaryResponseRecord2>();
        [JsonPropertyName("mix_changes_bodystyle")]
        public List<SummaryResponseRecord3> Data3 { get; set; } = new List<SummaryResponseRecord3>();
        [JsonPropertyName("variance_analysis_RBCV")]
        public List<SummaryResponseRecord4> Data4 { get; set; } = new List<SummaryResponseRecord4>();
        [JsonPropertyName("variance_analysis_there_of")]
        public List<SummaryResponseRecord5> Data5 { get; set; } = new List<SummaryResponseRecord5>();
         [JsonPropertyName("variance_analysis_ffo")]
        public List<SummaryResponseRecord6> Data6 { get; set; } = new List<SummaryResponseRecord6>();
         [JsonPropertyName("variance_analysis_volume")]
        public List<SummaryResponseRecord7> Data7 { get; set; } = new List<SummaryResponseRecord7>();
         [JsonPropertyName("variance_analysis_economics")]
        public List<SummaryResponseRecord8> Data8 { get; set; } = new List<SummaryResponseRecord8>();
        [JsonPropertyName("content_changes")]
        public List<SummaryResponseRecord9> Data9 { get; set; } = new List<SummaryResponseRecord9>();
    }
}
