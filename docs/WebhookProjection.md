# WebhookProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | **String** |  | 
**Password** | **String** |  | [optional] 
**Username** | **String** |  | [optional] 
**UserId** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**EventName** | **String** |  | [optional] 
**UpdatedAt** | **System.DateTime** |  | 
**CreatedAt** | **System.DateTime** |  | 
**HealthStatus** | **String** |  | [optional] 
**PhoneNumberId** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$WebhookProjection = Initialize-maislurp-client-powershellWebhookProjection  -Url null `
 -Password null `
 -Username null `
 -UserId null `
 -InboxId null `
 -EventName null `
 -UpdatedAt null `
 -CreatedAt null `
 -HealthStatus null `
 -PhoneNumberId null `
 -Name null `
 -Id null
```

- Convert the resource to JSON
```powershell
$WebhookProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

