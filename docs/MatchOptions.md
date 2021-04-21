# MatchOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarMatches** | [**MatchOption[]**](MatchOption) | 1 or more match options. Options are additive so if one does not match the email is excluded from results | [optional] 

## Examples

- Prepare the resource
```powershell
$MatchOptions = Initialize-maislurp-client-powershellMatchOptions  -VarMatches null
```

- Convert the resource to JSON
```powershell
$MatchOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

