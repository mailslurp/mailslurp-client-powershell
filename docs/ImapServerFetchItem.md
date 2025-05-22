# ImapServerFetchItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | **String** | Content of the email | 
**Id** | **String** | ID of the email | 
**Uid** | **Int64** | UID of the email | 
**SeqNum** | **Int64** | Sequence number of the email | 
**Read** | **Boolean** | Read status of the email | 

## Examples

- Prepare the resource
```powershell
$ImapServerFetchItem = Initialize-maislurp-client-powershellImapServerFetchItem  -Content null `
 -Id null `
 -Uid null `
 -SeqNum null `
 -Read null
```

- Convert the resource to JSON
```powershell
$ImapServerFetchItem | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

