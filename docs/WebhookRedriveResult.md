# WebhookRedriveResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WebhookResultId** | **String** |  | 
**Success** | **Boolean** |  | 
**Message** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WebhookRedriveResult = Initialize-maislurp-client-powershellWebhookRedriveResult  -WebhookResultId null `
 -Success null `
 -Message null
```

- Convert the resource to JSON
```powershell
$WebhookRedriveResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

