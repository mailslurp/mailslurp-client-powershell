# CreateSendingConnectionOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | 
**ProviderPreset** | **String** |  | 
**Provider** | **String** |  | 
**FromEmail** | **String** |  | 
**Smtp** | [**SendingConnectionSmtpOptions**](SendingConnectionSmtpOptions) |  | [optional] 
**ApiKey** | [**SendingConnectionApiKeyOptions**](SendingConnectionApiKeyOptions) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateSendingConnectionOptions = Initialize-maislurp-client-powershellCreateSendingConnectionOptions  -Name null `
 -ProviderPreset null `
 -Provider null `
 -FromEmail null `
 -Smtp null `
 -ApiKey null
```

- Convert the resource to JSON
```powershell
$CreateSendingConnectionOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

