# ImapSmtpAccessServers
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ImapServer** | [**ServerEndpoints**](ServerEndpoints) |  | 
**SecureImapServer** | [**ServerEndpoints**](ServerEndpoints) |  | 
**SmtpServer** | [**ServerEndpoints**](ServerEndpoints) |  | 
**SecureSmtpServer** | [**ServerEndpoints**](ServerEndpoints) |  | 

## Examples

- Prepare the resource
```powershell
$ImapSmtpAccessServers = Initialize-maislurp-client-powershellImapSmtpAccessServers  -ImapServer null `
 -SecureImapServer null `
 -SmtpServer null `
 -SecureSmtpServer null
```

- Convert the resource to JSON
```powershell
$ImapSmtpAccessServers | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

