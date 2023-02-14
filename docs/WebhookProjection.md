# WebhookProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 
**Url** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**EventName** | **String** |  | [optional] 
**PhoneNumberId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WebhookProjection = Initialize-maislurp-client-powershellWebhookProjection  -Name null `
 -Id null `
 -Url null `
 -InboxId null `
 -CreatedAt null `
 -UpdatedAt null `
 -EventName null `
 -PhoneNumberId null
```

- Convert the resource to JSON
```powershell
$WebhookProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

