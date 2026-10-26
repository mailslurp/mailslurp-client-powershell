# DeliverabilityExpectationResultDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExpectationIndex** | **Int32** |  | 
**ExpectationName** | **String** |  | [optional] 
**MinCount** | **Int64** |  | 
**ActualCount** | **Int64** |  | 
**Passed** | **Boolean** |  | 
**VarFrom** | **String** |  | [optional] 
**To** | **String** |  | [optional] 
**Subject** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DeliverabilityExpectationResultDto = Initialize-maislurp-client-powershellDeliverabilityExpectationResultDto  -ExpectationIndex null `
 -ExpectationName null `
 -MinCount null `
 -ActualCount null `
 -Passed null `
 -VarFrom null `
 -To null `
 -Subject null
```

- Convert the resource to JSON
```powershell
$DeliverabilityExpectationResultDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

