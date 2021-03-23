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
    public class InputVehiclesController : ControllerBase
    {
        private readonly ILogger<InputVehiclesController> logger;
        private readonly IMediator mediator;

        public InputVehiclesController(ILogger<InputVehiclesController> logger, IMediator mediator) =>
            (this.logger, this.mediator) = (logger, mediator);

        [HttpGet]
        public async Task<InputVehiclesResponse> Get()
        {
            var request = new GetAllInputVehiclesRequest { };
            this.logger.LogInformation("{Request}", request);

            return await this.mediator.Send(request, CancellationToken.None);
        }

        [HttpPost]
        public async Task<InputVehiclesResponse> Post(GetInputVehiclesRequest request)
        {
            this.logger.LogInformation("{Request}", request);

            return await this.mediator.Send(request, CancellationToken.None);
        }
    }
}
