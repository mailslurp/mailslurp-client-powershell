# EmailContentMatchResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarMatches** | **String[]** |  | 
**Pattern** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$EmailContentMatchResult = Initialize-maislurp-client-powershellEmailContentMatchResult  -VarMatches null `
 -Pattern null
```

- Convert the resource to JSON
```powershell
$EmailContentMatchResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

