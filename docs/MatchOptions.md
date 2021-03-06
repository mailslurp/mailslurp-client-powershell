# MatchOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarMatches** | [**MatchOption[]**](MatchOption) | Zero or more match options such as &#x60;{ field: &#39;SUBJECT&#39;, should: &#39;CONTAIN&#39;, value: &#39;Welcome&#39; }&#x60;. Options are additive so if one does not match the email is excluded from results | [optional] 
**Conditions** | [**ConditionOption[]**](ConditionOption) | Zero or more conditions such as &#x60;{ condition: &#39;HAS_ATTACHMENTS&#39;, value: &#39;TRUE&#39; }&#x60;. Note the values are the strings &#x60;TRUE|FALSE&#x60; not booleans. | [optional] 

## Examples

- Prepare the resource
```powershell
$MatchOptions = Initialize-maislurp-client-powershellMatchOptions  -VarMatches null `
 -Conditions null
```

- Convert the resource to JSON
```powershell
$MatchOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

