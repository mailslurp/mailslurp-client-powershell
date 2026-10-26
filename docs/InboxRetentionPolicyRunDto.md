# InboxRetentionPolicyRunDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Status** | **String** |  | 
**Source** | **String** |  | 
**MatchedPolicies** | **Int32** |  | 
**AppliedPolicies** | **Int32** |  | 
**ErrorMessage** | **String** |  | [optional] 
**StartedAt** | **System.DateTime** |  | [optional] 
**CompletedAt** | **System.DateTime** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$InboxRetentionPolicyRunDto = Initialize-maislurp-client-powershellInboxRetentionPolicyRunDto  -Id null `
 -Status null `
 -Source null `
 -MatchedPolicies null `
 -AppliedPolicies null `
 -ErrorMessage null `
 -StartedAt null `
 -CompletedAt null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$InboxRetentionPolicyRunDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

