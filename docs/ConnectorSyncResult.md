# ConnectorSyncResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailSyncCount** | **Int32** |  | 
**Logs** | **String[]** |  | [optional] 
**EmailIds** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectorSyncResult = Initialize-maislurp-client-powershellConnectorSyncResult  -EmailSyncCount null `
 -Logs null `
 -EmailIds null
```

- Convert the resource to JSON
```powershell
$ConnectorSyncResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

