# ImapServerListOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UidSet** | **String** |  | [optional] 
**SeqSet** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ImapServerListOptions = Initialize-maislurp-client-powershellImapServerListOptions  -UidSet null `
 -SeqSet null
```

- Convert the resource to JSON
```powershell
$ImapServerListOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

