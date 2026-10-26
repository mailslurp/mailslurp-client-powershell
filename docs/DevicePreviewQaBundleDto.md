# DevicePreviewQaBundleDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**RunId** | **String** |  | 
**UserId** | **String** |  | 
**RequestedEmailAudit** | **Boolean** |  | 
**RequestedDomainMonitor** | **Boolean** |  | 
**Status** | **String** |  | 
**EmailAuditStatus** | **String** |  | 
**DomainMonitorStatus** | **String** |  | 
**EmailAuditId** | **String** |  | [optional] 
**DomainMonitorId** | **String** |  | [optional] 
**DomainMonitorRunId** | **String** |  | [optional] 
**SenderDomain** | **String** |  | [optional] 
**EmailAuditMessage** | **String** |  | [optional] 
**DomainMonitorMessage** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$DevicePreviewQaBundleDto = Initialize-maislurp-client-powershellDevicePreviewQaBundleDto  -Id null `
 -RunId null `
 -UserId null `
 -RequestedEmailAudit null `
 -RequestedDomainMonitor null `
 -Status null `
 -EmailAuditStatus null `
 -DomainMonitorStatus null `
 -EmailAuditId null `
 -DomainMonitorId null `
 -DomainMonitorRunId null `
 -SenderDomain null `
 -EmailAuditMessage null `
 -DomainMonitorMessage null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$DevicePreviewQaBundleDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

