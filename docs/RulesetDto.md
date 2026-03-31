# RulesetDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**PhoneId** | **String** |  | [optional] 
**Scope** | **String** |  | 
**Action** | **String** |  | 
**Target** | **String** |  | 
**Handler** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$RulesetDto = Initialize-maislurp-client-powershellRulesetDto  -Id null `
 -InboxId null `
 -PhoneId null `
 -Scope null `
 -Action null `
 -Target null `
 -Handler null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$RulesetDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

