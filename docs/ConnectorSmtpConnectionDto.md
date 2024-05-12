# ConnectorSmtpConnectionDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConnectorId** | **String** |  | 
**SmtpHost** | **String** |  | [optional] 
**SmtpPort** | **Int32** |  | [optional] 
**SmtpUsername** | **String** |  | [optional] 
**SmtpPassword** | **String** |  | [optional] 
**SmtpSsl** | **Boolean** |  | [optional] 
**Enabled** | **Boolean** |  | [optional] 
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
 -Enabled null `
 -CreatedAt null `
 -Id null
```

- Convert the resource to JSON
```powershell
$ConnectorSmtpConnectionDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

