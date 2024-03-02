# WebhookProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**Url** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**EventName** | **String** |  | [optional] 
**PhoneNumberId** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$WebhookProjection = Initialize-maislurp-client-powershellWebhookProjection  -CreatedAt null `
 -UpdatedAt null `
 -Url null `
 -InboxId null `
 -EventName null `
 -PhoneNumberId null `
 -Name null `
 -Id null
```

- Convert the resource to JSON
```powershell
$WebhookProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

