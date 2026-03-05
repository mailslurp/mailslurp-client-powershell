# CampaignProbeRunDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**ProbeId** | **String** |  | 
**UserId** | **String** |  | 
**Status** | **String** |  | 
**Source** | **String** |  | 
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
**ReputationFailureCount** | **Int32** |  | 
**AttachmentMentionIssueCount** | **Int32** |  | 
**Insights** | **String[]** |  | 
**ErrorMessage** | **String** |  | [optional] 
**FromAddress** | **String** |  | [optional] 
**Recipient** | **String** |  | [optional] 
**Subject** | **String** |  | [optional] 
**MessageId** | **String** |  | [optional] 
**SourceMessageId** | **String** |  | [optional] 
**ProcessingMs** | **Int64** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$CampaignProbeRunDto = Initialize-maislurp-client-powershellCampaignProbeRunDto  -Id null `
 -ProbeId null `
 -UserId null `
 -Status null `
 -Source null `
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
 -ReputationFailureCount null `
 -AttachmentMentionIssueCount null `
 -Insights null `
 -ErrorMessage null `
 -FromAddress null `
 -Recipient null `
 -Subject null `
 -MessageId null `
 -SourceMessageId null `
 -ProcessingMs null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$CampaignProbeRunDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

