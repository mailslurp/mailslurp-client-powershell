# DomainMonitorAlertSinkDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**MonitorId** | **String** |  | 
**UserId** | **String** |  | 
**Type** | **String** |  | 
**Target** | **String** |  | 
**SeverityThreshold** | **String** |  | 
**Enabled** | **Boolean** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$DomainMonitorAlertSinkDto = Initialize-maislurp-client-powershellDomainMonitorAlertSinkDto  -Id null `
 -MonitorId null `
 -UserId null `
 -Type null `
 -Target null `
 -SeverityThreshold null `
 -Enabled null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$DomainMonitorAlertSinkDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

