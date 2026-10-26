# EmailAuditAnalysisResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContentReview** | [**EmailAuditCheck[]**](EmailAuditCheck) | Versioned static accessibility, unresolved template, and compliance review checks. Null on historical audits that did not run these checks. | [optional] 
**Status** | **String** | Health status for a one-shot email audit | 
**HealthScore** | **Int32** |  | 
**TotalChecks** | **Int32** |  | 
**PassingChecks** | **Int32** |  | 
**FailingChecks** | **Int32** |  | 
**DetectedLinks** | **Int32** |  | 
**CheckedLinks** | **Int32** |  | 
**DetectedImages** | **Int32** |  | 
**CheckedImages** | **Int32** |  | 
**LinkIssueCount** | **Int32** |  | 
**ImageIssueCount** | **Int32** |  | 
**SpellingIssueCount** | **Int32** |  | 
**BrokenLinks** | [**EmailAuditUrlIssue[]**](EmailAuditUrlIssue) |  | 
**BrokenImages** | [**EmailAuditUrlIssue[]**](EmailAuditUrlIssue) |  | 
**SpellingIssues** | [**EmailAuditSpellingIssue[]**](EmailAuditSpellingIssue) |  | 
**CompatibilityWarningCount** | **Int32** |  | 
**CompatibilityNotSupportedCount** | **Int32** |  | 
**CompatibilityUnknownCount** | **Int32** |  | 
**FeatureSupport** | [**EmailFeatureSupportResult**](EmailFeatureSupportResult) |  | [optional] 
**HtmlErrorCount** | **Int32** |  | 
**HtmlWarningCount** | **Int32** |  | 
**HtmlInfoCount** | **Int32** |  | 
**HtmlValidation** | [**HTMLValidationResult**](HTMLValidationResult) |  | [optional] 
**ReputationFailureCount** | **Int32** |  | 
**AttachmentMentionIssueCount** | **Int32** |  | 
**ExternalCheckSkippedCount** | **Int32** |  | 
**Insights** | **String[]** |  | 
**ErrorMessage** | **String** |  | [optional] 
**SpamVerdict** | **String** | Spam verdict supplied by the source mail receiver | [optional] 
**VirusVerdict** | **String** | Virus verdict supplied by the source mail receiver | [optional] 
**SpfVerdict** | **String** | SPF verdict supplied by the source mail receiver | [optional] 
**DkimVerdict** | **String** | DKIM verdict supplied by the source mail receiver | [optional] 
**DmarcVerdict** | **String** | DMARC verdict supplied by the source mail receiver | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailAuditAnalysisResult = Initialize-maislurp-client-powershellEmailAuditAnalysisResult  -ContentReview null `
 -Status null `
 -HealthScore null `
 -TotalChecks null `
 -PassingChecks null `
 -FailingChecks null `
 -DetectedLinks null `
 -CheckedLinks null `
 -DetectedImages null `
 -CheckedImages null `
 -LinkIssueCount null `
 -ImageIssueCount null `
 -SpellingIssueCount null `
 -BrokenLinks null `
 -BrokenImages null `
 -SpellingIssues null `
 -CompatibilityWarningCount null `
 -CompatibilityNotSupportedCount null `
 -CompatibilityUnknownCount null `
 -FeatureSupport null `
 -HtmlErrorCount null `
 -HtmlWarningCount null `
 -HtmlInfoCount null `
 -HtmlValidation null `
 -ReputationFailureCount null `
 -AttachmentMentionIssueCount null `
 -ExternalCheckSkippedCount null `
 -Insights null `
 -ErrorMessage null `
 -SpamVerdict null `
 -VirusVerdict null `
 -SpfVerdict null `
 -DkimVerdict null `
 -DmarcVerdict null
```

- Convert the resource to JSON
```powershell
$EmailAuditAnalysisResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

