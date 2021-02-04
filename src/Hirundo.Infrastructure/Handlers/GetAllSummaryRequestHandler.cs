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

    internal sealed class GetAllSummaryRequestHandler : IRequestHandler<GetAllSummaryRequest, SummaryResponse>
    {
        private readonly IConfiguration configuration;
        private readonly ILogger<GetAllSummaryRequestHandler> logger;

        public GetAllSummaryRequestHandler(IConfiguration configuration, ILogger<GetAllSummaryRequestHandler> logger) =>
            (this.configuration, this.logger) = (configuration, logger);

        public async Task<SummaryResponse> Handle(GetAllSummaryRequest request, CancellationToken cancellationToken)
        {
            this.logger.LogInformation("{Request}", request);

            var response = new SummaryResponse();

            try
            {
                using var connection = new SqlConnection(this.configuration.GetConnectionString("DefaultConnection"));
                await connection.OpenAsync(cancellationToken);
            
                using var command = connection.CreateCommand();
                command.CommandText = "[dbo].[get_main_table]";
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.AddWithValue("@source_json", request.ToJson());
                
                using var reader =await  command.ExecuteReaderAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                var text = reader.GetString(0);
                response.Date = text.To<List<SummaryResponseRecord>>();
                
                /*
                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Date1 = text.To<List<SummaryResponseRecord>>();

                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                response.Date2 = reader.GetString(0).To<List<SummaryResponseRecord>>();
                */
            }
            catch(Exception exception)
            {
                this.logger.LogError(exception, exception.Message);
            }

            return await Task.FromResult(response);
        }
    }
}
