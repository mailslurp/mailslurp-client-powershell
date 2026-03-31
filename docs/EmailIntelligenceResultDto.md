# EmailIntelligenceResultDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarInput** | **String** | Original input value before normalization. | 
**TotalScore** | **Int32** | Score from 0 to 100 where higher is better. | 
**ScoreBreakdown** | [**EmailIntelligenceScoreBreakdownDto**](EmailIntelligenceScoreBreakdownDto) |  | 
**Signals** | [**EmailIntelligenceSignalsDto**](EmailIntelligenceSignalsDto) |  | 

## Examples

- Prepare the resource
```powershell
$EmailIntelligenceResultDto = Initialize-maislurp-client-powershellEmailIntelligenceResultDto  -VarInput null `
 -TotalScore null `
 -ScoreBreakdown null `
 -Signals null
```

- Convert the resource to JSON
```powershell
$EmailIntelligenceResultDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

