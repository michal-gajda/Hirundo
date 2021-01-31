namespace Hirundo.Infrastructure.Extensions
{
    using System.Text.Json;

    internal static class JsonExtensions
    {
        internal static string ToJson<T>(this T source)
        {
            var options = new JsonSerializerOptions
            {
                WriteIndented = true,
            };

            return JsonSerializer.Serialize(source, options);
        }

        internal static T To<T>(this string source)
        {
            if(string.IsNullOrWhiteSpace(source))
            {
                return default (T);
            }

            var options = new JsonSerializerOptions
            {
                WriteIndented = true,
            };

            return JsonSerializer.Deserialize<T>(source, options);
        }
    }
}
