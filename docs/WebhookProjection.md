# WebhookProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**EventName** | **String** |  | [optional] 
**Id** | **String** |  | 
**InboxId** | **String** |  | 
**Name** | **String** |  | [optional] 
**UpdatedAt** | **System.DateTime** |  | 
**Url** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$WebhookProjection = Initialize-maislurp-client-powershellWebhookProjection  -CreatedAt null `
 -EventName null `
 -Id null `
 -InboxId null `
 -Name null `
 -UpdatedAt null `
 -Url null
```

- Convert the resource to JSON
```powershell
$WebhookProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

