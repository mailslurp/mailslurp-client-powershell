# CreateDomainMonitorAlertSinkOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Target** | **String** |  | 
**SeverityThreshold** | **String** |  | [optional] 
**Enabled** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateDomainMonitorAlertSinkOptions = Initialize-maislurp-client-powershellCreateDomainMonitorAlertSinkOptions  -Type null `
 -Target null `
 -SeverityThreshold null `
 -Enabled null
```

- Convert the resource to JSON
```powershell
$CreateDomainMonitorAlertSinkOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

