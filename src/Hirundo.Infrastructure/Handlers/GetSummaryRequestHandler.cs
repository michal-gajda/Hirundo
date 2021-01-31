namespace Hirundo.Infrastructure.Handlers
{
    using System.Collections.Generic;
    using System.Data;
    using System.Data.SqlClient;
    using System.Text.Json;
    using System.Threading;
    using System.Threading.Tasks;
    using Hirundo.Application.Queries;
    using Hirundo.Application.ValueObjects;
    using MediatR;
    using Microsoft.Extensions.Configuration;

    internal sealed class GetSummaryRequestHandler : IRequestHandler<GetSummaryRequest, SummaryResponse>
    {
        private readonly IConfiguration configuration;
        public GetSummaryRequestHandler(IConfiguration configuration) =>
            this.configuration = configuration;

        public async Task<SummaryResponse> Handle(GetSummaryRequest request, CancellationToken cancellationToken)
        {
            var response = new SummaryResponse();

            using var connection = new SqlConnection(this.configuration.GetConnectionString("DefaultConnection"));
            connection.Open();
            using var command = connection.CreateCommand();
            command.CommandText = "[dbo].[mojaprocedure]";
            command.CommandType = CommandType.StoredProcedure;

            var json = JsonSerializer.Serialize(request);
            command.Parameters.Add("@json", SqlDbType.NVarChar, json.Length).Value = json;
            var text = (string)command.ExecuteScalar();

            var data = JsonSerializer.Deserialize<List<SummaryResponseRecord>>(text);
            response.Date = data;
            return await Task.FromResult(response);
        }
    }
}