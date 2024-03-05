# ImapSmtpAccessDetails
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
**ImapServerHost** | **String** | IMAP server host domain | 
**ImapServerPort** | **Int32** | IMAP server host port | 
**ImapUsername** | **String** | IMAP username for login | 
**ImapPassword** | **String** | IMAP password for login | 
**MailFromDomain** | **String** | Mail from domain or SMTP HELO value | [optional] 

## Examples

- Prepare the resource
```powershell
$ImapSmtpAccessDetails = Initialize-maislurp-client-powershellImapSmtpAccessDetails  -SecureSmtpServerHost null `
 -SecureSmtpServerPort null `
 -SecureSmtpUsername null `
 -SecureSmtpPassword null `
 -SmtpServerHost null `
 -SmtpServerPort null `
 -SmtpUsername null `
 -SmtpPassword null `
 -ImapServerHost null `
 -ImapServerPort null `
 -ImapUsername null `
 -ImapPassword null `
 -MailFromDomain null
```

- Convert the resource to JSON
```powershell
$ImapSmtpAccessDetails | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

