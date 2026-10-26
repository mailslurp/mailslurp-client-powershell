# MoveDevicePreviewRunsOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RunIds** | **String[]** |  | 
**FolderId** | **String** | Destination folder, or null for Unfiled. | [optional] 

## Examples

- Prepare the resource
```powershell
$MoveDevicePreviewRunsOptions = Initialize-maislurp-client-powershellMoveDevicePreviewRunsOptions  -RunIds null `
 -FolderId null
```

- Convert the resource to JSON
```powershell
$MoveDevicePreviewRunsOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

