# InboxRetentionPolicyDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**RetentionDays** | **Int32** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$InboxRetentionPolicyDto = Initialize-maislurp-client-powershellInboxRetentionPolicyDto  -Id null `
 -InboxId null `
 -RetentionDays null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$InboxRetentionPolicyDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

