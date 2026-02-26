# SmtpAccessDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SecureSmtpServerHost** | **String** | Secure TLS SMTP server host domain | 
**SecureSmtpServerPort** | **Int32** | Secure TLS SMTP server host port | 
**SecureSmtpUsername** | **String** | Secure TLS SMTP username for login | 
**SecureSmtpPassword** | **String** | Secure TLS SMTP password for login | 
**SmtpServerHost** | **String** | SMTP server host domain | 
**SmtpServerPort** | **Int32** | SMTP server host port | 
**SmtpUsername** | **String** | SMTP username for login | 
**SmtpPassword** | **String** | SMTP password for login | 
**MailFromDomain** | **String** | Mail from domain or SMTP HELO value | [optional] 

## Examples

- Prepare the resource
```powershell
$SmtpAccessDetails = Initialize-maislurp-client-powershellSmtpAccessDetails  -SecureSmtpServerHost null `
 -SecureSmtpServerPort null `
 -SecureSmtpUsername null `
 -SecureSmtpPassword null `
 -SmtpServerHost null `
 -SmtpServerPort null `
 -SmtpUsername null `
 -SmtpPassword null `
 -MailFromDomain null
```

- Convert the resource to JSON
```powershell
$SmtpAccessDetails | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

