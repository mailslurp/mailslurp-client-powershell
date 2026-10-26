# DeliverabilitySimulationJobConfigDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SenderInboxId** | **String** |  | [optional] 
**SenderPhoneId** | **String** |  | [optional] 
**EmailSubject** | **String** |  | [optional] 
**EmailFromOverride** | **String** |  | [optional] 
**EmailBodyTemplate** | **String** |  | [optional] 
**SmsBodyTemplate** | **String** |  | [optional] 
**DelayMs** | **Int64** |  | 
**BatchSize** | **Int32** |  | 
**SendsPerTarget** | **Int64** |  | 

## Examples

- Prepare the resource
```powershell
$DeliverabilitySimulationJobConfigDto = Initialize-maislurp-client-powershellDeliverabilitySimulationJobConfigDto  -SenderInboxId null `
 -SenderPhoneId null `
 -EmailSubject null `
 -EmailFromOverride null `
 -EmailBodyTemplate null `
 -SmsBodyTemplate null `
 -DelayMs null `
 -BatchSize null `
 -SendsPerTarget null
```

- Convert the resource to JSON
```powershell
$DeliverabilitySimulationJobConfigDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

