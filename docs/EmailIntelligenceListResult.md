# EmailIntelligenceListResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | [**EmailIntelligenceResultDto[]**](EmailIntelligenceResultDto) |  | 
**Page** | **Int32** |  | 
**Size** | **Int32** |  | 
**TotalElements** | **Int64** |  | 
**TotalPages** | **Int32** |  | 
**BillableCount** | **Int64** | Number of non-cached evaluations billed in this request. Internal or privileged requests always report 0. | 

## Examples

- Prepare the resource
```powershell
$EmailIntelligenceListResult = Initialize-maislurp-client-powershellEmailIntelligenceListResult  -Content null `
 -Page null `
 -Size null `
 -TotalElements null `
 -TotalPages null `
 -BillableCount null
```

- Convert the resource to JSON
```powershell
$EmailIntelligenceListResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

