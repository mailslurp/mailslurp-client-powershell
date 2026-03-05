# CreateDevicePreviewOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Providers** | **String[]** | Optional providers to request for rendering. Defaults to ESP_DEFAULT_PROVIDERS when set, otherwise GMAIL and OUTLOOK. | [optional] 
**IncludeAllConfiguredProviders** | **Boolean** | Optional flag to request all configured providers in ESP. Defaults to false when omitted | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateDevicePreviewOptions = Initialize-maislurp-client-powershellCreateDevicePreviewOptions  -Providers null `
 -IncludeAllConfiguredProviders null
```

- Convert the resource to JSON
```powershell
$CreateDevicePreviewOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

