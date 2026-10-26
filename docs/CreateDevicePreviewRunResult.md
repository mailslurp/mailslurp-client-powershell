# CreateDevicePreviewRunResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Run** | [**DevicePreviewRunDto**](DevicePreviewRunDto) |  | 
**Created** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$CreateDevicePreviewRunResult = Initialize-maislurp-client-powershellCreateDevicePreviewRunResult  -Run null `
 -Created null
```

- Convert the resource to JSON
```powershell
$CreateDevicePreviewRunResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

