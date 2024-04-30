# ImapAccessDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ImapServerHost** | **String** | IMAP server host domain | 
**ImapServerPort** | **Int32** | IMAP server host port | 
**ImapUsername** | **String** | IMAP username for login | 
**ImapPassword** | **String** | IMAP password for login | 
**ImapMailbox** | **String** | IMAP mailbox to SELECT | 

## Examples

- Prepare the resource
```powershell
$ImapAccessDetails = Initialize-maislurp-client-powershellImapAccessDetails  -ImapServerHost null `
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

