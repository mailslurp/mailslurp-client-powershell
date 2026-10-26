# InboxRetentionPoliciesDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Policies** | [**InboxRetentionPolicyDto[]**](InboxRetentionPolicyDto) |  | 

## Examples

- Prepare the resource
```powershell
$InboxRetentionPoliciesDto = Initialize-maislurp-client-powershellInboxRetentionPoliciesDto  -Policies null
```

- Convert the resource to JSON
```powershell
$InboxRetentionPoliciesDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

