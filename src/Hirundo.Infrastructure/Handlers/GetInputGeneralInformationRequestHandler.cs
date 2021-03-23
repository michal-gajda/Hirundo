namespace Hirundo.Infrastructure.Handlers
{
    using System;
    using System.Collections.Generic;
    using System.Data;
    using System.Data.SqlClient;
    using System.Threading;
    using System.Threading.Tasks;
    using Hirundo.Application.Queries;
    using Hirundo.Application.ValueObjects;
    using Hirundo.Infrastructure.Extensions;
    using MediatR;
    using Microsoft.Extensions.Configuration;
    using Microsoft.Extensions.Logging;

    internal sealed class GetInputGeneralInformationRequestHandler : IRequestHandler<GetInputGeneralInformationRequest, InputGeneralInformationResponse>
    {
        private readonly IConfiguration configuration;
        private readonly ILogger<GetInputGeneralInformationRequestHandler> logger;

        public GetInputGeneralInformationRequestHandler(IConfiguration configuration, ILogger<GetInputGeneralInformationRequestHandler> logger) =>
            (this.configuration, this.logger) = (configuration, logger);

        public async Task<InputGeneralInformationResponse> Handle(GetInputGeneralInformationRequest request, CancellationToken cancellationToken)
        {
            var response = new InputGeneralInformationResponse();
            
            try 
            {

                using var connection = new SqlConnection(this.configuration.GetConnectionString("DefaultConnection"));
                await connection.OpenAsync(cancellationToken);

                using var command = connection.CreateCommand();
                command.CommandText = "[dbo].[pPT_GetData_GeneralInformationPage]";    //Opel db        

                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.AddWithValue("@source_json", request.ToJson());

                using var reader = await command.ExecuteReaderAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                var text = reader.GetString(0);

                this.logger.LogInformation("{text}", text);

                response.Data = text.To<List<InputGeneralInformationResponseRecord>>();

                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data1 = text.To<List<InputGeneralInformationResponseRecord1>>();
            }
            catch (Exception exception)
            {
                this.logger.LogError(exception, exception.Message);
            } 
            return await Task.FromResult(response);
        }
    }
}