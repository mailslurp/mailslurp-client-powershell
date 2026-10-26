# RotateSendingConnectionCredentialsOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Smtp** | [**SendingConnectionSmtpOptions**](SendingConnectionSmtpOptions) |  | [optional] 
**ApiKey** | [**SendingConnectionApiKeyOptions**](SendingConnectionApiKeyOptions) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RotateSendingConnectionCredentialsOptions = Initialize-maislurp-client-powershellRotateSendingConnectionCredentialsOptions  -Smtp null `
 -ApiKey null
```

- Convert the resource to JSON
```powershell
$RotateSendingConnectionCredentialsOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

