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

    internal sealed class GetDetailedVarianceAnalysisRequestHandler : IRequestHandler<GetDetailedVarianceAnalysisRequest, DetailedVarianceAnalysisResponse>
    {
        private readonly IConfiguration configuration;
        private readonly ILogger<GetDetailedVarianceAnalysisRequestHandler> logger;

        public GetDetailedVarianceAnalysisRequestHandler(IConfiguration configuration, ILogger<GetDetailedVarianceAnalysisRequestHandler> logger) =>
            (this.configuration, this.logger) = (configuration, logger);

        public async Task<DetailedVarianceAnalysisResponse> Handle(GetDetailedVarianceAnalysisRequest request, CancellationToken cancellationToken)
        {
            var response = new DetailedVarianceAnalysisResponse();
            
            try 
            {

                using var connection = new SqlConnection(this.configuration.GetConnectionString("DefaultConnection"));
                await connection.OpenAsync(cancellationToken);

                using var command = connection.CreateCommand();
                command.CommandText = "[dbo].[pPT_GetData_DetailedVarianceAnalysisPage]";    //Opel db        

                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.AddWithValue("@source_json", request.ToJson());

                using var reader = await command.ExecuteReaderAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                var text = reader.GetString(0);

                this.logger.LogInformation("{text}", text);

                response.Data = text.To<List<DetailedVarianceAnalysisResponseRecord>>();

                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data1 = text.To<List<DetailedVarianceAnalysisResponseRecord1>>();
                
                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data2 = text.To<List<DetailedVarianceAnalysisResponseRecord2>>();
                
                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data3 = text.To<List<DetailedVarianceAnalysisResponseRecord3>>();

                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data4 = text.To<List<DetailedVarianceAnalysisResponseRecord4>>();

                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data5 = text.To<List<DetailedVarianceAnalysisResponseRecord5>>();

                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data6 = text.To<List<DetailedVarianceAnalysisResponseRecord6>>();

                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data7 = text.To<List<DetailedVarianceAnalysisResponseRecord7>>();

                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data8 = text.To<List<DetailedVarianceAnalysisResponseRecord8>>();

                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data9 = text.To<List<DetailedVarianceAnalysisResponseRecord9>>();

                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data10 = text.To<List<DetailedVarianceAnalysisResponseRecord10>>();

                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data11 = text.To<List<DetailedVarianceAnalysisResponseRecord11>>();

                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data12 = text.To<List<DetailedVarianceAnalysisResponseRecord12>>();

                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data13 = text.To<List<DetailedVarianceAnalysisResponseRecord13>>();

                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data14 = text.To<List<DetailedVarianceAnalysisResponseRecord14>>();

                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data15 = text.To<List<DetailedVarianceAnalysisResponseRecord15>>();

                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data16 = text.To<List<DetailedVarianceAnalysisResponseRecord16>>();

                await reader.NextResultAsync(cancellationToken);
                await reader.ReadAsync(cancellationToken);
                text = reader.GetString(0);
                response.Data17 = text.To<List<DetailedVarianceAnalysisResponseRecord17>>();
            }
            catch (Exception exception)
            {
                this.logger.LogError(exception, exception.Message);
            } 
            return await Task.FromResult(response);
        }
    }
}