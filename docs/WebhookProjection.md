# WebhookProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 
**Url** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**EventName** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**PhoneNumberId** | **String** |  | [optional] 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$WebhookProjection = Initialize-maislurp-client-powershellWebhookProjection  -Name null `
 -Id null `
 -Url null `
 -InboxId null `
 -EventName null `
 -CreatedAt null `
 -PhoneNumberId null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$WebhookProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

