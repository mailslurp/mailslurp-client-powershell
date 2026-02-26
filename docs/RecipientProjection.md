# RecipientProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailAddress** | **String** |  | 
**RawValue** | **String** |  | 
**Name** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RecipientProjection = Initialize-maislurp-client-powershellRecipientProjection  -EmailAddress null `
 -RawValue null `
 -Name null
```

- Convert the resource to JSON
```powershell
$RecipientProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

