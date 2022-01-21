# WebhookResultDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**UserId** | **String** |  | 
**InboxId** | **String** |  | 
**WebhookId** | **String** |  | 
**WebhookUrl** | **String** |  | 
**MessageId** | **String** |  | 
**RedriveId** | **String** |  | [optional] 
**HttpMethod** | **String** |  | 
**WebhookEvent** | **String** |  | 
**ResponseStatus** | **Int32** |  | [optional] 
**ResponseTimeMillis** | **Int64** |  | 
**ResponseBodyExtract** | **String** |  | [optional] 
**ResultType** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**Seen** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WebhookResultDto = Initialize-maislurp-client-powershellWebhookResultDto  -Id null `
 -UserId null `
 -InboxId null `
 -WebhookId null `
 -WebhookUrl null `
 -MessageId null `
 -RedriveId null `
 -HttpMethod null `
 -WebhookEvent null `
 -ResponseStatus null `
 -ResponseTimeMillis null `
 -ResponseBodyExtract null `
 -ResultType null `
 -CreatedAt null `
 -UpdatedAt null `
 -Seen null
```

- Convert the resource to JSON
```powershell
$WebhookResultDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

