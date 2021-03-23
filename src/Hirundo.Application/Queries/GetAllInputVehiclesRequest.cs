namespace Hirundo.Application.Queries
{
    using Hirundo.Application.ValueObjects;
    using MediatR;

    public sealed record GetAllInputVehiclesRequest : IRequest<InputVehiclesResponse>
    { }
}
