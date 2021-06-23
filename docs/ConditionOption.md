# ConditionOption
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Condition** | **String** | The condition to evaluate against the email | [optional] 
**Value** | **String** | What the condition should evaluate to. A string &#39;TRUE|FALSE&#39; not a boolean. | [optional] 

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

