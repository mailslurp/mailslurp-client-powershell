# DevicePreviewRunWaitResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TimedOut** | **Boolean** |  | 
**Run** | [**DevicePreviewRunDto**](DevicePreviewRunDto) |  | 

## Examples

- Prepare the resource
```powershell
$DevicePreviewRunWaitResult = Initialize-maislurp-client-powershellDevicePreviewRunWaitResult  -TimedOut null `
 -Run null
```

- Convert the resource to JSON
```powershell
$DevicePreviewRunWaitResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

