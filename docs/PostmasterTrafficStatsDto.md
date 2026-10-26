# PostmasterTrafficStatsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Domain** | **String** |  | 
**ReportDate** | **System.DateTime** |  | [optional] 
**UserReportedSpamRatio** | **Double** |  | [optional] 
**DomainReputation** | **String** |  | [optional] 
**IpReputations** | [**PostmasterIpReputationDto[]**](PostmasterIpReputationDto) |  | 
**SpfSuccessRatio** | **Double** |  | [optional] 
**DkimSuccessRatio** | **Double** |  | [optional] 
**DmarcSuccessRatio** | **Double** |  | [optional] 
**OutboundEncryptionRatio** | **Double** |  | [optional] 
**InboundEncryptionRatio** | **Double** |  | [optional] 
**Payload** | [**SystemCollectionsHashtable**]() |  | 

## Examples

- Prepare the resource
```powershell
$PostmasterTrafficStatsDto = Initialize-maislurp-client-powershellPostmasterTrafficStatsDto  -Name null `
 -Domain null `
 -ReportDate null `
 -UserReportedSpamRatio null `
 -DomainReputation null `
 -IpReputations null `
 -SpfSuccessRatio null `
 -DkimSuccessRatio null `
 -DmarcSuccessRatio null `
 -OutboundEncryptionRatio null `
 -InboundEncryptionRatio null `
 -Payload null
```

- Convert the resource to JSON
```powershell
$PostmasterTrafficStatsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

