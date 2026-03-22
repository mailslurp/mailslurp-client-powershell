# ProviderSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MailProvider** | **String** |  | 
**ImapHost** | **String** |  | 
**ImapPort** | **Int32** |  | 
**ImapSsl** | **Boolean** |  | 
**ImapStartTls** | **Boolean** |  | [optional] 
**SmtpHost** | **String** |  | 
**SmtpPort** | **Int32** |  | 
**SmtpSsl** | **Boolean** |  | 
**SmtpStartTls** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProviderSettings = Initialize-maislurp-client-powershellProviderSettings  -MailProvider null `
 -ImapHost null `
 -ImapPort null `
 -ImapSsl null `
 -ImapStartTls null `
 -SmtpHost null `
 -SmtpPort null `
 -SmtpSsl null `
 -SmtpStartTls null
```

- Convert the resource to JSON
```powershell
$ProviderSettings | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

