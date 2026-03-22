# SmtpDiagnosticStep
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Step** | **String** |  | 
**Code** | **String** |  | [optional] 
**Message** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$SmtpDiagnosticStep = Initialize-maislurp-client-powershellSmtpDiagnosticStep  -Step null `
 -Code null `
 -Message null
```

- Convert the resource to JSON
```powershell
$SmtpDiagnosticStep | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

