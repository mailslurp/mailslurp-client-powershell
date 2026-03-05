# DevicePreviewFeedbackListDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TotalElements** | **Int64** |  | 
**Page** | **Int32** |  | 
**Size** | **Int32** |  | 
**Items** | [**DevicePreviewFeedbackDto[]**](DevicePreviewFeedbackDto) |  | 

## Examples

- Prepare the resource
```powershell
$DevicePreviewFeedbackListDto = Initialize-maislurp-client-powershellDevicePreviewFeedbackListDto  -TotalElements null `
 -Page null `
 -Size null `
 -Items null
```

- Convert the resource to JSON
```powershell
$DevicePreviewFeedbackListDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

