# WebhookRedriveResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | [optional] 
**Success** | **Boolean** |  | 
**WebhookResultId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$WebhookRedriveResult = Initialize-maislurp-client-powershellWebhookRedriveResult  -Message null `
 -Success null `
 -WebhookResultId null
```

- Convert the resource to JSON
```powershell
$WebhookRedriveResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

