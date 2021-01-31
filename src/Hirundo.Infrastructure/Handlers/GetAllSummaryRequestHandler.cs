namespace Hirundo.Infrastructure.Handlers
{
    using System.Threading;
    using System.Threading.Tasks;
    using Hirundo.Application.Queries;
    using Hirundo.Application.ValueObjects;
    using MediatR;

    internal sealed class GetAllSummaryRequestHandler : IRequestHandler<GetAllSummaryRequest, SummaryResponse>
    {
        public async Task<SummaryResponse> Handle(GetAllSummaryRequest request, CancellationToken cancellationToken)
        {
            var response = new SummaryResponse();

            response.Date.Add(new SummaryResponseRecord
            {
                MeasureType_1 = "Volume",
                EURTotalSubmission = "1000.0",
                EURTotalBudget = "1000.0",
                EURTotalPrevious = "1000.0",
                EURVehicleSubmission = "1000.0",
                EUROptionsSubmission = "1000.0",
                EURVehiclePrevious = "1000.0",
                EUROptionsPrevious = "1000.0",
            });

            return await Task.FromResult(response);
        }
    }
}
