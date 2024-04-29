# ConnectorSyncRequestResultExceptionCauseStackTrace
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClassLoaderName** | **String** |  | [optional] 
**ModuleName** | **String** |  | [optional] 
**ModuleVersion** | **String** |  | [optional] 
**MethodName** | **String** |  | [optional] 
**FileName** | **String** |  | [optional] 
**LineNumber** | **Int32** |  | [optional] 
**ClassName** | **String** |  | [optional] 
**NativeMethod** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectorSyncRequestResultExceptionCauseStackTrace = Initialize-maislurp-client-powershellConnectorSyncRequestResultExceptionCauseStackTrace  -ClassLoaderName null `
 -ModuleName null `
 -ModuleVersion null `
 -MethodName null `
 -FileName null `
 -LineNumber null `
 -ClassName null `
 -NativeMethod null
```

- Convert the resource to JSON
```powershell
$ConnectorSyncRequestResultExceptionCauseStackTrace | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

