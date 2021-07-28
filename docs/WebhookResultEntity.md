# WebhookResultEntity
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**HttpMethod** | **String** |  | 
**Id** | **String** |  | [optional] 
**InboxId** | **String** |  | 
**MessageId** | **String** |  | 
**ResponseBodyExtract** | **String** |  | [optional] 
**ResponseStatus** | **Int32** |  | [optional] 
**ResponseTimeMillis** | **Int64** |  | 
**ResultType** | **String** |  | [optional] 
**UpdatedAt** | **System.DateTime** |  | 
**UserId** | **String** |  | 
**WebhookEvent** | **String** |  | 
**WebhookId** | **String** |  | 
**WebhookUrl** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$WebhookResultEntity = Initialize-maislurp-client-powershellWebhookResultEntity  -CreatedAt null `
 -HttpMethod null `
 -Id null `
 -InboxId null `
 -MessageId null `
 -ResponseBodyExtract null `
 -ResponseStatus null `
 -ResponseTimeMillis null `
 -ResultType null `
 -UpdatedAt null `
 -UserId null `
 -WebhookEvent null `
 -WebhookId null `
 -WebhookUrl null
```

- Convert the resource to JSON
```powershell
$WebhookResultEntity | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

