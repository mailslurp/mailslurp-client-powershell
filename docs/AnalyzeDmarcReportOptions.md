# AnalyzeDmarcReportOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ReportXml** | **String** |  | 
**CaptchaToken** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AnalyzeDmarcReportOptions = Initialize-maislurp-client-powershellAnalyzeDmarcReportOptions  -ReportXml null `
 -CaptchaToken null
```

- Convert the resource to JSON
```powershell
$AnalyzeDmarcReportOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

