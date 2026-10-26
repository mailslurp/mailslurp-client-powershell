# InboxPlacementProviderAnalysisCheckDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** |  | 
**Label** | **String** |  | 
**FindingCode** | **String** |  | 
**AnalysisVersion** | **String** |  | 
**Status** | **String** |  | 
**Severity** | **String** |  | 
**ConfidencePercent** | **Int32** |  | 
**ConfidenceLabel** | **String** |  | 
**EvidenceSchemaVersion** | **Int32** |  | 
**EvidenceKind** | **String** |  | 
**AutoVerifiable** | **Boolean** |  | 
**VerificationMethod** | **String** |  | 
**Summary** | **String** |  | 
**Details** | **System.Collections.Hashtable** |  | 
**Evidence** | **System.Collections.Hashtable** |  | 

## Examples

- Prepare the resource
```powershell
$InboxPlacementProviderAnalysisCheckDto = Initialize-maislurp-client-powershellInboxPlacementProviderAnalysisCheckDto  -Key null `
 -Label null `
 -FindingCode null `
 -AnalysisVersion null `
 -Status null `
 -Severity null `
 -ConfidencePercent null `
 -ConfidenceLabel null `
 -EvidenceSchemaVersion null `
 -EvidenceKind null `
 -AutoVerifiable null `
 -VerificationMethod null `
 -Summary null `
 -Details null `
 -Evidence null
```

- Convert the resource to JSON
```powershell
$InboxPlacementProviderAnalysisCheckDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

