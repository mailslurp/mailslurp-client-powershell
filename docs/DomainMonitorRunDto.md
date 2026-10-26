# DomainMonitorRunDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**MonitorId** | **String** |  | 
**UserId** | **String** |  | 
**Domain** | **String** |  | 
**Status** | **String** |  | 
**TriggerSource** | **String** |  | 
**HealthScore** | **Int32** |  | 
**TotalChecks** | **Int32** |  | 
**PassingChecks** | **Int32** |  | 
**FailingChecks** | **Int32** |  | 
**SpfOk** | **Boolean** |  | 
**DmarcOk** | **Boolean** |  | 
**DmarcEnforced** | **Boolean** |  | 
**MxOk** | **Boolean** |  | 
**DkimOk** | **Boolean** |  | 
**BimiOk** | **Boolean** |  | 
**MtaStsOk** | **Boolean** |  | 
**TlsReportingOk** | **Boolean** |  | 
**BlacklistChecked** | **Boolean** |  | 
**BlacklistOk** | **Boolean** |  | 
**BlacklistListed** | **Boolean** |  | 
**Evidence** | [**DomainMonitorRunEvidenceDto**](DomainMonitorRunEvidenceDto) |  | [optional] 
**Insights** | **String[]** |  | 
**ErrorMessage** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$DomainMonitorRunDto = Initialize-maislurp-client-powershellDomainMonitorRunDto  -Id null `
 -MonitorId null `
 -UserId null `
 -Domain null `
 -Status null `
 -TriggerSource null `
 -HealthScore null `
 -TotalChecks null `
 -PassingChecks null `
 -FailingChecks null `
 -SpfOk null `
 -DmarcOk null `
 -DmarcEnforced null `
 -MxOk null `
 -DkimOk null `
 -BimiOk null `
 -MtaStsOk null `
 -TlsReportingOk null `
 -BlacklistChecked null `
 -BlacklistOk null `
 -BlacklistListed null `
 -Evidence null `
 -Insights null `
 -ErrorMessage null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$DomainMonitorRunDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

