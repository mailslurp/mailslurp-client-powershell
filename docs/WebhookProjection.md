# WebhookProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 
**EventName** | **String** |  | [optional] 
**Url** | **String** |  | 
**Password** | **String** |  | [optional] 
**Username** | **String** |  | [optional] 
**UserId** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**Enabled** | **Boolean** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**AiTransformerId** | **String** |  | [optional] 
**PhoneNumberId** | **String** |  | [optional] 
**AiTransformId** | **String** |  | [optional] 
**HealthStatus** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WebhookProjection = Initialize-maislurp-client-powershellWebhookProjection  -Name null `
 -Id null `
 -EventName null `
 -Url null `
 -Password null `
 -Username null `
 -UserId null `
 -InboxId null `
 -Enabled null `
 -CreatedAt null `
 -UpdatedAt null `
 -AiTransformerId null `
 -PhoneNumberId null `
 -AiTransformId null `
 -HealthStatus null
```

- Convert the resource to JSON
```powershell
$WebhookProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

