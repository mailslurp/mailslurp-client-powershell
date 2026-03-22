# CreateConnectorSyncSettingsOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SyncEnabled** | **Boolean** | Enable automatic background sync | [optional] 
**SyncScheduleType** | **String** | Sync schedule type | [optional] 
**SyncInterval** | **Int32** | Sync interval in minutes | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateConnectorSyncSettingsOptions = Initialize-maislurp-client-powershellCreateConnectorSyncSettingsOptions  -SyncEnabled null `
 -SyncScheduleType null `
 -SyncInterval null
```

- Convert the resource to JSON
```powershell
$CreateConnectorSyncSettingsOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

