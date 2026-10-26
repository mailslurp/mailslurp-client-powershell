# DomainMonitorSummaryDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Monitor** | [**DomainMonitorDto**](DomainMonitorDto) |  | 
**LatestRun** | [**DomainMonitorRunDto**](DomainMonitorRunDto) |  | [optional] 
**Insights** | [**DomainMonitorInsightsDto**](DomainMonitorInsightsDto) |  | 
**AuthStack** | [**CheckEmailAuthStackResults**](CheckEmailAuthStackResults) |  | 

## Examples

- Prepare the resource
```powershell
$DomainMonitorSummaryDto = Initialize-maislurp-client-powershellDomainMonitorSummaryDto  -Monitor null `
 -LatestRun null `
 -Insights null `
 -AuthStack null
```

- Convert the resource to JSON
```powershell
$DomainMonitorSummaryDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

