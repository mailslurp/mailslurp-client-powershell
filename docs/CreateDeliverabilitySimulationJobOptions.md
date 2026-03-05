# CreateDeliverabilitySimulationJobOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SenderInboxId** | **String** | Sender inbox ID for INBOX scope tests | [optional] 
**SenderPhoneId** | **String** | Sender phone ID for PHONE scope tests | [optional] 
**Email** | [**DeliverabilitySimulationEmailOptions**](DeliverabilitySimulationEmailOptions) |  | [optional] 
**Sms** | [**DeliverabilitySimulationSmsOptions**](DeliverabilitySimulationSmsOptions) |  | [optional] 
**DelayMs** | **Int64** | Delay between individual sends in milliseconds | [optional] 
**BatchSize** | **Int32** | Maximum sends processed per scheduler batch | [optional] 
**SendsPerTarget** | **Int64** | Optional fixed sends per target. If omitted this is derived from test expectations. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateDeliverabilitySimulationJobOptions = Initialize-maislurp-client-powershellCreateDeliverabilitySimulationJobOptions  -SenderInboxId null `
 -SenderPhoneId null `
 -Email null `
 -Sms null `
 -DelayMs 250 `
 -BatchSize 10 `
 -SendsPerTarget 1
```

- Convert the resource to JSON
```powershell
$CreateDeliverabilitySimulationJobOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

