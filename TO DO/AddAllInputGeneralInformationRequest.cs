namespace Hirundo.Application.Queries
{
    using Hirundo.Application.ValueObjects;
    using MediatR;

    public sealed record GetAllInputGeneralInformationRequest : IRequest<InputGeneralInformationResponse>
    { }
}
