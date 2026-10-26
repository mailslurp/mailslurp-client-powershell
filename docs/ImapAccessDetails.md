# ImapAccessDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SecureImapServerHost** | **String** | Secure TLS IMAP server host domain | 
**SecureImapServerPort** | **Int32** | Secure TLS IMAP server host port | 
**SecureImapUsername** | **String** | Secure TLS IMAP username for login | 
**SecureImapPassword** | **String** | Secure TLS IMAP password for login | 
**ImapServerHost** | **String** | IMAP server host domain | 
**ImapServerPort** | **Int32** | IMAP server host port | 
**ImapUsername** | **String** | IMAP username for login | 
**ImapPassword** | **String** | IMAP password for login | 
**ImapMailbox** | **String** | IMAP mailbox to SELECT | 

## Examples

- Prepare the resource
```powershell
$ImapAccessDetails = Initialize-maislurp-client-powershellImapAccessDetails  -SecureImapServerHost null `
 -SecureImapServerPort null `
 -SecureImapUsername null `
 -SecureImapPassword null `
 -ImapServerHost null `
 -ImapServerPort null `
 -ImapUsername null `
 -ImapPassword null `
 -ImapMailbox null
```

- Convert the resource to JSON
```powershell
$ImapAccessDetails | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

