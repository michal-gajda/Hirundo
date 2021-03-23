namespace Hirundo.Application.Queries
{
    using Hirundo.Application.ValueObjects;
    using MediatR;

    public sealed record GetAllDetailedVarianceAnalysisRequest : IRequest<DetailedVarianceAnalysisResponse>
    { }
}
