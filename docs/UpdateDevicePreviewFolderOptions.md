# UpdateDevicePreviewFolderOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | 
**ParentFolderId** | **String** | Parent folder, or null to move to the root. | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateDevicePreviewFolderOptions = Initialize-maislurp-client-powershellUpdateDevicePreviewFolderOptions  -Name null `
 -ParentFolderId null
```

- Convert the resource to JSON
```powershell
$UpdateDevicePreviewFolderOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

