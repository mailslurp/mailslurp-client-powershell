# EmailIntelligenceSignalsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NormalizedTarget** | **String** |  | 
**EmailAddress** | **String** |  | [optional] 
**Domain** | **String** |  | 
**LocalPart** | **String** |  | [optional] 
**RandomLocalPart** | **Boolean** |  | [optional] 
**LocalPartEntropy** | **Double** |  | [optional] 
**FreeEmailProvider** | **Boolean** |  | [optional] 
**HasHttpsWebsite** | **Boolean** |  | [optional] 
**DnsARecordPresent** | **Boolean** |  | [optional] 
**DnsMxRecordPresent** | **Boolean** |  | [optional] 
**SoaRecordPresent** | **Boolean** |  | [optional] 
**DomainAgeHintDays** | **Int64** |  | [optional] 
**NeverBounceSafeToSend** | **Boolean** |  | [optional] 
**Notes** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$EmailIntelligenceSignalsDto = Initialize-maislurp-client-powershellEmailIntelligenceSignalsDto  -NormalizedTarget null `
 -EmailAddress null `
 -Domain null `
 -LocalPart null `
 -RandomLocalPart null `
 -LocalPartEntropy null `
 -FreeEmailProvider null `
 -HasHttpsWebsite null `
 -DnsARecordPresent null `
 -DnsMxRecordPresent null `
 -SoaRecordPresent null `
 -DomainAgeHintDays null `
 -NeverBounceSafeToSend null `
 -Notes null
```

- Convert the resource to JSON
```powershell
$EmailIntelligenceSignalsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

