# EmailAuditComparisonDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Baseline** | [**EmailAuditDto**](EmailAuditDto) |  | 
**Current** | [**EmailAuditDto**](EmailAuditDto) |  | 
**HealthScoreDelta** | **Int32** |  | 
**StatusChanged** | **Boolean** |  | 
**BrokenLinkDelta** | **Int32** |  | 
**BrokenImageDelta** | **Int32** |  | 
**SpellingIssueDelta** | **Int32** |  | 
**HtmlErrorDelta** | **Int32** |  | 
**HtmlWarningDelta** | **Int32** |  | 
**CompatibilityWarningDelta** | **Int32** |  | 
**CompatibilityNotSupportedDelta** | **Int32** |  | 
**ReputationFailureDelta** | **Int32** |  | 
**AttachmentMentionIssueDelta** | **Int32** |  | 
**AddedInsights** | **String[]** |  | 
**RemovedInsights** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$EmailAuditComparisonDto = Initialize-maislurp-client-powershellEmailAuditComparisonDto  -Baseline null `
 -Current null `
 -HealthScoreDelta null `
 -StatusChanged null `
 -BrokenLinkDelta null `
 -BrokenImageDelta null `
 -SpellingIssueDelta null `
 -HtmlErrorDelta null `
 -HtmlWarningDelta null `
 -CompatibilityWarningDelta null `
 -CompatibilityNotSupportedDelta null `
 -ReputationFailureDelta null `
 -AttachmentMentionIssueDelta null `
 -AddedInsights null `
 -RemovedInsights null
```

- Convert the resource to JSON
```powershell
$EmailAuditComparisonDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

