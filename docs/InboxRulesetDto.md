# InboxRulesetDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Action** | **String** |  | 
**Handler** | **String** |  | 
**Id** | **String** |  | 
**InboxId** | **String** |  | 
**Scope** | **String** |  | 
**Target** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$InboxRulesetDto = Initialize-maislurp-client-powershellInboxRulesetDto  -Action null `
 -Handler null `
 -Id null `
 -InboxId null `
 -Scope null `
 -Target null
```

- Convert the resource to JSON
```powershell
$InboxRulesetDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

