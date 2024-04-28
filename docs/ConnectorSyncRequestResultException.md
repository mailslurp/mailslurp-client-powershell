# ConnectorSyncRequestResultException
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Cause** | [**ConnectorSyncRequestResultExceptionCause**](ConnectorSyncRequestResultExceptionCause) |  | [optional] 
**VarStackTrace** | [**ConnectorSyncRequestResultExceptionCauseStackTrace[]**](ConnectorSyncRequestResultExceptionCauseStackTrace) |  | [optional] 
**Message** | **String** |  | [optional] 
**Suppressed** | [**ConnectorSyncRequestResultExceptionCause[]**](ConnectorSyncRequestResultExceptionCause) |  | [optional] 
**LocalizedMessage** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectorSyncRequestResultException = Initialize-maislurp-client-powershellConnectorSyncRequestResultException  -Cause null `
 -VarStackTrace null `
 -Message null `
 -Suppressed null `
 -LocalizedMessage null
```

- Convert the resource to JSON
```powershell
$ConnectorSyncRequestResultException | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

