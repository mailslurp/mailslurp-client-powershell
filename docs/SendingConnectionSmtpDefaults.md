# SendingConnectionSmtpDefaults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarHost** | **String** |  | [optional] 
**HostOptions** | [**SendingConnectionSmtpHostOption[]**](SendingConnectionSmtpHostOption) |  | 
**Ports** | **Int32[]** |  | 
**RecommendedPort** | **Int32** |  | [optional] 
**RecommendedSecurity** | **String** |  | [optional] 
**DefaultUsername** | **String** |  | [optional] 
**UsernameHint** | **String** |  | [optional] 
**PasswordHint** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SendingConnectionSmtpDefaults = Initialize-maislurp-client-powershellSendingConnectionSmtpDefaults  -VarHost null `
 -HostOptions null `
 -Ports null `
 -RecommendedPort null `
 -RecommendedSecurity null `
 -DefaultUsername null `
 -UsernameHint null `
 -PasswordHint null
```

- Convert the resource to JSON
```powershell
$SendingConnectionSmtpDefaults | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

