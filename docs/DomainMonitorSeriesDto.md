# DomainMonitorSeriesDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MonitorId** | **String** |  | 
**Since** | **System.DateTime** |  | 
**Before** | **System.DateTime** |  | 
**Bucket** | **String** |  | 
**Points** | [**DomainMonitorSeriesPointDto[]**](DomainMonitorSeriesPointDto) |  | 

## Examples

- Prepare the resource
```powershell
$DomainMonitorSeriesDto = Initialize-maislurp-client-powershellDomainMonitorSeriesDto  -MonitorId null `
 -Since null `
 -Before null `
 -Bucket null `
 -Points null
```

- Convert the resource to JSON
```powershell
$DomainMonitorSeriesDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

