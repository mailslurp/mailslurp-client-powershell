# ImapServerFetchResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Result** | [**ImapServerFetchItem**](ImapServerFetchItem) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ImapServerFetchResult = Initialize-maislurp-client-powershellImapServerFetchResult  -Result null
```

- Convert the resource to JSON
```powershell
$ImapServerFetchResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

