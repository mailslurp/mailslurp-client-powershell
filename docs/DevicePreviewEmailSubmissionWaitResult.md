# DevicePreviewEmailSubmissionWaitResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TimedOut** | **Boolean** |  | 
**Submissions** | [**DevicePreviewEmailSubmissionDto[]**](DevicePreviewEmailSubmissionDto) |  | 

## Examples

- Prepare the resource
```powershell
$DevicePreviewEmailSubmissionWaitResult = Initialize-maislurp-client-powershellDevicePreviewEmailSubmissionWaitResult  -TimedOut null `
 -Submissions null
```

- Convert the resource to JSON
```powershell
$DevicePreviewEmailSubmissionWaitResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

