# SearchEmailsOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InboxIds** | **String[]** | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] 
**PageIndex** | **Int32** | Optional page index in email list pagination | [optional] 
**PageSize** | **Int32** | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] 
**SortDirection** | **String** | Optional createdAt sort direction ASC or DESC | [optional] 
**UnreadOnly** | **Boolean** | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] 
**SearchFilter** | **String** | Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body | [optional] 
**Since** | **System.DateTime** | Optional filter emails received after given date time | [optional] 
**Before** | **System.DateTime** | Optional filter emails received before given date time | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchEmailsOptions = Initialize-maislurp-client-powershellSearchEmailsOptions  -InboxIds null `
 -PageIndex null `
 -PageSize null `
 -SortDirection null `
 -UnreadOnly null `
 -SearchFilter null `
 -Since null `
 -Before null
```

- Convert the resource to JSON
```powershell
$SearchEmailsOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

