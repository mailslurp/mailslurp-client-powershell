# ImapSmtpAccessDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SmtpServerHost** | **String** |  | 
**SmtpServerPort** | **Int32** |  | 
**SmtpUsername** | **String** |  | 
**SmtpPassword** | **String** |  | 
**ImapServerHost** | **String** |  | 
**ImapServerPort** | **Int32** |  | 
**ImapUsername** | **String** |  | 
**ImapPassword** | **String** |  | 

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

