# RerunDevicePreviewTargetsOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TargetIds** | **String[]** | Device preview target IDs to rerun within the existing run. Use target IDs from DevicePreviewRunResultsDto.targets. | 
**FailedOnly** | **Boolean** | When true, only selected targets in failed terminal states are rerun. Set false to rerun any selected target; a target that already completed successfully uses its credit cost again. Defaults to true. | 

## Examples

- Prepare the resource
```powershell
$RerunDevicePreviewTargetsOptions = Initialize-maislurp-client-powershellRerunDevicePreviewTargetsOptions  -TargetIds null `
 -FailedOnly null
```

- Convert the resource to JSON
```powershell
$RerunDevicePreviewTargetsOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

