# WebhookNewContactPayload
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MessageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**WebhookId** | **String** | ID of webhook entity being triggered | [optional] 
**WebhookName** | **String** | Name of the webhook being triggered | [optional] 
**EventName** | **String** | Name of the event type webhook is being triggered for. | [optional] 
**ContactId** | **String** |  | [optional] 
**GroupId** | **String** |  | [optional] 
**FirstName** | **String** |  | [optional] 
**LastName** | **String** |  | [optional] 
**Company** | **String** |  | [optional] 
**PrimaryEmailAddress** | **String** |  | [optional] 
**EmailAddresses** | **String[]** |  | [optional] 
**Tags** | **String[]** |  | [optional] 
**MetaData** | [**SystemCollectionsHashtable**]() |  | [optional] 
**OptOut** | **Boolean** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | [optional] 

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

