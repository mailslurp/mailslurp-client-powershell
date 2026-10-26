# InboxRetentionPolicyOptionalDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Policy** | [**InboxRetentionPolicyDto**](InboxRetentionPolicyDto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InboxRetentionPolicyOptionalDto = Initialize-maislurp-client-powershellInboxRetentionPolicyOptionalDto  -Policy null
```

- Convert the resource to JSON
```powershell
$InboxRetentionPolicyOptionalDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

