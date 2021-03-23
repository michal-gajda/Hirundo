namespace Hirundo.Application.Queries
{
    using Hirundo.Application.ValueObjects;
    using MediatR;
    using System.Text.Json.Serialization;

    public sealed record GetPriceListFinalRequest : IRequest<PriceListFinalResponse>
    {
        [JsonPropertyName("country")] public string Country { get; init; }
        [JsonPropertyName("countryGroup")] public string countryGroup { get; init; }
        [JsonPropertyName("carline")] public string Carline { get; init; }
        [JsonPropertyName("vehicleBrand")] public string VehicleBrand { get; init; }
        [JsonPropertyName("modelYear")] public string ModelYear { get; init; }
    }
}
