# TenantReputationStatusRowDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountRegion** | **String** |  | 
**TenantName** | **String** |  | 
**TenantArn** | **String** |  | [optional] 
**SendingStatus** | **String** |  | [optional] 
**ReputationStatus** | **String** |  | [optional] 
**ReputationPolicy** | **String** |  | [optional] 
**CustomerManagedSendingStatus** | **String** |  | [optional] 
**AwsManagedSendingStatus** | **String** |  | [optional] 
**FindingCount** | **Int32** |  | 
**BounceRate** | **Double** |  | [optional] 
**ComplaintRate** | **Double** |  | [optional] 
**SendLastHour** | **Double** |  | [optional] 
**MetricTimestamp** | **System.DateTime** |  | [optional] 
**VarError** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TenantReputationStatusRowDto = Initialize-maislurp-client-powershellTenantReputationStatusRowDto  -AccountRegion null `
 -TenantName null `
 -TenantArn null `
 -SendingStatus null `
 -ReputationStatus null `
 -ReputationPolicy null `
 -CustomerManagedSendingStatus null `
 -AwsManagedSendingStatus null `
 -FindingCount null `
 -BounceRate null `
 -ComplaintRate null `
 -SendLastHour null `
 -MetricTimestamp null `
 -VarError null
```

- Convert the resource to JSON
```powershell
$TenantReputationStatusRowDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

