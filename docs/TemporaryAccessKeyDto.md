# TemporaryAccessKeyDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** |  | 
**ExpiresAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$TemporaryAccessKeyDto = Initialize-maislurp-client-powershellTemporaryAccessKeyDto  -Key null `
 -ExpiresAt null
```

- Convert the resource to JSON
```powershell
$TemporaryAccessKeyDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

