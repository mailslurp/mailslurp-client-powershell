# TestSmtpServerResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Connected** | **Boolean** |  | 
**Banner** | **String** |  | [optional] 
**Tls** | [**SmtpTlsDiagnosticResult**](SmtpTlsDiagnosticResult) |  | 
**Auth** | [**SmtpAuthDiagnosticResult**](SmtpAuthDiagnosticResult) |  | 
**Transcript** | [**SmtpDiagnosticStep[]**](SmtpDiagnosticStep) |  | 
**Warnings** | **String[]** |  | 
**Errors** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$TestSmtpServerResults = Initialize-maislurp-client-powershellTestSmtpServerResults  -Connected null `
 -Banner null `
 -Tls null `
 -Auth null `
 -Transcript null `
 -Warnings null `
 -Errors null
```

- Convert the resource to JSON
```powershell
$TestSmtpServerResults | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

