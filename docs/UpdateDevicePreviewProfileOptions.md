# UpdateDevicePreviewProfileOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LocalPart** | **String** |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**Options** | [**CreateDevicePreviewOptions**](CreateDevicePreviewOptions) |  | [optional] 
**Enabled** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateDevicePreviewProfileOptions = Initialize-maislurp-client-powershellUpdateDevicePreviewProfileOptions  -LocalPart null `
 -DisplayName null `
 -Options null `
 -Enabled null
```

- Convert the resource to JSON
```powershell
$UpdateDevicePreviewProfileOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

