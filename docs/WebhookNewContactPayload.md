# WebhookNewContactPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MessageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**WebhookId** | **String** | ID of webhook entity being triggered | 
**WebhookName** | **String** | Name of the webhook being triggered | [optional] 
**EventName** | **String** | Name of the event type webhook is being triggered for. | 
**ContactId** | **String** | Contact ID | 
**GroupId** | **String** | Contact group ID | [optional] 
**FirstName** | **String** | Contact first name | [optional] 
**LastName** | **String** | Contact last name | [optional] 
**Company** | **String** | Contact company name | [optional] 
**PrimaryEmailAddress** | **String** | Primary email address for contact | [optional] 
**EmailAddresses** | **String[]** | Email addresses for contact | 
**Tags** | **String[]** | Tags for contact | 
**MetaData** | [**SystemCollectionsHashtable**]() |  | [optional] 
**OptOut** | **Boolean** | Has contact opted out of emails | 
**CreatedAt** | **System.DateTime** | Date time of event creation | 

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

