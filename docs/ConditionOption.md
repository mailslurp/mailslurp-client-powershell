# ConditionOption
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Condition** | **String** | Condition of an email object that can be used to filter results | 
**Value** | **String** | Expected condition value | 

## Examples

- Prepare the resource
```powershell
$ConditionOption = Initialize-maislurp-client-powershellConditionOption  -Condition null `
 -Value null
```

- Convert the resource to JSON
```powershell
$ConditionOption | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

