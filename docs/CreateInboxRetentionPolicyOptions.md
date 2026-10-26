# CreateInboxRetentionPolicyOptions
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
$CreateInboxRetentionPolicyOptions = Initialize-maislurp-client-powershellCreateInboxRetentionPolicyOptions  -Name null `
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
$CreateInboxRetentionPolicyOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

