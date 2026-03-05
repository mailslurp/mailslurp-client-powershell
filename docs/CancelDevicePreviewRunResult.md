# CancelDevicePreviewRunResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Run** | [**DevicePreviewRunDto**](DevicePreviewRunDto) |  | 
**RemoteCancelAttempted** | **Boolean** |  | 
**RemoteCancelAccepted** | **Boolean** |  | 
**Warning** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CancelDevicePreviewRunResult = Initialize-maislurp-client-powershellCancelDevicePreviewRunResult  -Run null `
 -RemoteCancelAttempted null `
 -RemoteCancelAccepted null `
 -Warning null
```

- Convert the resource to JSON
```powershell
$CancelDevicePreviewRunResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

