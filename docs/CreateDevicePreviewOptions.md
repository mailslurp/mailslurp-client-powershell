# CreateDevicePreviewOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Targets** | **String[]** | Optional device preview target keys to request for rendering. Null leaves target selection to service configuration. Values are forwarded to ESP so newly deployed targets can be used before this API&#39;s enum list is updated. | [optional] 
**AllTargets** | **Boolean** | When true, ask the renderer to include every currently configured target. Cannot be combined with targets. | [optional] 
**Qa** | [**CreateDevicePreviewQaOptions**](CreateDevicePreviewQaOptions) |  | [optional] 
**FolderId** | **String** | Optional folder for organizing the render. Missing folders leave the render unfiled. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateDevicePreviewOptions = Initialize-maislurp-client-powershellCreateDevicePreviewOptions  -Targets null `
 -AllTargets null `
 -Qa null `
 -FolderId null
```

- Convert the resource to JSON
```powershell
$CreateDevicePreviewOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

