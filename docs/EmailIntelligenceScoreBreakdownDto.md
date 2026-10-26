# EmailIntelligenceScoreBreakdownDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RandomnessPenalty** | **Int32** |  | 
**FreeProviderPenalty** | **Int32** |  | 
**HttpsWebsitePenalty** | **Int32** |  | 
**DnsPenalty** | **Int32** |  | 
**DomainAgePenalty** | **Int32** |  | 
**EmailValidationPenalty** | **Int32** |  | 
**TotalPenalty** | **Int32** |  | 

## Examples

- Prepare the resource
```powershell
$EmailIntelligenceScoreBreakdownDto = Initialize-maislurp-client-powershellEmailIntelligenceScoreBreakdownDto  -RandomnessPenalty null `
 -FreeProviderPenalty null `
 -HttpsWebsitePenalty null `
 -DnsPenalty null `
 -DomainAgePenalty null `
 -EmailValidationPenalty null `
 -TotalPenalty null
```

- Convert the resource to JSON
```powershell
$EmailIntelligenceScoreBreakdownDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

