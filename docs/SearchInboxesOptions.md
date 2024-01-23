# SearchInboxesOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PageIndex** | **Int32** | Optional page index in list pagination | [optional] 
**PageSize** | **Int32** | Optional page size in list pagination | [optional] 
**SortDirection** | **String** | Optional createdAt sort direction ASC or DESC | [optional] 
**Favourite** | **Boolean** | Optionally filter results for favourites only | [optional] 
**Search** | **String** | Optionally filter by search words partial matching ID, tags, name, and email address | [optional] 
**Tag** | **String** | Optionally filter by tags. Will return inboxes that include given tags | [optional] 
**Since** | **System.DateTime** | Optional filter by created after given date time | [optional] 
**Before** | **System.DateTime** | Optional filter by created before given date time | [optional] 
**InboxType** | **String** | Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send). | [optional] 
**InboxFunction** | **String** | Optional filter by inbox function | [optional] 
**DomainId** | **String** | Optional domain ID filter | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchInboxesOptions = Initialize-maislurp-client-powershellSearchInboxesOptions  -PageIndex null `
 -PageSize null `
 -SortDirection null `
 -Favourite null `
 -Search null `
 -Tag null `
 -Since null `
 -Before null `
 -InboxType null `
 -InboxFunction null `
 -DomainId null
```

- Convert the resource to JSON
```powershell
$SearchInboxesOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

