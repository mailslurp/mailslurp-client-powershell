# WebhookNewContactPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Company** | **String** |  | [optional] 
**ContactId** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**EmailAddresses** | **String[]** |  | 
**EventName** | **String** | Name of the event type webhook is being triggered for. | [optional] 
**FirstName** | **String** |  | [optional] 
**GroupId** | **String** |  | [optional] 
**LastName** | **String** |  | [optional] 
**MessageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**MetaData** | [**SystemCollectionsHashtable**]() |  | [optional] 
**OptOut** | **Boolean** |  | [optional] 
**PrimaryEmailAddress** | **String** |  | [optional] 
**Tags** | **String[]** |  | 
**WebhookId** | **String** | ID of webhook entity being triggered | [optional] 
**WebhookName** | **String** | Name of the webhook being triggered | [optional] 

## Examples

- Prepare the resource
```powershell
$WebhookNewContactPayload = Initialize-maislurp-client-powershellWebhookNewContactPayload  -Company null `
 -ContactId null `
 -CreatedAt null `
 -EmailAddresses null `
 -EventName null `
 -FirstName null `
 -GroupId null `
 -LastName null `
 -MessageId null `
 -MetaData null `
 -OptOut null `
 -PrimaryEmailAddress null `
 -Tags null `
 -WebhookId null `
 -WebhookName null
```

- Convert the resource to JSON
```powershell
$WebhookNewContactPayload | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

