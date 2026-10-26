# InboxRetentionPolicyDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Name** | **String** |  | [optional] 
**Scope** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**DomainId** | **String** |  | [optional] 
**RetentionDays** | **Int32** |  | 
**Enabled** | **Boolean** |  | 
**ExcludedInboxIds** | **String[]** |  | 
**ExcludedDomainIds** | **String[]** |  | 
**ExcludedInboxEmailAddressPatterns** | **String[]** |  | 
**ExcludedDomainNamePatterns** | **String[]** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$InboxRetentionPolicyDto = Initialize-maislurp-client-powershellInboxRetentionPolicyDto  -Id null `
 -Name null `
 -Scope null `
 -InboxId null `
 -DomainId null `
 -RetentionDays null `
 -Enabled null `
 -ExcludedInboxIds null `
 -ExcludedDomainIds null `
 -ExcludedInboxEmailAddressPatterns null `
 -ExcludedDomainNamePatterns null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$InboxRetentionPolicyDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

