namespace Hirundo.Application.Queries
{
    using Hirundo.Application.ValueObjects;
    using MediatR;

    public sealed record GetAllSummaryRequest : IRequest<SummaryResponse>
    { }
}
