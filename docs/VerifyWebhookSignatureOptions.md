# VerifyWebhookSignatureOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MessageId** | **String** |  | 
**Signature** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$VerifyWebhookSignatureOptions = Initialize-maislurp-client-powershellVerifyWebhookSignatureOptions  -MessageId null `
 -Signature null
```

- Convert the resource to JSON
```powershell
$VerifyWebhookSignatureOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

