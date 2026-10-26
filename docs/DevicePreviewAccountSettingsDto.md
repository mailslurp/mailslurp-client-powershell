# DevicePreviewAccountSettingsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domain** | [**DevicePreviewIngestDomainDto**](DevicePreviewIngestDomainDto) |  | 
**Profiles** | [**DevicePreviewProfileDto[]**](DevicePreviewProfileDto) |  | 

## Examples

- Prepare the resource
```powershell
$DevicePreviewAccountSettingsDto = Initialize-maislurp-client-powershellDevicePreviewAccountSettingsDto  -Domain null `
 -Profiles null
```

- Convert the resource to JSON
```powershell
$DevicePreviewAccountSettingsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

