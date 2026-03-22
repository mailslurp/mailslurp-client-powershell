# DnsPropagationResolverResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Resolver** | **String** |  | 
**Records** | **String[]** |  | 
**Responded** | **Boolean** |  | 
**MatchedExpectedValue** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DnsPropagationResolverResult = Initialize-maislurp-client-powershellDnsPropagationResolverResult  -Resolver null `
 -Records null `
 -Responded null `
 -MatchedExpectedValue null
```

- Convert the resource to JSON
```powershell
$DnsPropagationResolverResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

