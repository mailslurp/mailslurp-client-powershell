# CreateDevicePreviewShareLinkOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Label** | **String** |  | [optional] 
**ExpiresAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateDevicePreviewShareLinkOptions = Initialize-maislurp-client-powershellCreateDevicePreviewShareLinkOptions  -Label null `
 -ExpiresAt null
```

- Convert the resource to JSON
```powershell
$CreateDevicePreviewShareLinkOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

