namespace Hirundo.Infrastructure.Handlers
{
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

    internal sealed class GetSummaryRequestHandler : IRequestHandler<GetSummaryRequest, SummaryResponse>
    {
        private readonly IConfiguration configuration;
        private readonly ILogger<GetSummaryRequestHandler> logger;

        public GetSummaryRequestHandler(IConfiguration configuration, ILogger<GetSummaryRequestHandler> logger) =>
            (this.configuration, this.logger) = (configuration, logger);

        public async Task<SummaryResponse> Handle(GetSummaryRequest request, CancellationToken cancellationToken)
        {
            var response = new SummaryResponse();

            using var connection = new SqlConnection(this.configuration.GetConnectionString("DefaultConnection"));
            await connection.OpenAsync(cancellationToken);

            using var command = connection.CreateCommand();
            command.CommandText = "[dbo].[get_main_table]";
            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.AddWithValue("@source_json", request.ToJson());

            var text = await command.ExecuteScalarAsync(cancellationToken) as string;

            response.Date = text.To<List<SummaryResponseRecord>>();
            return await Task.FromResult(response);
        }
    }
}