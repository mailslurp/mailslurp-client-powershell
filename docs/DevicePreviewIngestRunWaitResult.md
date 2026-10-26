# DevicePreviewIngestRunWaitResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TimedOut** | **Boolean** |  | 
**Runs** | [**DevicePreviewRunDto[]**](DevicePreviewRunDto) |  | 

## Examples

- Prepare the resource
```powershell
$DevicePreviewIngestRunWaitResult = Initialize-maislurp-client-powershellDevicePreviewIngestRunWaitResult  -TimedOut null `
 -Runs null
```

- Convert the resource to JSON
```powershell
$DevicePreviewIngestRunWaitResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

