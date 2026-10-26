# AgentCapabilityFeaturesDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConversationQueue** | **Boolean** |  | 
**DurableEvents** | **Boolean** |  | 
**ConversationClaims** | **Boolean** |  | 
**HumanHandoff** | **Boolean** |  | 
**InternalNotes** | **Boolean** |  | 
**ThreadedReplyDrafts** | **Boolean** |  | 
**WebhookSubscriptionsManagedByOwner** | **Boolean** |  | 
**VirtualTotpDevices** | **Boolean** |  | 
**PhoneNumberSmsRead** | **Boolean** |  | 
**PhoneNumberSmsSend** | **Boolean** |  | 
**SmsConversationQueue** | **Boolean** |  | 
**SmsDurableEvents** | **Boolean** |  | 
**SmsConversationClaims** | **Boolean** |  | 
**SmsHumanHandoff** | **Boolean** |  | 
**SmsInternalNotes** | **Boolean** |  | 
**SmsIdempotentSend** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$AgentCapabilityFeaturesDto = Initialize-maislurp-client-powershellAgentCapabilityFeaturesDto  -ConversationQueue null `
 -DurableEvents null `
 -ConversationClaims null `
 -HumanHandoff null `
 -InternalNotes null `
 -ThreadedReplyDrafts null `
 -WebhookSubscriptionsManagedByOwner null `
 -VirtualTotpDevices null `
 -PhoneNumberSmsRead null `
 -PhoneNumberSmsSend null `
 -SmsConversationQueue null `
 -SmsDurableEvents null `
 -SmsConversationClaims null `
 -SmsHumanHandoff null `
 -SmsInternalNotes null `
 -SmsIdempotentSend null
```

- Convert the resource to JSON
```powershell
$AgentCapabilityFeaturesDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

