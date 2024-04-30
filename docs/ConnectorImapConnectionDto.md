# ConnectorImapConnectionDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConnectorId** | **String** |  | 
**ImapHost** | **String** |  | [optional] 
**ImapPort** | **Int32** |  | [optional] 
**ImapUsername** | **String** |  | [optional] 
**ImapPassword** | **String** |  | [optional] 
**ImapSsl** | **Boolean** |  | [optional] 
**SelectFolder** | **String** |  | [optional] 
**SearchTerms** | **String** |  | [optional] 
**Enabled** | **Boolean** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ConnectorImapConnectionDto = Initialize-maislurp-client-powershellConnectorImapConnectionDto  -ConnectorId null `
 -ImapHost null `
 -ImapPort null `
 -ImapUsername null `
 -ImapPassword null `
 -ImapSsl null `
 -SelectFolder null `
 -SearchTerms null `
 -Enabled null `
 -CreatedAt null `
 -Id null
```

- Convert the resource to JSON
```powershell
$ConnectorImapConnectionDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

