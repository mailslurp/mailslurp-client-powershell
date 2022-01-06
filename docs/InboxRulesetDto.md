# InboxRulesetDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**Scope** | **String** |  | [optional] 
**Action** | **String** |  | [optional] 
**Target** | **String** |  | [optional] 
**Handler** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | [optional] 

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

