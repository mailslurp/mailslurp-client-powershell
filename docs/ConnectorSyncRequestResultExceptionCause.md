# ConnectorSyncRequestResultExceptionCause
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarStackTrace** | [**ConnectorSyncRequestResultExceptionCauseStackTrace[]**](ConnectorSyncRequestResultExceptionCauseStackTrace) |  | [optional] 
**Message** | **String** |  | [optional] 
**LocalizedMessage** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectorSyncRequestResultExceptionCause = Initialize-maislurp-client-powershellConnectorSyncRequestResultExceptionCause  -VarStackTrace null `
 -Message null `
 -LocalizedMessage null
```

- Convert the resource to JSON
```powershell
$ConnectorSyncRequestResultExceptionCause | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

