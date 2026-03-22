# EmailAnalysis
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SpamVerdict** | **String** | Verdict of spam ranking analysis | [optional] 
**VirusVerdict** | **String** | Verdict of virus scan analysis | [optional] 
**SpfVerdict** | **String** | Verdict of Send Policy Framework record spoofing analysis | [optional] 
**DkimVerdict** | **String** | Verdict of DomainKeys Identified Mail analysis | [optional] 
**DmarcVerdict** | **String** | Verdict of Domain-based Message Authentication Reporting and Conformance analysis | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailAnalysis = Initialize-maislurp-client-powershellEmailAnalysis  -SpamVerdict null `
 -VirusVerdict null `
 -SpfVerdict null `
 -DkimVerdict null `
 -DmarcVerdict null
```

- Convert the resource to JSON
```powershell
$EmailAnalysis | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

