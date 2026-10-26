# EmailWarmupContentOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Source** | **String** |  | 
**Subject** | **String** |  | [optional] 
**TextBody** | **String** |  | [optional] 
**HtmlBody** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailWarmupContentOptions = Initialize-maislurp-client-powershellEmailWarmupContentOptions  -Source null `
 -Subject null `
 -TextBody null `
 -HtmlBody null
```

- Convert the resource to JSON
```powershell
$EmailWarmupContentOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

