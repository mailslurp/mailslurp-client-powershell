# AIMessageModelDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Model** | **String** |  | 
**ProviderModel** | **String** |  | 
**EvaluatorVersion** | **String** |  | 
**MovingAlias** | **Boolean** |  | 
**TokenMultiplier** | **Double** |  | 
**SupportedMessageTypes** | **String[]** |  | 
**PricingVersion** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$AIMessageModelDto = Initialize-maislurp-client-powershellAIMessageModelDto  -Model null `
 -ProviderModel null `
 -EvaluatorVersion null `
 -MovingAlias null `
 -TokenMultiplier null `
 -SupportedMessageTypes null `
 -PricingVersion null
```

- Convert the resource to JSON
```powershell
$AIMessageModelDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

