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
    public class InputGeneralInformationController : ControllerBase
    {
        private readonly ILogger<InputGeneralInformationController> logger;
        private readonly IMediator mediator;

        public InputGeneralInformationController(ILogger<InputGeneralInformationController> logger, IMediator mediator) =>
            (this.logger, this.mediator) = (logger, mediator);

        [HttpGet]
        public async Task<InputGeneralInformationResponse> Get()
        {
            var request = new GetAllInputGeneralInformationRequest { };
            this.logger.LogInformation("{Request}", request);

            return await this.mediator.Send(request, CancellationToken.None);
        }

        [HttpPost]
        public async Task<InputGeneralInformationResponse> Post(GetInputGeneralInformationRequest request)
        {
            this.logger.LogInformation("{Request}", request);

            return await this.mediator.Send(request, CancellationToken.None);
        }
    }
}
