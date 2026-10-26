# CheckCampaignProbeResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** |  | 
**HealthScore** | **Int32** |  | 
**TotalChecks** | **Int32** |  | 
**PassingChecks** | **Int32** |  | 
**FailingChecks** | **Int32** |  | 
**CheckedLinks** | **Int32** |  | 
**CheckedImages** | **Int32** |  | 
**LinkIssueCount** | **Int32** |  | 
**ImageIssueCount** | **Int32** |  | 
**CompatibilityWarningCount** | **Int32** |  | 
**CompatibilityNotSupportedCount** | **Int32** |  | 
**CompatibilityUnknownCount** | **Int32** |  | 
**HtmlErrorCount** | **Int32** |  | 
**HtmlWarningCount** | **Int32** |  | 
**HtmlInfoCount** | **Int32** |  | 
**AttachmentMentionIssueCount** | **Int32** |  | 
**Insights** | **String[]** |  | 
**ErrorMessage** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CheckCampaignProbeResults = Initialize-maislurp-client-powershellCheckCampaignProbeResults  -Status null `
 -HealthScore null `
 -TotalChecks null `
 -PassingChecks null `
 -FailingChecks null `
 -CheckedLinks null `
 -CheckedImages null `
 -LinkIssueCount null `
 -ImageIssueCount null `
 -CompatibilityWarningCount null `
 -CompatibilityNotSupportedCount null `
 -CompatibilityUnknownCount null `
 -HtmlErrorCount null `
 -HtmlWarningCount null `
 -HtmlInfoCount null `
 -AttachmentMentionIssueCount null `
 -Insights null `
 -ErrorMessage null
```

- Convert the resource to JSON
```powershell
$CheckCampaignProbeResults | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

