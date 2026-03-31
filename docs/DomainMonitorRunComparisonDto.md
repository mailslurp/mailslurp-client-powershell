# DomainMonitorRunComparisonDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Baseline** | [**DomainMonitorRunDto**](DomainMonitorRunDto) |  | 
**Current** | [**DomainMonitorRunDto**](DomainMonitorRunDto) |  | 
**HealthScoreDelta** | **Int32** |  | 
**StatusChanged** | **Boolean** |  | 
**PassingChecksDelta** | **Int32** |  | 
**FailingChecksDelta** | **Int32** |  | 
**SpfChanged** | **Boolean** |  | 
**DmarcChanged** | **Boolean** |  | 
**DmarcEnforcedChanged** | **Boolean** |  | 
**MxChanged** | **Boolean** |  | 
**AddedInsights** | **String[]** |  | 
**RemovedInsights** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$DomainMonitorRunComparisonDto = Initialize-maislurp-client-powershellDomainMonitorRunComparisonDto  -Baseline null `
 -Current null `
 -HealthScoreDelta null `
 -StatusChanged null `
 -PassingChecksDelta null `
 -FailingChecksDelta null `
 -SpfChanged null `
 -DmarcChanged null `
 -DmarcEnforcedChanged null `
 -MxChanged null `
 -AddedInsights null `
 -RemovedInsights null
```

- Convert the resource to JSON
```powershell
$DomainMonitorRunComparisonDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

