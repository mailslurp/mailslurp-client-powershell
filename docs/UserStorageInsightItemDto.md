# UserStorageInsightItemDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**DomainId** | **String** |  | [optional] 
**Label** | **String** |  | 
**EmailAddress** | **String** |  | [optional] 
**Domain** | **String** |  | [optional] 
**TotalBytes** | **Int64** |  | 
**EmailBytes** | **Int64** |  | 
**SentEmailBytes** | **Int64** |  | 
**AttachmentBytes** | **Int64** |  | 
**ItemCount** | **Int64** |  | 

## Examples

- Prepare the resource
```powershell
$UserStorageInsightItemDto = Initialize-maislurp-client-powershellUserStorageInsightItemDto  -Id null `
 -InboxId null `
 -DomainId null `
 -Label null `
 -EmailAddress null `
 -Domain null `
 -TotalBytes null `
 -EmailBytes null `
 -SentEmailBytes null `
 -AttachmentBytes null `
 -ItemCount null
```

- Convert the resource to JSON
```powershell
$UserStorageInsightItemDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

