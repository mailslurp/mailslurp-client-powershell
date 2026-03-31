# SmtpTlsDiagnosticResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Supported** | **Boolean** |  | 
**Negotiated** | **Boolean** |  | 
**Protocol** | **String** |  | [optional] 
**Cipher** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SmtpTlsDiagnosticResult = Initialize-maislurp-client-powershellSmtpTlsDiagnosticResult  -Supported null `
 -Negotiated null `
 -Protocol null `
 -Cipher null
```

- Convert the resource to JSON
```powershell
$SmtpTlsDiagnosticResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

