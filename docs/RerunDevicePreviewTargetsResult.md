# RerunDevicePreviewTargetsResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Results** | [**DevicePreviewRunResultsDto**](DevicePreviewRunResultsDto) |  | 
**RemoteRerunAttempted** | **Boolean** |  | 
**RemoteRerunAccepted** | **Boolean** |  | 
**AffectedTargets** | **Int32** |  | 
**AffectedTasks** | **Int32** |  | 
**Warnings** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$RerunDevicePreviewTargetsResult = Initialize-maislurp-client-powershellRerunDevicePreviewTargetsResult  -Results null `
 -RemoteRerunAttempted null `
 -RemoteRerunAccepted null `
 -AffectedTargets null `
 -AffectedTasks null `
 -Warnings null
```

- Convert the resource to JSON
```powershell
$RerunDevicePreviewTargetsResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

