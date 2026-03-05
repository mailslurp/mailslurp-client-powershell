# WebhookProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | **String** |  | 
**Password** | **String** |  | [optional] 
**Username** | **String** |  | [optional] 
**UpdatedAt** | **System.DateTime** |  | 
**UserId** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**EventName** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**AiTransformId** | **String** |  | [optional] 
**HealthStatus** | **String** |  | [optional] 
**AiTransformerId** | **String** |  | [optional] 
**PhoneNumberId** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$WebhookProjection = Initialize-maislurp-client-powershellWebhookProjection  -Url null `
 -Password null `
 -Username null `
 -UpdatedAt null `
 -UserId null `
 -InboxId null `
 -EventName null `
 -CreatedAt null `
 -AiTransformId null `
 -HealthStatus null `
 -AiTransformerId null `
 -PhoneNumberId null `
 -Name null `
 -Id null
```

- Convert the resource to JSON
```powershell
$WebhookProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

