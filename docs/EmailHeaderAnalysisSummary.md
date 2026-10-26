# EmailHeaderAnalysisSummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Spf** | **String** |  | [optional] 
**Dkim** | **String** |  | [optional] 
**Dmarc** | **String** |  | [optional] 
**FromDomain** | **String** |  | [optional] 
**ReturnPathDomain** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailHeaderAnalysisSummary = Initialize-maislurp-client-powershellEmailHeaderAnalysisSummary  -Spf null `
 -Dkim null `
 -Dmarc null `
 -FromDomain null `
 -ReturnPathDomain null
```

- Convert the resource to JSON
```powershell
$EmailHeaderAnalysisSummary | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

