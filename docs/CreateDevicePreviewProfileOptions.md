# CreateDevicePreviewProfileOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LocalPart** | **String** |  | 
**DisplayName** | **String** |  | [optional] 
**Options** | [**CreateDevicePreviewOptions**](CreateDevicePreviewOptions) |  | [optional] 
**Enabled** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateDevicePreviewProfileOptions = Initialize-maislurp-client-powershellCreateDevicePreviewProfileOptions  -LocalPart null `
 -DisplayName null `
 -Options null `
 -Enabled null
```

- Convert the resource to JSON
```powershell
$CreateDevicePreviewProfileOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

