# ConditionalStructuredContentResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Result** | [**SystemCollectionsHashtable**]() |  | [optional] 
**ConditionsMatch** | **Boolean** |  | 
**TokenCount** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConditionalStructuredContentResult = Initialize-maislurp-client-powershellConditionalStructuredContentResult  -Result null `
 -ConditionsMatch null `
 -TokenCount null
```

- Convert the resource to JSON
```powershell
$ConditionalStructuredContentResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

