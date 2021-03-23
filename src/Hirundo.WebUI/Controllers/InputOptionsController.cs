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
    public class InputOptionsController : ControllerBase
    {
        private readonly ILogger<InputOptionsController> logger;
        private readonly IMediator mediator;

        public InputOptionsController(ILogger<InputOptionsController> logger, IMediator mediator) =>
            (this.logger, this.mediator) = (logger, mediator);

        [HttpGet]
        public async Task<InputOptionsResponse> Get()
        {
            var request = new GetAllInputOptionsRequest { };
            this.logger.LogInformation("{Request}", request);

            return await this.mediator.Send(request, CancellationToken.None);
        }

        [HttpPost]
        public async Task<InputOptionsResponse> Post(GetInputOptionsRequest request)
        {
            this.logger.LogInformation("{Request}", request);

            return await this.mediator.Send(request, CancellationToken.None);
        }
    }
}
