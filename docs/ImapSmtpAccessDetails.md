# ImapSmtpAccessDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SmtpServerHost** | **String** | SMTP server host domain | 
**SmtpServerPort** | **Int32** | SMTP server host port | 
**SmtpUsername** | **String** | SMTP username for login | 
**SmtpPassword** | **String** | SMTP  for login | 
**ImapServerHost** | **String** | IMAP server host domain | 
**ImapServerPort** | **Int32** | IMAP server host port | 
**ImapUsername** | **String** | IMAP username for login | 
**ImapPassword** | **String** | IMAP password for login | 

## Examples

- Prepare the resource
```powershell
$ImapSmtpAccessDetails = Initialize-maislurp-client-powershellImapSmtpAccessDetails  -SmtpServerHost null `
 -SmtpServerPort null `
 -SmtpUsername null `
 -SmtpPassword null `
 -ImapServerHost null `
 -ImapServerPort null `
 -ImapUsername null `
 -ImapPassword null
```

- Convert the resource to JSON
```powershell
$ImapSmtpAccessDetails | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

