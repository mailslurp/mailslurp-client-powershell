# UpdateInboxRetentionPolicyOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Scope** | **String** |  | 
**RetentionDays** | **Int32** |  | 
**InboxId** | **String** |  | [optional] 
**DomainId** | **String** |  | [optional] 
**Enabled** | **Boolean** |  | 
**ExcludedInboxIds** | **String[]** |  | 
**ExcludedDomainIds** | **String[]** |  | 
**ExcludedInboxEmailAddressPatterns** | **String[]** |  | 
**ExcludedDomainNamePatterns** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$UpdateInboxRetentionPolicyOptions = Initialize-maislurp-client-powershellUpdateInboxRetentionPolicyOptions  -Name null `
 -Scope null `
 -RetentionDays null `
 -InboxId null `
 -DomainId null `
 -Enabled null `
 -ExcludedInboxIds null `
 -ExcludedDomainIds null `
 -ExcludedInboxEmailAddressPatterns null `
 -ExcludedDomainNamePatterns null
```

- Convert the resource to JSON
```powershell
$UpdateInboxRetentionPolicyOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

