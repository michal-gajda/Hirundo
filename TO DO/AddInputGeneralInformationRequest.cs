namespace Hirundo.Application.Queries
{
    using Hirundo.Application.ValueObjects;
    using MediatR;
    using System.Text.Json.Serialization;

    public sealed record AddInputGeneralInformationRequest : IRequest<InputGeneralInformationResponse>
    {
        [JsonPropertyName("countryName")] public string countryName { get; set; }
        [JsonPropertyName("countryGroup")] public string countryGroup { get; set; }
        [JsonPropertyName("carlineName")] public string carlineName { get; set; }
        [JsonPropertyName("vehicleBrand")] public string vehicleBrand { get; set; }
        [JsonPropertyName("modelYear")] public string modelYear { get; set; }
        [JsonPropertyName("measureType")] public string measureType { get; set; }
        [JsonPropertyName("measureTypeSubcategory")] public string measureTypeSubcategory { get; set; }
        [JsonPropertyName("value")] public string value { get; set; }
        [JsonPropertyName("timeStamp")] public string timeStamp { get; set; }
        [JsonPropertyName("userId")] public string userId { get; set; }
        [JsonPropertyName("officialPrices")] public decimal officialPrices { get; set; }
        [JsonPropertyName("latestTimeStampWorkingVersion")] public decimal latestTimeStampWorkingVersion { get; set; }
        [JsonPropertyName("latestTimeStampOfficialVersion")] public decimal latestTimeStampOfficialVersion { get; set; }
    }
}
