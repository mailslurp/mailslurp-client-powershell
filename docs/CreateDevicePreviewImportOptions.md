# CreateDevicePreviewImportOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RawEmailBase64** | **String** | Base64 encoded RFC822/MIME email contents. This should be the full raw email including headers and body, such as the bytes from an &#x60;.eml&#x60; file. | 
**SourceAlias** | **String** | Optional source label to attach to the preview run. | [optional] 
**ExternalId** | **String** | Optional external source ID for correlating this import with another system. | [optional] 
**Options** | [**CreateDevicePreviewOptions**](CreateDevicePreviewOptions) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateDevicePreviewImportOptions = Initialize-maislurp-client-powershellCreateDevicePreviewImportOptions  -RawEmailBase64 null `
 -SourceAlias null `
 -ExternalId null `
 -Options null
```

- Convert the resource to JSON
```powershell
$CreateDevicePreviewImportOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

