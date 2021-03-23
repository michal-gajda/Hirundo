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
                //command.CommandText = "[dbo].[get_main_table]";   //Hirundo db
                command.CommandText = "[dbo].[pPT_GetData_SummaryPage]";    //Opel db 
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.AddWithValue("@source_json", request.ToJson());

                using var reader = await command.ExecuteReaderAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                var text = reader.GetString(0);

                this.logger.LogInformation("{text}", text);

                response.Data = text.To<List<SummaryResponseRecord>>();

                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data1 = text.To<List<SummaryResponseRecord1>>();
                
                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data2 = text.To<List<SummaryResponseRecord2>>();

                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data3 = text.To<List<SummaryResponseRecord3>>();

                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data4 = text.To<List<SummaryResponseRecord4>>();

                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data5 = text.To<List<SummaryResponseRecord5>>();

                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data6 = text.To<List<SummaryResponseRecord6>>();

                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data7 = text.To<List<SummaryResponseRecord7>>();

                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data8 = text.To<List<SummaryResponseRecord8>>();

                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data9 = text.To<List<SummaryResponseRecord9>>();
                
            }
            catch (Exception exception)
            {
                this.logger.LogError(exception, exception.Message);
            }

            return await Task.FromResult(response);
        }
    }
}
