# CampaignProbeRunComparisonDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Baseline** | [**CampaignProbeRunDto**](CampaignProbeRunDto) |  | 
**Current** | [**CampaignProbeRunDto**](CampaignProbeRunDto) |  | 
**HealthScoreDelta** | **Int32** |  | 
**StatusChanged** | **Boolean** |  | 
**LinkIssueDelta** | **Int32** |  | 
**ImageIssueDelta** | **Int32** |  | 
**CompatibilityWarningDelta** | **Int32** |  | 
**CompatibilityNotSupportedDelta** | **Int32** |  | 
**HtmlErrorDelta** | **Int32** |  | 
**HtmlWarningDelta** | **Int32** |  | 
**ReputationFailureDelta** | **Int32** |  | 
**AttachmentMentionIssueDelta** | **Int32** |  | 
**AddedInsights** | **String[]** |  | 
**RemovedInsights** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$CampaignProbeRunComparisonDto = Initialize-maislurp-client-powershellCampaignProbeRunComparisonDto  -Baseline null `
 -Current null `
 -HealthScoreDelta null `
 -StatusChanged null `
 -LinkIssueDelta null `
 -ImageIssueDelta null `
 -CompatibilityWarningDelta null `
 -CompatibilityNotSupportedDelta null `
 -HtmlErrorDelta null `
 -HtmlWarningDelta null `
 -ReputationFailureDelta null `
 -AttachmentMentionIssueDelta null `
 -AddedInsights null `
 -RemovedInsights null
```

- Convert the resource to JSON
```powershell
$CampaignProbeRunComparisonDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

