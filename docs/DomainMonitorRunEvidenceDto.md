# DomainMonitorRunEvidenceDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ScoreVersion** | **String** |  | 
**ScoreScope** | **String** |  | 
**ObservedMessageReceivedAt** | **System.DateTime** |  | [optional] 
**OutboundIp** | **String** |  | [optional] 
**OutboundIpSource** | **String** |  | [optional] 
**ObservedDkimSelector** | **String** |  | [optional] 
**ObservedSpfStatus** | **String** |  | [optional] 
**ObservedDkimStatus** | **String** |  | [optional] 
**ObservedDmarcStatus** | **String** |  | [optional] 
**Blacklist** | [**CheckEmailBlacklistResults**](CheckEmailBlacklistResults) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainMonitorRunEvidenceDto = Initialize-maislurp-client-powershellDomainMonitorRunEvidenceDto  -ScoreVersion null `
 -ScoreScope null `
 -ObservedMessageReceivedAt null `
 -OutboundIp null `
 -OutboundIpSource null `
 -ObservedDkimSelector null `
 -ObservedSpfStatus null `
 -ObservedDkimStatus null `
 -ObservedDmarcStatus null `
 -Blacklist null
```

- Convert the resource to JSON
```powershell
$DomainMonitorRunEvidenceDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

