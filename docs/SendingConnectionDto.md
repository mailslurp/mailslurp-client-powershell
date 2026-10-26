# SendingConnectionDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Name** | **String** |  | 
**Provider** | **String** |  | 
**ProviderPreset** | **String** |  | 
**Capabilities** | **String[]** |  | 
**FromEmail** | **String** |  | 
**SmtpHost** | **String** |  | [optional] 
**SmtpPort** | **Int32** |  | [optional] 
**SmtpSecurity** | **String** |  | [optional] 
**UsernameHint** | **String** |  | [optional] 
**ApiRegion** | **String** |  | [optional] 
**SendingDomain** | **String** |  | [optional] 
**Status** | **String** |  | 
**Enabled** | **Boolean** |  | 
**LastVerifiedAt** | **System.DateTime** |  | [optional] 
**LastErrorCode** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$SendingConnectionDto = Initialize-maislurp-client-powershellSendingConnectionDto  -Id null `
 -Name null `
 -Provider null `
 -ProviderPreset null `
 -Capabilities null `
 -FromEmail null `
 -SmtpHost null `
 -SmtpPort null `
 -SmtpSecurity null `
 -UsernameHint null `
 -ApiRegion null `
 -SendingDomain null `
 -Status null `
 -Enabled null `
 -LastVerifiedAt null `
 -LastErrorCode null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$SendingConnectionDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

