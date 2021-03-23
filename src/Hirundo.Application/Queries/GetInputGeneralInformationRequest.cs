namespace Hirundo.Application.Queries
{
    using Hirundo.Application.ValueObjects;
    using MediatR;
    using System.Text.Json.Serialization;

    public sealed record GetInputGeneralInformationRequest : IRequest<InputGeneralInformationResponse>
    {
        [JsonPropertyName("country")] public string country { get; init; }
        [JsonPropertyName("countryGroup")] public string countryGroup { get; init; }
        [JsonPropertyName("carline")] public string carline { get; init; }
        [JsonPropertyName("vehicleBrand")] public string vehicleBrand { get; init; }
        [JsonPropertyName("modelYear")] public string modelYear { get; init; }
    }
}
