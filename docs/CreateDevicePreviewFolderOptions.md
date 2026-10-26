# CreateDevicePreviewFolderOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | 
**ParentFolderId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateDevicePreviewFolderOptions = Initialize-maislurp-client-powershellCreateDevicePreviewFolderOptions  -Name null `
 -ParentFolderId null
```

- Convert the resource to JSON
```powershell
$CreateDevicePreviewFolderOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

