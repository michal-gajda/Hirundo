namespace Hirundo.WebUI.Controllers
{
    using Hirundo.Application.Queries;
    using Hirundo.Application.ValueObjects;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.Extensions.Logging;
    using MediatR;
    using System.Threading.Tasks;
    using System.Threading;

    [ApiController]
    [Route("[controller]")]
    public class DetailedVarianceAnalysisController : ControllerBase
    {
        private readonly ILogger<DetailedVarianceAnalysisController> logger;
        private readonly IMediator mediator;

        public DetailedVarianceAnalysisController(ILogger<DetailedVarianceAnalysisController> logger, IMediator mediator) =>
            (this.logger, this.mediator) = (logger, mediator);

        [HttpGet]
        public async Task<DetailedVarianceAnalysisResponse> Get()
        {
            var request = new GetAllDetailedVarianceAnalysisRequest { };
            this.logger.LogInformation("{Request}", request);

            return await this.mediator.Send(request, CancellationToken.None);
        }

        [HttpPost]
        public async Task<DetailedVarianceAnalysisResponse> Post(GetDetailedVarianceAnalysisRequest request)
        {
            this.logger.LogInformation("{Request}", request);

            return await this.mediator.Send(request, CancellationToken.None);
        }
    }
}
