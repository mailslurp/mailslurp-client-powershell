# DomainMonitorDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**Domain** | **String** |  | 
**Name** | **String** |  | [optional] 
**IntervalSeconds** | **Int64** |  | [optional] 
**Enabled** | **Boolean** |  | 
**SchedulingEnabled** | **Boolean** |  | 
**LastStatus** | **String** |  | [optional] 
**HealthScore** | **Int32** |  | [optional] 
**LastRunAt** | **System.DateTime** |  | [optional] 
**NextRunAt** | **System.DateTime** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$DomainMonitorDto = Initialize-maislurp-client-powershellDomainMonitorDto  -Id null `
 -UserId null `
 -Domain null `
 -Name null `
 -IntervalSeconds null `
 -Enabled null `
 -SchedulingEnabled null `
 -LastStatus null `
 -HealthScore null `
 -LastRunAt null `
 -NextRunAt null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$DomainMonitorDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

