# WebhookProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**Url** | **String** |  | 
**UserId** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**EventName** | **String** |  | [optional] 
**HealthStatus** | **String** |  | [optional] 
**PhoneNumberId** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 
**Username** | **String** |  | [optional] 
**Password** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WebhookProjection = Initialize-maislurp-client-powershellWebhookProjection  -CreatedAt null `
 -UpdatedAt null `
 -Url null `
 -UserId null `
 -InboxId null `
 -EventName null `
 -HealthStatus null `
 -PhoneNumberId null `
 -Name null `
 -Id null `
 -Username null `
 -Password null
```

- Convert the resource to JSON
```powershell
$WebhookProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

