# InboxPlacementDomainMonitorSummaryDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**State** | **String** | Sender-domain monitor state derived while analyzing an inbox placement run | 
**Domain** | **String** |  | [optional] 
**ProviderManaged** | **Boolean** |  | 
**Source** | **String** | Source for an inbox-placement domain monitor summary | 
**Status** | **String** |  | [optional] 
**HealthScore** | **Int32** |  | [optional] 
**TotalChecks** | **Int32** |  | [optional] 
**PassingChecks** | **Int32** |  | [optional] 
**FailingChecks** | **Int32** |  | [optional] 
**SpfOk** | **Boolean** |  | [optional] 
**DmarcOk** | **Boolean** |  | [optional] 
**DmarcEnforced** | **Boolean** |  | [optional] 
**MxOk** | **Boolean** |  | [optional] 
**DkimOk** | **Boolean** |  | [optional] 
**BimiOk** | **Boolean** |  | [optional] 
**MtaStsOk** | **Boolean** |  | [optional] 
**TlsReportingOk** | **Boolean** |  | [optional] 
**BlacklistChecked** | **Boolean** |  | 
**BlacklistOk** | **Boolean** |  | 
**BlacklistListed** | **Boolean** |  | 
**BlacklistStatus** | **String** |  | 
**ObservedSendingIp** | **String** |  | [optional] 
**ScoreVersion** | **String** |  | 
**ScoreScope** | **String** |  | 
**Insights** | **String[]** |  | 
**ErrorMessage** | **String** |  | [optional] 
**MonitorId** | **String** |  | [optional] 
**RunId** | **String** |  | [optional] 
**CheckedAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InboxPlacementDomainMonitorSummaryDto = Initialize-maislurp-client-powershellInboxPlacementDomainMonitorSummaryDto  -State null `
 -Domain null `
 -ProviderManaged null `
 -Source null `
 -Status null `
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
 -BlacklistStatus null `
 -ObservedSendingIp null `
 -ScoreVersion null `
 -ScoreScope null `
 -Insights null `
 -ErrorMessage null `
 -MonitorId null `
 -RunId null `
 -CheckedAt null
```

- Convert the resource to JSON
```powershell
$InboxPlacementDomainMonitorSummaryDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

