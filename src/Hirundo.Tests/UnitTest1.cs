namespace Hirundo.Tests
{
    using System.Collections.Generic;
    using FluentAssertions;
    using Hirundo.Application.Queries;
    using Hirundo.Application.ValueObjects;
    using Hirundo.Infrastructure.Extensions;
    using Microsoft.VisualStudio.TestTools.UnitTesting;

    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void ShouldBeConvertable()
        {
            var data = "{\"country\":\"Switzerland\",\"carline\":\"Mokka\",\"vehicleBrand\":\"Opel\",\"modelYear\":\"21.0\"}";
            var result = data.To<GetSummaryRequest>();
            result.Should().NotBeNull();
        }

        [TestMethod]
        public void ShouldBeConvertable2()
        {
            var data = "{\"country\":\"Switzerland\",\"carline\":\"Mokka\",\"vehicleBrand\":\"Opel\",\"modelYear\":\"21.0\"}";
            var result = data.To<List<SummaryResponseRecord>>();
            result.Should().NotBeNull();
        }
    }
}
