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
    using Hirundo.Infrastructure.Extensions;
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
            command.CommandText = "[dbo].[get_main_table]";
            command.CommandType = CommandType.StoredProcedure;

            var json = request.ToJson();
            command.Parameters.Add("@json", SqlDbType.NVarChar, json.Length).Value = json;
            
            var text = (string)command.ExecuteScalar();

            var data = text.To<List<SummaryResponseRecord>>();
            response.Date = data;
            return await Task.FromResult(response);
        }
    }
}