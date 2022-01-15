# WebhookNewContactPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MessageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**WebhookId** | **String** | ID of webhook entity being triggered | 
**WebhookName** | **String** | Name of the webhook being triggered | [optional] 
**EventName** | **String** | Name of the event type webhook is being triggered for. | 
**ContactId** | **String** |  | 
**GroupId** | **String** |  | [optional] 
**FirstName** | **String** |  | [optional] 
**LastName** | **String** |  | [optional] 
**Company** | **String** |  | [optional] 
**PrimaryEmailAddress** | **String** |  | [optional] 
**EmailAddresses** | **String[]** |  | 
**Tags** | **String[]** |  | 
**MetaData** | [**SystemCollectionsHashtable**]() |  | [optional] 
**OptOut** | **Boolean** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$WebhookNewContactPayload = Initialize-maislurp-client-powershellWebhookNewContactPayload  -MessageId null `
 -WebhookId null `
 -WebhookName null `
 -EventName null `
 -ContactId null `
 -GroupId null `
 -FirstName null `
 -LastName null `
 -Company null `
 -PrimaryEmailAddress null `
 -EmailAddresses null `
 -Tags null `
 -MetaData null `
 -OptOut null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$WebhookNewContactPayload | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

