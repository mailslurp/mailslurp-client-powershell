# SendingConnectionProviderDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProviderPreset** | **String** |  | 
**Provider** | **String** |  | 
**DisplayName** | **String** |  | 
**Category** | **String** |  | 
**Availability** | **String** |  | 
**SetupType** | **String** |  | 
**NativeIntegration** | **Boolean** |  | 
**SmtpDefaults** | [**SendingConnectionSmtpDefaults**](SendingConnectionSmtpDefaults) |  | [optional] 
**SupportedApiRegions** | **String[]** |  | 
**RequiresSendingDomain** | **Boolean** |  | 
**SetupNotes** | **String[]** |  | 
**CredentialType** | **String** |  | 
**Capabilities** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$SendingConnectionProviderDto = Initialize-maislurp-client-powershellSendingConnectionProviderDto  -ProviderPreset null `
 -Provider null `
 -DisplayName null `
 -Category null `
 -Availability null `
 -SetupType null `
 -NativeIntegration null `
 -SmtpDefaults null `
 -SupportedApiRegions null `
 -RequiresSendingDomain null `
 -SetupNotes null `
 -CredentialType null `
 -Capabilities null
```

- Convert the resource to JSON
```powershell
$SendingConnectionProviderDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

