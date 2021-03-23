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
    public class PriceListFinalController : ControllerBase
    {
        private readonly ILogger<PriceListFinalController> logger;
        private readonly IMediator mediator;

        public PriceListFinalController(ILogger<PriceListFinalController> logger, IMediator mediator) =>
            (this.logger, this.mediator) = (logger, mediator);

        [HttpGet]
        public async Task<PriceListFinalResponse> Get()
        {
            var request = new GetAllPriceListFinalRequest { };
            this.logger.LogInformation("{Request}", request);

            return await this.mediator.Send(request, CancellationToken.None);
        }

        [HttpPost]
        public async Task<PriceListFinalResponse> Post(GetPriceListFinalRequest request)
        {
            this.logger.LogInformation("{Request}", request);

            return await this.mediator.Send(request, CancellationToken.None);
        }
    }
}
