# InboxRulesetDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**InboxId** | **String** |  | 
**Scope** | **String** |  | 
**Action** | **String** |  | 
**Target** | **String** |  | 
**Handler** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$InboxRulesetDto = Initialize-maislurp-client-powershellInboxRulesetDto  -Id null `
 -InboxId null `
 -Scope null `
 -Action null `
 -Target null `
 -Handler null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$InboxRulesetDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

