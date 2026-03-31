# ConnectorSyncRequestResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SyncResult** | [**ConnectorSyncResult**](ConnectorSyncResult) |  | [optional] 
**Exception** | **String** |  | [optional] 
**EventId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectorSyncRequestResult = Initialize-maislurp-client-powershellConnectorSyncRequestResult  -SyncResult null `
 -Exception null `
 -EventId null
```

- Convert the resource to JSON
```powershell
$ConnectorSyncRequestResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

