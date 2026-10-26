# SmtpAuthDiagnosticResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attempted** | **Boolean** |  | 
**Success** | **Boolean** |  | 
**Mechanism** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SmtpAuthDiagnosticResult = Initialize-maislurp-client-powershellSmtpAuthDiagnosticResult  -Attempted null `
 -Success null `
 -Mechanism null
```

- Convert the resource to JSON
```powershell
$SmtpAuthDiagnosticResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

