# CreateDevicePreviewHtmlImportOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Html** | **String** | HTML body to wrap into a minimal RFC822/MIME message before creating the device preview run. | 
**Subject** | **String** | Optional email subject for the generated MIME. | [optional] 
**VarFrom** | **String** | Optional From address for the generated MIME. | [optional] 
**To** | **String** | Optional To address for the generated MIME. | [optional] 
**SourceAlias** | **String** | Optional source label to attach to the preview run. | [optional] 
**ExternalId** | **String** | Optional external source ID for correlating this import with another system. | [optional] 
**Options** | [**CreateDevicePreviewOptions**](CreateDevicePreviewOptions) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateDevicePreviewHtmlImportOptions = Initialize-maislurp-client-powershellCreateDevicePreviewHtmlImportOptions  -Html null `
 -Subject null `
 -VarFrom null `
 -To null `
 -SourceAlias null `
 -ExternalId null `
 -Options null
```

- Convert the resource to JSON
```powershell
$CreateDevicePreviewHtmlImportOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

