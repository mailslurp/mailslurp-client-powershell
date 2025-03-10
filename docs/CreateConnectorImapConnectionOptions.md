# CreateConnectorImapConnectionOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ImapSsl** | **Boolean** |  | [optional] 
**ImapUsername** | **String** |  | [optional] 
**ImapPassword** | **String** |  | [optional] 
**SelectFolder** | **String** | Optional folder to select during IMAP connection | [optional] 
**SearchTerms** | **String** |  | [optional] 
**ImapPort** | **Int32** | IMAP server port | [optional] 
**ImapHost** | **String** | IMAP server host | 
**Enabled** | **Boolean** | IMAP server enabled | [optional] 
**StartTls** | **Boolean** |  | [optional] 
**ProxyEnabled** | **Boolean** |  | [optional] 
**ProxyPort** | **Int32** |  | [optional] 
**ProxyHost** | **String** |  | [optional] 
**LocalHostName** | **String** |  | [optional] 
**Mechanisms** | **String[]** | List of IMAP mechanisms | [optional] 
**SslTrust** | **String** |  | [optional] 
**SslProtocols** | **String[]** | List of SSL protocols | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateConnectorImapConnectionOptions = Initialize-maislurp-client-powershellCreateConnectorImapConnectionOptions  -ImapSsl null `
 -ImapUsername null `
 -ImapPassword null `
 -SelectFolder null `
 -SearchTerms null `
 -ImapPort null `
 -ImapHost null `
 -Enabled null `
 -StartTls null `
 -ProxyEnabled null `
 -ProxyPort null `
 -ProxyHost null `
 -LocalHostName null `
 -Mechanisms null `
 -SslTrust null `
 -SslProtocols null
```

- Convert the resource to JSON
```powershell
$CreateConnectorImapConnectionOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

