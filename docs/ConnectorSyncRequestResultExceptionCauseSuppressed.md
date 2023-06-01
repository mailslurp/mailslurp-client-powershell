# ConnectorSyncRequestResultExceptionCauseSuppressed
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarStackTrace** | [**ConnectorSyncRequestResultExceptionCauseStackTrace[]**](ConnectorSyncRequestResultExceptionCauseStackTrace) |  | [optional] 
**Message** | **String** |  | [optional] 
**LocalizedMessage** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectorSyncRequestResultExceptionCauseSuppressed = Initialize-maislurp-client-powershellConnectorSyncRequestResultExceptionCauseSuppressed  -VarStackTrace null `
 -Message null `
 -LocalizedMessage null
```

- Convert the resource to JSON
```powershell
$ConnectorSyncRequestResultExceptionCauseSuppressed | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

