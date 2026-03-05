# DeliverabilityEntityResultDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntityId** | **String** |  | 
**EntityLabel** | **String** |  | 
**Matched** | **Boolean** |  | 
**MatchedExpectationCount** | **Int32** |  | 
**TotalExpectationCount** | **Int32** |  | 
**PhoneCountry** | **String** |  | [optional] 
**PhoneVariant** | **String** |  | [optional] 
**EvaluatedAt** | **System.DateTime** |  | [optional] 
**ExpectationResults** | [**DeliverabilityExpectationResultDto[]**](DeliverabilityExpectationResultDto) |  | 

## Examples

- Prepare the resource
```powershell
$DeliverabilityEntityResultDto = Initialize-maislurp-client-powershellDeliverabilityEntityResultDto  -EntityId null `
 -EntityLabel null `
 -Matched null `
 -MatchedExpectationCount null `
 -TotalExpectationCount null `
 -PhoneCountry null `
 -PhoneVariant null `
 -EvaluatedAt null `
 -ExpectationResults null
```

- Convert the resource to JSON
```powershell
$DeliverabilityEntityResultDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

