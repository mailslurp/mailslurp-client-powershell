# ConnectorSmtpConnectionDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConnectorId** | **String** |  | 
**SmtpHost** | **String** |  | 
**SmtpPort** | **Int32** |  | [optional] 
**SmtpUsername** | **String** |  | [optional] 
**SmtpPassword** | **String** |  | [optional] 
**SmtpSsl** | **Boolean** |  | [optional] 
**StartTls** | **Boolean** |  | [optional] 
**SmtpMechanisms** | **String[]** |  | [optional] 
**LocalHostName** | **String** |  | [optional] 
**ProxyHost** | **String** |  | [optional] 
**ProxyPort** | **Int32** |  | [optional] 
**ProxyEnabled** | **Boolean** |  | [optional] 
**Enabled** | **Boolean** |  | [optional] 
**SslTrust** | **String** |  | [optional] 
**SslProtocols** | **String[]** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ConnectorSmtpConnectionDto = Initialize-maislurp-client-powershellConnectorSmtpConnectionDto  -ConnectorId null `
 -SmtpHost null `
 -SmtpPort null `
 -SmtpUsername null `
 -SmtpPassword null `
 -SmtpSsl null `
 -StartTls null `
 -SmtpMechanisms null `
 -LocalHostName null `
 -ProxyHost null `
 -ProxyPort null `
 -ProxyEnabled null `
 -Enabled null `
 -SslTrust null `
 -SslProtocols null `
 -CreatedAt null `
 -Id null
```

- Convert the resource to JSON
```powershell
$ConnectorSmtpConnectionDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

