# WebhookProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 
**Url** | **String** |  | 
**Password** | **String** |  | [optional] 
**Username** | **String** |  | [optional] 
**UserId** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**EventName** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**HealthStatus** | **String** |  | [optional] 
**AiTransformerId** | **String** |  | [optional] 
**AiTransformId** | **String** |  | [optional] 
**PhoneNumberId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WebhookProjection = Initialize-maislurp-client-powershellWebhookProjection  -Name null `
 -Id null `
 -Url null `
 -Password null `
 -Username null `
 -UserId null `
 -InboxId null `
 -EventName null `
 -CreatedAt null `
 -UpdatedAt null `
 -HealthStatus null `
 -AiTransformerId null `
 -AiTransformId null `
 -PhoneNumberId null
```

- Convert the resource to JSON
```powershell
$WebhookProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

