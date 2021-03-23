namespace Hirundo.Application.ValueObjects
{
    using System.Text.Json.Serialization;

    public sealed class InputOptionsResponseRecord
    {
        [JsonPropertyName("countryName")] public string countryName { get; set; }
        [JsonPropertyName("countryGroup")] public string countryGroup { get; set; }
        [JsonPropertyName("carlineName")] public string carlineName { get; set; }
        [JsonPropertyName("vehicleBrand")] public string vehicleBrand { get; set; }
        [JsonPropertyName("modelYear")] public string modelYear { get; set; }
        [JsonPropertyName("dateOfDocument")] public string dateOfDocument { get; set; }
        [JsonPropertyName("dateOfVOG")] public string dateOfVOG { get; set; }
        [JsonPropertyName("fXRate")] public decimal fXRate { get; set; }
        [JsonPropertyName("localCurrency")] public string localCurrency { get; set; }
        [JsonPropertyName("fXRate_PrevMY")] public decimal fXRate_PrevMY { get; set; }
        [JsonPropertyName("selectedFFO")] public string selectedFFO { get; set; }
        [JsonPropertyName("optionCodeRPO")] public string optionCodeRPO { get; set; }
        [JsonPropertyName("optionCodeLCDV")] public string optionCodeLCDV { get; set; }
        [JsonPropertyName("overStandartCMO")] public string overStandartCMO { get; set; }
        [JsonPropertyName("optionDescription")] public string optionDescription { get; set; }
        [JsonPropertyName("trimlineCode")] public string trimlineCode { get; set; }
        [JsonPropertyName("trimlineName")] public string trimlineName { get; set; }
        [JsonPropertyName("aggregatedBodyStyle")] public string aggregatedBodyStyle { get; set; }
        [JsonPropertyName("msrpInLC_CurrMY")] public decimal msrpInLC_CurrMY { get; set; }
        [JsonPropertyName("msrpInEuro_CurrMY")] public decimal msrpInEuro_CurrMY { get; set; }
        [JsonPropertyName("mixPercent_CurrMY")] public decimal mixPercent_CurrMY { get; set; }
        [JsonPropertyName("gsfPercent_CurrMY")] public decimal gsfPercent_CurrMY { get; set; }
        [JsonPropertyName("gsDividedPDUinEuro_CurrMY")] public decimal gsDividedPDUinEuro_CurrMY { get; set; }
        [JsonPropertyName("materialCostInEuro_CurrMY")] public decimal materialCostInEuro_CurrMY { get; set; }
        [JsonPropertyName("foRbcvInEuro_CurrMY")] public decimal foRbcvInEuro_CurrMY { get; set; }
        [JsonPropertyName("foRbcvPercentOfPDU_CurrMY")] public decimal foRbcvPercentOfPDU_CurrMY { get; set; }
        [JsonPropertyName("msrpInLC_PrevMY")] public decimal msrpInLC_PrevMY { get; set; }
        [JsonPropertyName("msrpInEuro_PrevMY")] public decimal msrpInEuro_PrevMY { get; set; }
        [JsonPropertyName("mixPercent_PrevMY")] public decimal mixPercent_PrevMY { get; set; }
        [JsonPropertyName("gsfPercent_PrevMY")] public decimal gsfPercent_PrevMY { get; set; }
        [JsonPropertyName("gsDividedPDUinEuro_PrevMY")] public decimal gsDividedPDUinEuro_PrevMY { get; set; }
        [JsonPropertyName("materialCostInEuro_PrevMY")] public decimal materialCostInEuro_PrevMY { get; set; }
        [JsonPropertyName("foRbcvInEuro_PrevMY")] public decimal foRbcvInEuro_PrevMY { get; set; }
        [JsonPropertyName("foRbcvPercentOfPDU_PrevMY")] public decimal foRbcvPercentOfPDU_PrevMY { get; set; }
        [JsonPropertyName("timeStamp")] public string timeStamp { get; set; }
        [JsonPropertyName("officialPrices")] public decimal officialPrices { get; set; }
        [JsonPropertyName("latestTimeStampWorkingVersion")] public decimal latestTimeStampWorkingVersion { get; set; }
        [JsonPropertyName("latestTimeStampOfficialVersion")] public decimal latestTimeStampOfficialVersion { get; set; }
    }

}