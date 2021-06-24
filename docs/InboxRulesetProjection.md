# InboxRulesetProjection
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
$InboxRulesetProjection = Initialize-maislurp-client-powershellInboxRulesetProjection  -Action null `
 -Handler null `
 -Id null `
 -InboxId null `
 -Scope null `
 -Target null
```

- Convert the resource to JSON
```powershell
$InboxRulesetProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

