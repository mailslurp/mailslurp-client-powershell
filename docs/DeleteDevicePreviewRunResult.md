# DeleteDevicePreviewRunResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RunId** | **String** |  | 
**Deleted** | **Boolean** |  | 
**RemoteCleanupAttempted** | **Boolean** |  | 
**RemoteCleanupSucceeded** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$DeleteDevicePreviewRunResult = Initialize-maislurp-client-powershellDeleteDevicePreviewRunResult  -RunId null `
 -Deleted null `
 -RemoteCleanupAttempted null `
 -RemoteCleanupSucceeded null
```

- Convert the resource to JSON
```powershell
$DeleteDevicePreviewRunResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

